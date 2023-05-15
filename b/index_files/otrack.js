var otrack = {
	init: function() {
		otrack.viewType = 'all'; // no => not-optimized, o => optimized, all => all, stats => statistics
		otrack.fileTypeJs = true;
		otrack.fileTypeCss = true;
		otrack.fileTypeTemplates = true;
		otrack.discoverRoutes = ['dashboard', 'classes', 'classes/enrollclasses', 'announcements', 'myfiles', 'myapps', 'classes/:classid/apps', 'classes/:classid/discuss', 'classes/:classid/assignments', 'classes/:classid/lessons', 'classes/:classid/files', 'classes/:classid/settings', 'inbox', 'inbox/sent', 'inbox/compose', 'inbox/deleted', 'inbox/inbox', 'inbox/settings'];

		otrack.classId = 0;
		// fetch a relevant class id for this user
		$.pajax({
			type: 'GET', 
			url: '/proxies/classlink/allclasses?page=1&rows=1&classtype=2',
			success: function(r) { 
				if(r && r.response && r.response[0]) {
					otrack.classId = parseInt(r.response[0].classid);
				}
			}
		});
		otrack.discoveredRoutes = [];
	},
	showModal: function() {
		otrack.getModal().removeClass('uberhidden');
		otrack.discover();
		otrack.render();
	},
	getModal: function() {
		if($('#otrackmodal').length) {
			return $('#otrackmodal');
		}
		var ht='';
		ht+='<div class="ubermodal uberhidden" id="otrackmodal">'+
				'<header>'+
				  '<h2>'+
				    '<i class="icon-bar-chart icon-border pull-left ">'+
				    '</i>'+
				    'Optimize Tracking'+   
				    '<a data-action="close" class="close">×</a>'+
				  '</h2>'+
				'</header>'+
				'<div class="cl-uberviewport">'+
					'<div id="otrackmodali"></div>'+
				'</div>'+
			'</div>';
		$('body').append(ht);
		$('#otrackmodal header .close').click(function() {
			otrack.getModal().addClass('uberhidden');
		});

		$('#otrackmodal').on('change', '#otrack-viewtype', function() {
			otrack.viewType = $('#otrack-viewtype').val();
			otrack.render();
		});
		$('#otrackmodal').on('change', '.otrack-controls input[type="checkbox"]', function() {

			otrack.fileTypeJs = $('#otrack-file-js').prop("checked");
			otrack.fileTypeCss = $('#otrack-file-css').prop("checked");
			otrack.fileTypeTemplates = $('#otrack-file-templates').prop("checked");
			otrack.render();
		});
		$('#otrackmodal').on('click', '#otrack-refresh', function() {
			otrack.refreshModal();
			return false;
		});
		// window.setInterval(function() {
		// 	if(!otrack.getModal().hasClass("uberhidden")) {
		// 		otrack.refreshModal();
		// 	}
		// }, 5000);
		return $('#otrackmodal');
	},
	render: function() {
		var ht = '<div class="otrack-controls form-inline">'+
					'<select id="otrack-viewtype">'+
						'<option value="all">All</option>'+
						'<option value="no">Not Optimized</option>'+
						'<option value="o">Optimized</option>'+
						'<option value="stats">Statistics</option>'+
					'</select> '+
					'<label class="checkbox"><input type="checkbox" id="otrack-file-js" />Js</label> '+
					'<label class="checkbox"><input type="checkbox" id="otrack-file-css" />Css</label> '+
					'<label class="checkbox"><input type="checkbox" id="otrack-file-templates" />Templates</label> '+
					'<a href="#" id="otrack-refresh" style="font-size: 110%; text-decoration: none; color: black;"><i class="icon icon-refresh"></i> Refresh</a>'+
				'</div>';
		ht+='<table class="table">'+
				'<thead>'+
					'<tr>'+
						'<th>Type</th>'+
						'<th>Resource</th>'+
						'<th>Loaded From</th>'+
					'</tr>'+
				'</thead>'+
				'<tbody>';
		if(otrack.fileTypeCss) {
			for(var file in optimize.track.css.files) {
				var src = optimize.track.css.files[file];
				var fromBundle = file != src;
				if((otrack.viewType == "no" && fromBundle) || (otrack.viewType == "o" && !fromBundle)) {
					continue;
				}

				ht+='<tr class="' + (fromBundle ? "success": "error") + '">';
				ht+='<td>css</td>';
				ht+='<td>'+file+'</td>';
				ht+='<td>' + (fromBundle ? "Bundle ("+src+")" : src) + '</td>';
				ht+='</tr>';
			}
		}
		if(otrack.fileTypeJs) {
			for(var file in optimize.track.js.files) {
				var src = optimize.track.js.files[file];
				var fromBundle = file != src;
				if((otrack.viewType == "no" && fromBundle) || (otrack.viewType == "o" && !fromBundle)) {
					continue;
				}
				if(file.indexOf("optimize/otrack.js") >= 0) {
					continue;
				}
				ht+='<tr class="' + (fromBundle ? "success": "error") + '">';
				ht+='<td>js</td>';
				ht+='<td>'+file+'</td>';
				ht+='<td>' + (fromBundle ? "Bundle ("+src+")" : src) + '</td>';
				ht+='</tr>';
			}
		}
		if(otrack.fileTypeTemplates) {
			for(var file in optimize.track.templates.files) {
				var src = optimize.track.templates.files[file];
				var fromBundle = file != src;
				if((otrack.viewType == "no" && fromBundle) || (otrack.viewType == "o" && !fromBundle)) {
					continue;
				}

				ht+='<tr class="' + (fromBundle ? "success": "error") + '">';
				ht+='<td>template</td>';
				ht+='<td>'+file+'</td>';
				ht+='<td>' + (fromBundle ? "Bundle ("+src+")" : src) + '</td>';
				ht+='</tr>';
			}
		} 
		ht +='</tbody></table>';
		$('#otrackmodali').html(ht);
		$('#otrack-file-js').prop("checked", otrack.fileTypeJs);
		$('#otrack-file-css').prop("checked", otrack.fileTypeCss);
		$('#otrack-file-templates').prop("checked", otrack.fileTypeTemplates);
		$('#otrack-viewtype').val(otrack.viewType);
	},
	discover: function() {
		var k =0;
		for(var i=0; i<otrack.discoverRoutes.length; i++) {
			var r = otrack.discoverRoutes[i];
			// check if already discovered
			if(otrack.discoveredRoutes.indexOf(r) >= 0) {
				continue;
			}
			var rp = r.indexOf(':classid') ? new RegExp(r.replace(":classid", "[\\d]+")) : new RegExp(r);
			var d = false;
			for(var j=0; j<app.routesHitData.length; j++) {
				if(rp.test(app.routesHitData[j])) {
					otrack.discoveredRoutes.push(r);
					d = true;
					continue;
				}
			}
			if(d) {
				continue;
			}
			if(r.indexOf(':classid') >= 0 && !otrack.classId) {
				continue;
			}
			otrack.discoveredRoutes.push(r);
			(function(r, k) {
				window.setTimeout(function() {
					r = r.replace(':classid', otrack.classId);
					window.location.hash = r
					otrack.refreshModal();
				}, k*1000);	
			})(r, k);
			k++;

		}
	},
	refreshModal: function() {
		otrack.discover();
		otrack.render();
	}
};
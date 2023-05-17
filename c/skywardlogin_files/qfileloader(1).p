var gFWVersion='010859';
/*-------------------------------------------------------------------------------------------------
 * START jQuery/Plugins
 *-------------------------------------------------------------------------------------------------*/
/*! jQuery v1.8.2 jquery.com | jquery.org/license */

(function(a,b){function G(a){var b=F[a]={};return p.each(a.split(s),function(a,c){b[c]=!0}),b}function J(a,c,d){if(d===b&&a.nodeType===1){var e="data-"+c.replace(I,"-$1").toLowerCase();d=a.getAttribute(e);if(typeof d=="string"){try{d=d==="true"?!0:d==="false"?!1:d==="null"?null:+d+""===d?+d:H.test(d)?p.parseJSON(d):d}catch(f){}p.data(a,c,d)}else d=b}return d}function K(a){var b;for(b in a){if(b==="data"&&p.isEmptyObject(a[b]))continue;if(b!=="toJSON")return!1}return!0}function ba(){return!1}function bb(){return!0}function bh(a){return!a||!a.parentNode||a.parentNode.nodeType===11}function bi(a,b){do a=a[b];while(a&&a.nodeType!==1);return a}function bj(a,b,c){b=b||0;if(p.isFunction(b))return p.grep(a,function(a,d){var e=!!b.call(a,d,a);return e===c});if(b.nodeType)return p.grep(a,function(a,d){return a===b===c});if(typeof b=="string"){var d=p.grep(a,function(a){return a.nodeType===1});if(be.test(b))return p.filter(b,d,!c);b=p.filter(b,d)}return p.grep(a,function(a,d){return p.inArray(a,b)>=0===c})}function bk(a){var b=bl.split("|"),c=a.createDocumentFragment();if(c.createElement)while(b.length)c.createElement(b.pop());return c}function bC(a,b){return a.getElementsByTagName(b)[0]||a.appendChild(a.ownerDocument.createElement(b))}function bD(a,b){if(b.nodeType!==1||!p.hasData(a))return;var c,d,e,f=p._data(a),g=p._data(b,f),h=f.events;if(h){delete g.handle,g.events={};for(c in h)for(d=0,e=h[c].length;d<e;d++)p.event.add(b,c,h[c][d])}g.data&&(g.data=p.extend({},g.data))}function bE(a,b){var c;if(b.nodeType!==1)return;b.clearAttributes&&b.clearAttributes(),b.mergeAttributes&&b.mergeAttributes(a),c=b.nodeName.toLowerCase(),c==="object"?(b.parentNode&&(b.outerHTML=a.outerHTML),p.support.html5Clone&&a.innerHTML&&!p.trim(b.innerHTML)&&(b.innerHTML=a.innerHTML)):c==="input"&&bv.test(a.type)?(b.defaultChecked=b.checked=a.checked,b.value!==a.value&&(b.value=a.value)):c==="option"?b.selected=a.defaultSelected:c==="input"||c==="textarea"?b.defaultValue=a.defaultValue:c==="script"&&b.text!==a.text&&(b.text=a.text),b.removeAttribute(p.expando)}function bF(a){return typeof a.getElementsByTagName!="undefined"?a.getElementsByTagName("*"):typeof a.querySelectorAll!="undefined"?a.querySelectorAll("*"):[]}function bG(a){bv.test(a.type)&&(a.defaultChecked=a.checked)}function bY(a,b){if(b in a)return b;var c=b.charAt(0).toUpperCase()+b.slice(1),d=b,e=bW.length;while(e--){b=bW[e]+c;if(b in a)return b}return d}function bZ(a,b){return a=b||a,p.css(a,"display")==="none"||!p.contains(a.ownerDocument,a)}function b$(a,b){var c,d,e=[],f=0,g=a.length;for(;f<g;f++){c=a[f];if(!c.style)continue;e[f]=p._data(c,"olddisplay"),b?(!e[f]&&c.style.display==="none"&&(c.style.display=""),c.style.display===""&&bZ(c)&&(e[f]=p._data(c,"olddisplay",cc(c.nodeName)))):(d=bH(c,"display"),!e[f]&&d!=="none"&&p._data(c,"olddisplay",d))}for(f=0;f<g;f++){c=a[f];if(!c.style)continue;if(!b||c.style.display==="none"||c.style.display==="")c.style.display=b?e[f]||"":"none"}return a}function b_(a,b,c){var d=bP.exec(b);return d?Math.max(0,d[1]-(c||0))+(d[2]||"px"):b}function ca(a,b,c,d){var e=c===(d?"border":"content")?4:b==="width"?1:0,f=0;for(;e<4;e+=2)c==="margin"&&(f+=p.css(a,c+bV[e],!0)),d?(c==="content"&&(f-=parseFloat(bH(a,"padding"+bV[e]))||0),c!=="margin"&&(f-=parseFloat(bH(a,"border"+bV[e]+"Width"))||0)):(f+=parseFloat(bH(a,"padding"+bV[e]))||0,c!=="padding"&&(f+=parseFloat(bH(a,"border"+bV[e]+"Width"))||0));return f}function cb(a,b,c){var d=b==="width"?a.offsetWidth:a.offsetHeight,e=!0,f=p.support.boxSizing&&p.css(a,"boxSizing")==="border-box";if(d<=0||d==null){d=bH(a,b);if(d<0||d==null)d=a.style[b];if(bQ.test(d))return d;e=f&&(p.support.boxSizingReliable||d===a.style[b]),d=parseFloat(d)||0}return d+ca(a,b,c||(f?"border":"content"),e)+"px"}function cc(a){if(bS[a])return bS[a];var b=p("<"+a+">").appendTo(e.body),c=b.css("display");b.remove();if(c==="none"||c===""){bI=e.body.appendChild(bI||p.extend(e.createElement("iframe"),{frameBorder:0,width:0,height:0}));if(!bJ||!bI.createElement)bJ=(bI.contentWindow||bI.contentDocument).document,bJ.write("<!doctype html><html><body>"),bJ.close();b=bJ.body.appendChild(bJ.createElement(a)),c=bH(b,"display"),e.body.removeChild(bI)}return bS[a]=c,c}function ci(a,b,c,d){var e;if(p.isArray(b))p.each(b,function(b,e){c||ce.test(a)?d(a,e):ci(a+"["+(typeof e=="object"?b:"")+"]",e,c,d)});else if(!c&&p.type(b)==="object")for(e in b)ci(a+"["+e+"]",b[e],c,d);else d(a,b)}function cz(a){return function(b,c){typeof b!="string"&&(c=b,b="*");var d,e,f,g=b.toLowerCase().split(s),h=0,i=g.length;if(p.isFunction(c))for(;h<i;h++)d=g[h],f=/^\+/.test(d),f&&(d=d.substr(1)||"*"),e=a[d]=a[d]||[],e[f?"unshift":"push"](c)}}function cA(a,c,d,e,f,g){f=f||c.dataTypes[0],g=g||{},g[f]=!0;var h,i=a[f],j=0,k=i?i.length:0,l=a===cv;for(;j<k&&(l||!h);j++)h=i[j](c,d,e),typeof h=="string"&&(!l||g[h]?h=b:(c.dataTypes.unshift(h),h=cA(a,c,d,e,h,g)));return(l||!h)&&!g["*"]&&(h=cA(a,c,d,e,"*",g)),h}function cB(a,c){var d,e,f=p.ajaxSettings.flatOptions||{};for(d in c)c[d]!==b&&((f[d]?a:e||(e={}))[d]=c[d]);e&&p.extend(!0,a,e)}function cC(a,c,d){var e,f,g,h,i=a.contents,j=a.dataTypes,k=a.responseFields;for(f in k)f in d&&(c[k[f]]=d[f]);while(j[0]==="*")j.shift(),e===b&&(e=a.mimeType||c.getResponseHeader("content-type"));if(e)for(f in i)if(i[f]&&i[f].test(e)){j.unshift(f);break}if(j[0]in d)g=j[0];else{for(f in d){if(!j[0]||a.converters[f+" "+j[0]]){g=f;break}h||(h=f)}g=g||h}if(g)return g!==j[0]&&j.unshift(g),d[g]}function cD(a,b){var c,d,e,f,g=a.dataTypes.slice(),h=g[0],i={},j=0;a.dataFilter&&(b=a.dataFilter(b,a.dataType));if(g[1])for(c in a.converters)i[c.toLowerCase()]=a.converters[c];for(;e=g[++j];)if(e!=="*"){if(h!=="*"&&h!==e){c=i[h+" "+e]||i["* "+e];if(!c)for(d in i){f=d.split(" ");if(f[1]===e){c=i[h+" "+f[0]]||i["* "+f[0]];if(c){c===!0?c=i[d]:i[d]!==!0&&(e=f[0],g.splice(j--,0,e));break}}}if(c!==!0)if(c&&a["throws"])b=c(b);else try{b=c(b)}catch(k){return{state:"parsererror",error:c?k:"No conversion from "+h+" to "+e}}}h=e}return{state:"success",data:b}}function cL(){try{return new a.XMLHttpRequest}catch(b){}}function cM(){try{return new a.ActiveXObject("Microsoft.XMLHTTP")}catch(b){}}function cU(){return setTimeout(function(){cN=b},0),cN=p.now()}function cV(a,b){p.each(b,function(b,c){var d=(cT[b]||[]).concat(cT["*"]),e=0,f=d.length;for(;e<f;e++)if(d[e].call(a,b,c))return})}function cW(a,b,c){var d,e=0,f=0,g=cS.length,h=p.Deferred().always(function(){delete i.elem}),i=function(){var b=cN||cU(),c=Math.max(0,j.startTime+j.duration-b),d=1-(c/j.duration||0),e=0,f=j.tweens.length;for(;e<f;e++)j.tweens[e].run(d);return h.notifyWith(a,[j,d,c]),d<1&&f?c:(h.resolveWith(a,[j]),!1)},j=h.promise({elem:a,props:p.extend({},b),opts:p.extend(!0,{specialEasing:{}},c),originalProperties:b,originalOptions:c,startTime:cN||cU(),duration:c.duration,tweens:[],createTween:function(b,c,d){var e=p.Tween(a,j.opts,b,c,j.opts.specialEasing[b]||j.opts.easing);return j.tweens.push(e),e},stop:function(b){var c=0,d=b?j.tweens.length:0;for(;c<d;c++)j.tweens[c].run(1);return b?h.resolveWith(a,[j,b]):h.rejectWith(a,[j,b]),this}}),k=j.props;cX(k,j.opts.specialEasing);for(;e<g;e++){d=cS[e].call(j,a,k,j.opts);if(d)return d}return cV(j,k),p.isFunction(j.opts.start)&&j.opts.start.call(a,j),p.fx.timer(p.extend(i,{anim:j,queue:j.opts.queue,elem:a})),j.progress(j.opts.progress).done(j.opts.done,j.opts.complete).fail(j.opts.fail).always(j.opts.always)}function cX(a,b){var c,d,e,f,g;for(c in a){d=p.camelCase(c),e=b[d],f=a[c],p.isArray(f)&&(e=f[1],f=a[c]=f[0]),c!==d&&(a[d]=f,delete a[c]),g=p.cssHooks[d];if(g&&"expand"in g){f=g.expand(f),delete a[d];for(c in f)c in a||(a[c]=f[c],b[c]=e)}else b[d]=e}}function cY(a,b,c){var d,e,f,g,h,i,j,k,l=this,m=a.style,n={},o=[],q=a.nodeType&&bZ(a);c.queue||(j=p._queueHooks(a,"fx"),j.unqueued==null&&(j.unqueued=0,k=j.empty.fire,j.empty.fire=function(){j.unqueued||k()}),j.unqueued++,l.always(function(){l.always(function(){j.unqueued--,p.queue(a,"fx").length||j.empty.fire()})})),a.nodeType===1&&("height"in b||"width"in b)&&(c.overflow=[m.overflow,m.overflowX,m.overflowY],p.css(a,"display")==="inline"&&p.css(a,"float")==="none"&&(!p.support.inlineBlockNeedsLayout||cc(a.nodeName)==="inline"?m.display="inline-block":m.zoom=1)),c.overflow&&(m.overflow="hidden",p.support.shrinkWrapBlocks||l.done(function(){m.overflow=c.overflow[0],m.overflowX=c.overflow[1],m.overflowY=c.overflow[2]}));for(d in b){f=b[d];if(cP.exec(f)){delete b[d];if(f===(q?"hide":"show"))continue;o.push(d)}}g=o.length;if(g){h=p._data(a,"fxshow")||p._data(a,"fxshow",{}),q?p(a).show():l.done(function(){p(a).hide()}),l.done(function(){var b;p.removeData(a,"fxshow",!0);for(b in n)p.style(a,b,n[b])});for(d=0;d<g;d++)e=o[d],i=l.createTween(e,q?h[e]:0),n[e]=h[e]||p.style(a,e),e in h||(h[e]=i.start,q&&(i.end=i.start,i.start=e==="width"||e==="height"?1:0))}}function cZ(a,b,c,d,e){return new cZ.prototype.init(a,b,c,d,e)}function c$(a,b){var c,d={height:a},e=0;b=b?1:0;for(;e<4;e+=2-b)c=bV[e],d["margin"+c]=d["padding"+c]=a;return b&&(d.opacity=d.width=a),d}function da(a){return p.isWindow(a)?a:a.nodeType===9?a.defaultView||a.parentWindow:!1}var c,d,e=a.document,f=a.location,g=a.navigator,h=a.jQuery,i=a.$,j=Array.prototype.push,k=Array.prototype.slice,l=Array.prototype.indexOf,m=Object.prototype.toString,n=Object.prototype.hasOwnProperty,o=String.prototype.trim,p=function(a,b){return new p.fn.init(a,b,c)},q=/[\-+]?(?:\d*\.|)\d+(?:[eE][\-+]?\d+|)/.source,r=/\S/,s=/\s+/,t=/^[\s\uFEFF\xA0]+|[\s\uFEFF\xA0]+$/g,u=/^(?:[^#<]*(<[\w\W]+>)[^>]*$|#([\w\-]*)$)/,v=/^<(\w+)\s*\/?>(?:<\/\1>|)$/,w=/^[\],:{}\s]*$/,x=/(?:^|:|,)(?:\s*\[)+/g,y=/\\(?:["\\\/bfnrt]|u[\da-fA-F]{4})/g,z=/"[^"\\\r\n]*"|true|false|null|-?(?:\d\d*\.|)\d+(?:[eE][\-+]?\d+|)/g,A=/^-ms-/,B=/-([\da-z])/gi,C=function(a,b){return(b+"").toUpperCase()},D=function(){e.addEventListener?(e.removeEventListener("DOMContentLoaded",D,!1),p.ready()):e.readyState==="complete"&&(e.detachEvent("onreadystatechange",D),p.ready())},E={};p.fn=p.prototype={constructor:p,init:function(a,c,d){var f,g,h,i;if(!a)return this;if(a.nodeType)return this.context=this[0]=a,this.length=1,this;if(typeof a=="string"){a.charAt(0)==="<"&&a.charAt(a.length-1)===">"&&a.length>=3?f=[null,a,null]:f=u.exec(a);if(f&&(f[1]||!c)){if(f[1])return c=c instanceof p?c[0]:c,i=c&&c.nodeType?c.ownerDocument||c:e,a=p.parseHTML(f[1],i,!0),v.test(f[1])&&p.isPlainObject(c)&&this.attr.call(a,c,!0),p.merge(this,a);g=e.getElementById(f[2]);if(g&&g.parentNode){if(g.id!==f[2])return d.find(a);this.length=1,this[0]=g}return this.context=e,this.selector=a,this}return!c||c.jquery?(c||d).find(a):this.constructor(c).find(a)}return p.isFunction(a)?d.ready(a):(a.selector!==b&&(this.selector=a.selector,this.context=a.context),p.makeArray(a,this))},selector:"",jquery:"1.8.2",length:0,size:function(){return this.length},toArray:function(){return k.call(this)},get:function(a){return a==null?this.toArray():a<0?this[this.length+a]:this[a]},pushStack:function(a,b,c){var d=p.merge(this.constructor(),a);return d.prevObject=this,d.context=this.context,b==="find"?d.selector=this.selector+(this.selector?" ":"")+c:b&&(d.selector=this.selector+"."+b+"("+c+")"),d},each:function(a,b){return p.each(this,a,b)},ready:function(a){return p.ready.promise().done(a),this},eq:function(a){return a=+a,a===-1?this.slice(a):this.slice(a,a+1)},first:function(){return this.eq(0)},last:function(){return this.eq(-1)},slice:function(){return this.pushStack(k.apply(this,arguments),"slice",k.call(arguments).join(","))},map:function(a){return this.pushStack(p.map(this,function(b,c){return a.call(b,c,b)}))},end:function(){return this.prevObject||this.constructor(null)},push:j,sort:[].sort,splice:[].splice},p.fn.init.prototype=p.fn,p.extend=p.fn.extend=function(){var a,c,d,e,f,g,h=arguments[0]||{},i=1,j=arguments.length,k=!1;typeof h=="boolean"&&(k=h,h=arguments[1]||{},i=2),typeof h!="object"&&!p.isFunction(h)&&(h={}),j===i&&(h=this,--i);for(;i<j;i++)if((a=arguments[i])!=null)for(c in a){d=h[c],e=a[c];if(h===e)continue;k&&e&&(p.isPlainObject(e)||(f=p.isArray(e)))?(f?(f=!1,g=d&&p.isArray(d)?d:[]):g=d&&p.isPlainObject(d)?d:{},h[c]=p.extend(k,g,e)):e!==b&&(h[c]=e)}return h},p.extend({noConflict:function(b){return a.$===p&&(a.$=i),b&&a.jQuery===p&&(a.jQuery=h),p},isReady:!1,readyWait:1,holdReady:function(a){a?p.readyWait++:p.ready(!0)},ready:function(a){if(a===!0?--p.readyWait:p.isReady)return;if(!e.body)return setTimeout(p.ready,1);p.isReady=!0;if(a!==!0&&--p.readyWait>0)return;d.resolveWith(e,[p]),p.fn.trigger&&p(e).trigger("ready").off("ready")},isFunction:function(a){return p.type(a)==="function"},isArray:Array.isArray||function(a){return p.type(a)==="array"},isWindow:function(a){return a!=null&&a==a.window},isNumeric:function(a){return!isNaN(parseFloat(a))&&isFinite(a)},type:function(a){return a==null?String(a):E[m.call(a)]||"object"},isPlainObject:function(a){if(!a||p.type(a)!=="object"||a.nodeType||p.isWindow(a))return!1;try{if(a.constructor&&!n.call(a,"constructor")&&!n.call(a.constructor.prototype,"isPrototypeOf"))return!1}catch(c){return!1}var d;for(d in a);return d===b||n.call(a,d)},isEmptyObject:function(a){var b;for(b in a)return!1;return!0},error:function(a){throw new Error(a)},parseHTML:function(a,b,c){var d;return!a||typeof a!="string"?null:(typeof b=="boolean"&&(c=b,b=0),b=b||e,(d=v.exec(a))?[b.createElement(d[1])]:(d=p.buildFragment([a],b,c?null:[]),p.merge([],(d.cacheable?p.clone(d.fragment):d.fragment).childNodes)))},parseJSON:function(b){if(!b||typeof b!="string")return null;b=p.trim(b);if(a.JSON&&a.JSON.parse)return a.JSON.parse(b);if(w.test(b.replace(y,"@").replace(z,"]").replace(x,"")))return(new Function("return "+b))();p.error("Invalid JSON: "+b)},parseXML:function(c){var d,e;if(!c||typeof c!="string")return null;try{a.DOMParser?(e=new DOMParser,d=e.parseFromString(c,"text/xml")):(d=new ActiveXObject("Microsoft.XMLDOM"),d.async="false",d.loadXML(c))}catch(f){d=b}return(!d||!d.documentElement||d.getElementsByTagName("parsererror").length)&&p.error("Invalid XML: "+c),d},noop:function(){},globalEval:function(b){b&&r.test(b)&&(a.execScript||function(b){a.eval.call(a,b)})(b)},camelCase:function(a){return a.replace(A,"ms-").replace(B,C)},nodeName:function(a,b){return a.nodeName&&a.nodeName.toLowerCase()===b.toLowerCase()},each:function(a,c,d){var e,f=0,g=a.length,h=g===b||p.isFunction(a);if(d){if(h){for(e in a)if(c.apply(a[e],d)===!1)break}else for(;f<g;)if(c.apply(a[f++],d)===!1)break}else if(h){for(e in a)if(c.call(a[e],e,a[e])===!1)break}else for(;f<g;)if(c.call(a[f],f,a[f++])===!1)break;return a},trim:o&&!o.call("? ")?function(a){return a==null?"":o.call(a)}:function(a){return a==null?"":(a+"").replace(t,"")},makeArray:function(a,b){var c,d=b||[];return a!=null&&(c=p.type(a),a.length==null||c==="string"||c==="function"||c==="regexp"||p.isWindow(a)?j.call(d,a):p.merge(d,a)),d},inArray:function(a,b,c){var d;if(b){if(l)return l.call(b,a,c);d=b.length,c=c?c<0?Math.max(0,d+c):c:0;for(;c<d;c++)if(c in b&&b[c]===a)return c}return-1},merge:function(a,c){var d=c.length,e=a.length,f=0;if(typeof d=="number")for(;f<d;f++)a[e++]=c[f];else while(c[f]!==b)a[e++]=c[f++];return a.length=e,a},grep:function(a,b,c){var d,e=[],f=0,g=a.length;c=!!c;for(;f<g;f++)d=!!b(a[f],f),c!==d&&e.push(a[f]);return e},map:function(a,c,d){var e,f,g=[],h=0,i=a.length,j=a instanceof p||i!==b&&typeof i=="number"&&(i>0&&a[0]&&a[i-1]||i===0||p.isArray(a));if(j)for(;h<i;h++)e=c(a[h],h,d),e!=null&&(g[g.length]=e);else for(f in a)e=c(a[f],f,d),e!=null&&(g[g.length]=e);return g.concat.apply([],g)},guid:1,proxy:function(a,c){var d,e,f;return typeof c=="string"&&(d=a[c],c=a,a=d),p.isFunction(a)?(e=k.call(arguments,2),f=function(){return a.apply(c,e.concat(k.call(arguments)))},f.guid=a.guid=a.guid||p.guid++,f):b},access:function(a,c,d,e,f,g,h){var i,j=d==null,k=0,l=a.length;if(d&&typeof d=="object"){for(k in d)p.access(a,c,k,d[k],1,g,e);f=1}else if(e!==b){i=h===b&&p.isFunction(e),j&&(i?(i=c,c=function(a,b,c){return i.call(p(a),c)}):(c.call(a,e),c=null));if(c)for(;k<l;k++)c(a[k],d,i?e.call(a[k],k,c(a[k],d)):e,h);f=1}return f?a:j?c.call(a):l?c(a[0],d):g},now:function(){return(new Date).getTime()}}),p.ready.promise=function(b){if(!d){d=p.Deferred();if(e.readyState==="complete")setTimeout(p.ready,1);else if(e.addEventListener)e.addEventListener("DOMContentLoaded",D,!1),a.addEventListener("load",p.ready,!1);else{e.attachEvent("onreadystatechange",D),a.attachEvent("onload",p.ready);var c=!1;try{c=a.frameElement==null&&e.documentElement}catch(f){}c&&c.doScroll&&function g(){if(!p.isReady){try{c.doScroll("left")}catch(a){return setTimeout(g,50)}p.ready()}}()}}return d.promise(b)},p.each("Boolean Number String Function Array Date RegExp Object".split(" "),function(a,b){E["[object "+b+"]"]=b.toLowerCase()}),c=p(e);var F={};p.Callbacks=function(a){a=typeof a=="string"?F[a]||G(a):p.extend({},a);var c,d,e,f,g,h,i=[],j=!a.once&&[],k=function(b){c=a.memory&&b,d=!0,h=f||0,f=0,g=i.length,e=!0;for(;i&&h<g;h++)if(i[h].apply(b[0],b[1])===!1&&a.stopOnFalse){c=!1;break}e=!1,i&&(j?j.length&&k(j.shift()):c?i=[]:l.disable())},l={add:function(){if(i){var b=i.length;(function d(b){p.each(b,function(b,c){var e=p.type(c);e==="function"&&(!a.unique||!l.has(c))?i.push(c):c&&c.length&&e!=="string"&&d(c)})})(arguments),e?g=i.length:c&&(f=b,k(c))}return this},remove:function(){return i&&p.each(arguments,function(a,b){var c;while((c=p.inArray(b,i,c))>-1)i.splice(c,1),e&&(c<=g&&g--,c<=h&&h--)}),this},has:function(a){return p.inArray(a,i)>-1},empty:function(){return i=[],this},disable:function(){return i=j=c=b,this},disabled:function(){return!i},lock:function(){return j=b,c||l.disable(),this},locked:function(){return!j},fireWith:function(a,b){return b=b||[],b=[a,b.slice?b.slice():b],i&&(!d||j)&&(e?j.push(b):k(b)),this},fire:function(){return l.fireWith(this,arguments),this},fired:function(){return!!d}};return l},p.extend({Deferred:function(a){var b=[["resolve","done",p.Callbacks("once memory"),"resolved"],["reject","fail",p.Callbacks("once memory"),"rejected"],["notify","progress",p.Callbacks("memory")]],c="pending",d={state:function(){return c},always:function(){return e.done(arguments).fail(arguments),this},then:function(){var a=arguments;return p.Deferred(function(c){p.each(b,function(b,d){var f=d[0],g=a[b];e[d[1]](p.isFunction(g)?function(){var a=g.apply(this,arguments);a&&p.isFunction(a.promise)?a.promise().done(c.resolve).fail(c.reject).progress(c.notify):c[f+"With"](this===e?c:this,[a])}:c[f])}),a=null}).promise()},promise:function(a){return a!=null?p.extend(a,d):d}},e={};return d.pipe=d.then,p.each(b,function(a,f){var g=f[2],h=f[3];d[f[1]]=g.add,h&&g.add(function(){c=h},b[a^1][2].disable,b[2][2].lock),e[f[0]]=g.fire,e[f[0]+"With"]=g.fireWith}),d.promise(e),a&&a.call(e,e),e},when:function(a){var b=0,c=k.call(arguments),d=c.length,e=d!==1||a&&p.isFunction(a.promise)?d:0,f=e===1?a:p.Deferred(),g=function(a,b,c){return function(d){b[a]=this,c[a]=arguments.length>1?k.call(arguments):d,c===h?f.notifyWith(b,c):--e||f.resolveWith(b,c)}},h,i,j;if(d>1){h=new Array(d),i=new Array(d),j=new Array(d);for(;b<d;b++)c[b]&&p.isFunction(c[b].promise)?c[b].promise().done(g(b,j,c)).fail(f.reject).progress(g(b,i,h)):--e}return e||f.resolveWith(j,c),f.promise()}}),p.support=function(){var b,c,d,f,g,h,i,j,k,l,m,n=e.createElement("div");n.setAttribute("className","t"),n.innerHTML="  <link/><table></table><a href='/a'>a</a><input type='checkbox'/>",c=n.getElementsByTagName("*"),d=n.getElementsByTagName("a")[0],d.style.cssText="top:1px;float:left;opacity:.5";if(!c||!c.length)return{};f=e.createElement("select"),g=f.appendChild(e.createElement("option")),h=n.getElementsByTagName("input")[0],b={leadingWhitespace:n.firstChild.nodeType===3,tbody:!n.getElementsByTagName("tbody").length,htmlSerialize:!!n.getElementsByTagName("link").length,style:/top/.test(d.getAttribute("style")),hrefNormalized:d.getAttribute("href")==="/a",opacity:/^0.5/.test(d.style.opacity),cssFloat:!!d.style.cssFloat,checkOn:h.value==="on",optSelected:g.selected,getSetAttribute:n.className!=="t",enctype:!!e.createElement("form").enctype,html5Clone:e.createElement("nav").cloneNode(!0).outerHTML!=="<:nav></:nav>",boxModel:e.compatMode==="CSS1Compat",submitBubbles:!0,changeBubbles:!0,focusinBubbles:!1,deleteExpando:!0,noCloneEvent:!0,inlineBlockNeedsLayout:!1,shrinkWrapBlocks:!1,reliableMarginRight:!0,boxSizingReliable:!0,pixelPosition:!1},h.checked=!0,b.noCloneChecked=h.cloneNode(!0).checked,f.disabled=!0,b.optDisabled=!g.disabled;try{delete n.test}catch(o){b.deleteExpando=!1}!n.addEventListener&&n.attachEvent&&n.fireEvent&&(n.attachEvent("onclick",m=function(){b.noCloneEvent=!1}),n.cloneNode(!0).fireEvent("onclick"),n.detachEvent("onclick",m)),h=e.createElement("input"),h.value="t",h.setAttribute("type","radio"),b.radioValue=h.value==="t",h.setAttribute("checked","checked"),h.setAttribute("name","t"),n.appendChild(h),i=e.createDocumentFragment(),i.appendChild(n.lastChild),b.checkClone=i.cloneNode(!0).cloneNode(!0).lastChild.checked,b.appendChecked=h.checked,i.removeChild(h),i.appendChild(n);if(n.attachEvent)for(k in{submit:!0,change:!0,focusin:!0})j="on"+k,l=j in n,l||(n.setAttribute(j,"return;"),l=typeof n[j]=="function"),b[k+"Bubbles"]=l;return p(function(){var c,d,f,g,h="padding:0;margin:0;border:0;display:block;overflow:hidden;",i=e.getElementsByTagName("body")[0];if(!i)return;c=e.createElement("div"),c.style.cssText="visibility:hidden;border:0;width:0;height:0;position:static;top:0;margin-top:1px",i.insertBefore(c,i.firstChild),d=e.createElement("div"),c.appendChild(d),d.innerHTML="<table><tr><td></td><td>t</td></tr></table>",f=d.getElementsByTagName("td"),f[0].style.cssText="padding:0;margin:0;border:0;display:none",l=f[0].offsetHeight===0,f[0].style.display="",f[1].style.display="none",b.reliableHiddenOffsets=l&&f[0].offsetHeight===0,d.innerHTML="",d.style.cssText="box-sizing:border-box;-moz-box-sizing:border-box;-webkit-box-sizing:border-box;padding:1px;border:1px;display:block;width:4px;margin-top:1%;position:absolute;top:1%;",b.boxSizing=d.offsetWidth===4,b.doesNotIncludeMarginInBodyOffset=i.offsetTop!==1,a.getComputedStyle&&(b.pixelPosition=(a.getComputedStyle(d,null)||{}).top!=="1%",b.boxSizingReliable=(a.getComputedStyle(d,null)||{width:"4px"}).width==="4px",g=e.createElement("div"),g.style.cssText=d.style.cssText=h,g.style.marginRight=g.style.width="0",d.style.width="1px",d.appendChild(g),b.reliableMarginRight=!parseFloat((a.getComputedStyle(g,null)||{}).marginRight)),typeof d.style.zoom!="undefined"&&(d.innerHTML="",d.style.cssText=h+"width:1px;padding:1px;display:inline;zoom:1",b.inlineBlockNeedsLayout=d.offsetWidth===3,d.style.display="block",d.style.overflow="visible",d.innerHTML="<div></div>",d.firstChild.style.width="5px",b.shrinkWrapBlocks=d.offsetWidth!==3,c.style.zoom=1),i.removeChild(c),c=d=f=g=null}),i.removeChild(n),c=d=f=g=h=i=n=null,b}();var H=/(?:\{[\s\S]*\}|\[[\s\S]*\])$/,I=/([A-Z])/g;p.extend({cache:{},deletedIds:[],uuid:0,expando:"jQuery"+(p.fn.jquery+Math.random()).replace(/\D/g,""),noData:{embed:!0,object:"clsid:D27CDB6E-AE6D-11cf-96B8-444553540000",applet:!0},hasData:function(a){return a=a.nodeType?p.cache[a[p.expando]]:a[p.expando],!!a&&!K(a)},data:function(a,c,d,e){if(!p.acceptData(a))return;var f,g,h=p.expando,i=typeof c=="string",j=a.nodeType,k=j?p.cache:a,l=j?a[h]:a[h]&&h;if((!l||!k[l]||!e&&!k[l].data)&&i&&d===b)return;l||(j?a[h]=l=p.deletedIds.pop()||p.guid++:l=h),k[l]||(k[l]={},j||(k[l].toJSON=p.noop));if(typeof c=="object"||typeof c=="function")e?k[l]=p.extend(k[l],c):k[l].data=p.extend(k[l].data,c);return f=k[l],e||(f.data||(f.data={}),f=f.data),d!==b&&(f[p.camelCase(c)]=d),i?(g=f[c],g==null&&(g=f[p.camelCase(c)])):g=f,g},removeData:function(a,b,c){if(!p.acceptData(a))return;var d,e,f,g=a.nodeType,h=g?p.cache:a,i=g?a[p.expando]:p.expando;if(!h[i])return;if(b){d=c?h[i]:h[i].data;if(d){p.isArray(b)||(b in d?b=[b]:(b=p.camelCase(b),b in d?b=[b]:b=b.split(" ")));for(e=0,f=b.length;e<f;e++)delete d[b[e]];if(!(c?K:p.isEmptyObject)(d))return}}if(!c){delete h[i].data;if(!K(h[i]))return}g?p.cleanData([a],!0):p.support.deleteExpando||h!=h.window?delete h[i]:h[i]=null},_data:function(a,b,c){return p.data(a,b,c,!0)},acceptData:function(a){var b=a.nodeName&&p.noData[a.nodeName.toLowerCase()];return!b||b!==!0&&a.getAttribute("classid")===b}}),p.fn.extend({data:function(a,c){var d,e,f,g,h,i=this[0],j=0,k=null;if(a===b){if(this.length){k=p.data(i);if(i.nodeType===1&&!p._data(i,"parsedAttrs")){f=i.attributes;for(h=f.length;j<h;j++)g=f[j].name,g.indexOf("data-")||(g=p.camelCase(g.substring(5)),J(i,g,k[g]));p._data(i,"parsedAttrs",!0)}}return k}return typeof a=="object"?this.each(function(){p.data(this,a)}):(d=a.split(".",2),d[1]=d[1]?"."+d[1]:"",e=d[1]+"!",p.access(this,function(c){if(c===b)return k=this.triggerHandler("getData"+e,[d[0]]),k===b&&i&&(k=p.data(i,a),k=J(i,a,k)),k===b&&d[1]?this.data(d[0]):k;d[1]=c,this.each(function(){var b=p(this);b.triggerHandler("setData"+e,d),p.data(this,a,c),b.triggerHandler("changeData"+e,d)})},null,c,arguments.length>1,null,!1))},removeData:function(a){return this.each(function(){p.removeData(this,a)})}}),p.extend({queue:function(a,b,c){var d;if(a)return b=(b||"fx")+"queue",d=p._data(a,b),c&&(!d||p.isArray(c)?d=p._data(a,b,p.makeArray(c)):d.push(c)),d||[]},dequeue:function(a,b){b=b||"fx";var c=p.queue(a,b),d=c.length,e=c.shift(),f=p._queueHooks(a,b),g=function(){p.dequeue(a,b)};e==="inprogress"&&(e=c.shift(),d--),e&&(b==="fx"&&c.unshift("inprogress"),delete f.stop,e.call(a,g,f)),!d&&f&&f.empty.fire()},_queueHooks:function(a,b){var c=b+"queueHooks";return p._data(a,c)||p._data(a,c,{empty:p.Callbacks("once memory").add(function(){p.removeData(a,b+"queue",!0),p.removeData(a,c,!0)})})}}),p.fn.extend({queue:function(a,c){var d=2;return typeof a!="string"&&(c=a,a="fx",d--),arguments.length<d?p.queue(this[0],a):c===b?this:this.each(function(){var b=p.queue(this,a,c);p._queueHooks(this,a),a==="fx"&&b[0]!=="inprogress"&&p.dequeue(this,a)})},dequeue:function(a){return this.each(function(){p.dequeue(this,a)})},delay:function(a,b){return a=p.fx?p.fx.speeds[a]||a:a,b=b||"fx",this.queue(b,function(b,c){var d=setTimeout(b,a);c.stop=function(){clearTimeout(d)}})},clearQueue:function(a){return this.queue(a||"fx",[])},promise:function(a,c){var d,e=1,f=p.Deferred(),g=this,h=this.length,i=function(){--e||f.resolveWith(g,[g])};typeof a!="string"&&(c=a,a=b),a=a||"fx";while(h--)d=p._data(g[h],a+"queueHooks"),d&&d.empty&&(e++,d.empty.add(i));return i(),f.promise(c)}});var L,M,N,O=/[\t\r\n]/g,P=/\r/g,Q=/^(?:button|input)$/i,R=/^(?:button|input|object|select|textarea)$/i,S=/^a(?:rea|)$/i,T=/^(?:autofocus|autoplay|async|checked|controls|defer|disabled|hidden|loop|multiple|open|readonly|required|scoped|selected)$/i,U=p.support.getSetAttribute;p.fn.extend({attr:function(a,b){return p.access(this,p.attr,a,b,arguments.length>1)},removeAttr:function(a){return this.each(function(){p.removeAttr(this,a)})},prop:function(a,b){return p.access(this,p.prop,a,b,arguments.length>1)},removeProp:function(a){return a=p.propFix[a]||a,this.each(function(){try{this[a]=b,delete this[a]}catch(c){}})},addClass:function(a){var b,c,d,e,f,g,h;if(p.isFunction(a))return this.each(function(b){p(this).addClass(a.call(this,b,this.className))});if(a&&typeof a=="string"){b=a.split(s);for(c=0,d=this.length;c<d;c++){e=this[c];if(e.nodeType===1)if(!e.className&&b.length===1)e.className=a;else{f=" "+e.className+" ";for(g=0,h=b.length;g<h;g++)f.indexOf(" "+b[g]+" ")<0&&(f+=b[g]+" ");e.className=p.trim(f)}}}return this},removeClass:function(a){var c,d,e,f,g,h,i;if(p.isFunction(a))return this.each(function(b){p(this).removeClass(a.call(this,b,this.className))});if(a&&typeof a=="string"||a===b){c=(a||"").split(s);for(h=0,i=this.length;h<i;h++){e=this[h];if(e.nodeType===1&&e.className){d=(" "+e.className+" ").replace(O," ");for(f=0,g=c.length;f<g;f++)while(d.indexOf(" "+c[f]+" ")>=0)d=d.replace(" "+c[f]+" "," ");e.className=a?p.trim(d):""}}}return this},toggleClass:function(a,b){var c=typeof a,d=typeof b=="boolean";return p.isFunction(a)?this.each(function(c){p(this).toggleClass(a.call(this,c,this.className,b),b)}):this.each(function(){if(c==="string"){var e,f=0,g=p(this),h=b,i=a.split(s);while(e=i[f++])h=d?h:!g.hasClass(e),g[h?"addClass":"removeClass"](e)}else if(c==="undefined"||c==="boolean")this.className&&p._data(this,"__className__",this.className),this.className=this.className||a===!1?"":p._data(this,"__className__")||""})},hasClass:function(a){var b=" "+a+" ",c=0,d=this.length;for(;c<d;c++)if(this[c].nodeType===1&&(" "+this[c].className+" ").replace(O," ").indexOf(b)>=0)return!0;return!1},val:function(a){var c,d,e,f=this[0];if(!arguments.length){if(f)return c=p.valHooks[f.type]||p.valHooks[f.nodeName.toLowerCase()],c&&"get"in c&&(d=c.get(f,"value"))!==b?d:(d=f.value,typeof d=="string"?d.replace(P,""):d==null?"":d);return}return e=p.isFunction(a),this.each(function(d){var f,g=p(this);if(this.nodeType!==1)return;e?f=a.call(this,d,g.val()):f=a,f==null?f="":typeof f=="number"?f+="":p.isArray(f)&&(f=p.map(f,function(a){return a==null?"":a+""})),c=p.valHooks[this.type]||p.valHooks[this.nodeName.toLowerCase()];if(!c||!("set"in c)||c.set(this,f,"value")===b)this.value=f})}}),p.extend({valHooks:{option:{get:function(a){var b=a.attributes.value;return!b||b.specified?a.value:a.text}},select:{get:function(a){var b,c,d,e,f=a.selectedIndex,g=[],h=a.options,i=a.type==="select-one";if(f<0)return null;c=i?f:0,d=i?f+1:h.length;for(;c<d;c++){e=h[c];if(e.selected&&(p.support.optDisabled?!e.disabled:e.getAttribute("disabled")===null)&&(!e.parentNode.disabled||!p.nodeName(e.parentNode,"optgroup"))){b=p(e).val();if(i)return b;g.push(b)}}return i&&!g.length&&h.length?p(h[f]).val():g},set:function(a,b){var c=p.makeArray(b);return p(a).find("option").each(function(){this.selected=p.inArray(p(this).val(),c)>=0}),c.length||(a.selectedIndex=-1),c}}},attrFn:{},attr:function(a,c,d,e){var f,g,h,i=a.nodeType;if(!a||i===3||i===8||i===2)return;if(e&&p.isFunction(p.fn[c]))return p(a)[c](d);if(typeof a.getAttribute=="undefined")return p.prop(a,c,d);h=i!==1||!p.isXMLDoc(a),h&&(c=c.toLowerCase(),g=p.attrHooks[c]||(T.test(c)?M:L));if(d!==b){if(d===null){p.removeAttr(a,c);return}return g&&"set"in g&&h&&(f=g.set(a,d,c))!==b?f:(a.setAttribute(c,d+""),d)}return g&&"get"in g&&h&&(f=g.get(a,c))!==null?f:(f=a.getAttribute(c),f===null?b:f)},removeAttr:function(a,b){var c,d,e,f,g=0;if(b&&a.nodeType===1){d=b.split(s);for(;g<d.length;g++)e=d[g],e&&(c=p.propFix[e]||e,f=T.test(e),f||p.attr(a,e,""),a.removeAttribute(U?e:c),f&&c in a&&(a[c]=!1))}},attrHooks:{type:{set:function(a,b){if(Q.test(a.nodeName)&&a.parentNode)p.error("type property can't be changed");else if(!p.support.radioValue&&b==="radio"&&p.nodeName(a,"input")){var c=a.value;return a.setAttribute("type",b),c&&(a.value=c),b}}},value:{get:function(a,b){return L&&p.nodeName(a,"button")?L.get(a,b):b in a?a.value:null},set:function(a,b,c){if(L&&p.nodeName(a,"button"))return L.set(a,b,c);a.value=b}}},propFix:{tabindex:"tabIndex",readonly:"readOnly","for":"htmlFor","class":"className",maxlength:"maxLength",cellspacing:"cellSpacing",cellpadding:"cellPadding",rowspan:"rowSpan",colspan:"colSpan",usemap:"useMap",frameborder:"frameBorder",contenteditable:"contentEditable"},prop:function(a,c,d){var e,f,g,h=a.nodeType;if(!a||h===3||h===8||h===2)return;return g=h!==1||!p.isXMLDoc(a),g&&(c=p.propFix[c]||c,f=p.propHooks[c]),d!==b?f&&"set"in f&&(e=f.set(a,d,c))!==b?e:a[c]=d:f&&"get"in f&&(e=f.get(a,c))!==null?e:a[c]},propHooks:{tabIndex:{get:function(a){var c=a.getAttributeNode("tabindex");return c&&c.specified?parseInt(c.value,10):R.test(a.nodeName)||S.test(a.nodeName)&&a.href?0:b}}}}),M={get:function(a,c){var d,e=p.prop(a,c);return e===!0||typeof e!="boolean"&&(d=a.getAttributeNode(c))&&d.nodeValue!==!1?c.toLowerCase():b},set:function(a,b,c){var d;return b===!1?p.removeAttr(a,c):(d=p.propFix[c]||c,d in a&&(a[d]=!0),a.setAttribute(c,c.toLowerCase())),c}},U||(N={name:!0,id:!0,coords:!0},L=p.valHooks.button={get:function(a,c){var d;return d=a.getAttributeNode(c),d&&(N[c]?d.value!=="":d.specified)?d.value:b},set:function(a,b,c){var d=a.getAttributeNode(c);return d||(d=e.createAttribute(c),a.setAttributeNode(d)),d.value=b+""}},p.each(["width","height"],function(a,b){p.attrHooks[b]=p.extend(p.attrHooks[b],{set:function(a,c){if(c==="")return a.setAttribute(b,"auto"),c}})}),p.attrHooks.contenteditable={get:L.get,set:function(a,b,c){b===""&&(b="false"),L.set(a,b,c)}}),p.support.hrefNormalized||p.each(["href","src","width","height"],function(a,c){p.attrHooks[c]=p.extend(p.attrHooks[c],{get:function(a){var d=a.getAttribute(c,2);return d===null?b:d}})}),p.support.style||(p.attrHooks.style={get:function(a){return a.style.cssText.toLowerCase()||b},set:function(a,b){return a.style.cssText=b+""}}),p.support.optSelected||(p.propHooks.selected=p.extend(p.propHooks.selected,{get:function(a){var b=a.parentNode;return b&&(b.selectedIndex,b.parentNode&&b.parentNode.selectedIndex),null}})),p.support.enctype||(p.propFix.enctype="encoding"),p.support.checkOn||p.each(["radio","checkbox"],function(){p.valHooks[this]={get:function(a){return a.getAttribute("value")===null?"on":a.value}}}),p.each(["radio","checkbox"],function(){p.valHooks[this]=p.extend(p.valHooks[this],{set:function(a,b){if(p.isArray(b))return a.checked=p.inArray(p(a).val(),b)>=0}})});var V=/^(?:textarea|input|select)$/i,W=/^([^\.]*|)(?:\.(.+)|)$/,X=/(?:^|\s)hover(\.\S+|)\b/,Y=/^key/,Z=/^(?:mouse|contextmenu)|click/,$=/^(?:focusinfocus|focusoutblur)$/,_=function(a){return p.event.special.hover?a:a.replace(X,"mouseenter$1 mouseleave$1")};p.event={add:function(a,c,d,e,f){var g,h,i,j,k,l,m,n,o,q,r;if(a.nodeType===3||a.nodeType===8||!c||!d||!(g=p._data(a)))return;d.handler&&(o=d,d=o.handler,f=o.selector),d.guid||(d.guid=p.guid++),i=g.events,i||(g.events=i={}),h=g.handle,h||(g.handle=h=function(a){return typeof p!="undefined"&&(!a||p.event.triggered!==a.type)?p.event.dispatch.apply(h.elem,arguments):b},h.elem=a),c=p.trim(_(c)).split(" ");for(j=0;j<c.length;j++){k=W.exec(c[j])||[],l=k[1],m=(k[2]||"").split(".").sort(),r=p.event.special[l]||{},l=(f?r.delegateType:r.bindType)||l,r=p.event.special[l]||{},n=p.extend({type:l,origType:k[1],data:e,handler:d,guid:d.guid,selector:f,needsContext:f&&p.expr.match.needsContext.test(f),namespace:m.join(".")},o),q=i[l];if(!q){q=i[l]=[],q.delegateCount=0;if(!r.setup||r.setup.call(a,e,m,h)===!1)a.addEventListener?a.addEventListener(l,h,!1):a.attachEvent&&a.attachEvent("on"+l,h)}r.add&&(r.add.call(a,n),n.handler.guid||(n.handler.guid=d.guid)),f?q.splice(q.delegateCount++,0,n):q.push(n),p.event.global[l]=!0}a=null},global:{},remove:function(a,b,c,d,e){var f,g,h,i,j,k,l,m,n,o,q,r=p.hasData(a)&&p._data(a);if(!r||!(m=r.events))return;b=p.trim(_(b||"")).split(" ");for(f=0;f<b.length;f++){g=W.exec(b[f])||[],h=i=g[1],j=g[2];if(!h){for(h in m)p.event.remove(a,h+b[f],c,d,!0);continue}n=p.event.special[h]||{},h=(d?n.delegateType:n.bindType)||h,o=m[h]||[],k=o.length,j=j?new RegExp("(^|\\.)"+j.split(".").sort().join("\\.(?:.*\\.|)")+"(\\.|$)"):null;for(l=0;l<o.length;l++)q=o[l],(e||i===q.origType)&&(!c||c.guid===q.guid)&&(!j||j.test(q.namespace))&&(!d||d===q.selector||d==="**"&&q.selector)&&(o.splice(l--,1),q.selector&&o.delegateCount--,n.remove&&n.remove.call(a,q));o.length===0&&k!==o.length&&((!n.teardown||n.teardown.call(a,j,r.handle)===!1)&&p.removeEvent(a,h,r.handle),delete m[h])}p.isEmptyObject(m)&&(delete r.handle,p.removeData(a,"events",!0))},customEvent:{getData:!0,setData:!0,changeData:!0},trigger:function(c,d,f,g){if(!f||f.nodeType!==3&&f.nodeType!==8){var h,i,j,k,l,m,n,o,q,r,s=c.type||c,t=[];if($.test(s+p.event.triggered))return;s.indexOf("!")>=0&&(s=s.slice(0,-1),i=!0),s.indexOf(".")>=0&&(t=s.split("."),s=t.shift(),t.sort());if((!f||p.event.customEvent[s])&&!p.event.global[s])return;c=typeof c=="object"?c[p.expando]?c:new p.Event(s,c):new p.Event(s),c.type=s,c.isTrigger=!0,c.exclusive=i,c.namespace=t.join("."),c.namespace_re=c.namespace?new RegExp("(^|\\.)"+t.join("\\.(?:.*\\.|)")+"(\\.|$)"):null,m=s.indexOf(":")<0?"on"+s:"";if(!f){h=p.cache;for(j in h)h[j].events&&h[j].events[s]&&p.event.trigger(c,d,h[j].handle.elem,!0);return}c.result=b,c.target||(c.target=f),d=d!=null?p.makeArray(d):[],d.unshift(c),n=p.event.special[s]||{};if(n.trigger&&n.trigger.apply(f,d)===!1)return;q=[[f,n.bindType||s]];if(!g&&!n.noBubble&&!p.isWindow(f)){r=n.delegateType||s,k=$.test(r+s)?f:f.parentNode;for(l=f;k;k=k.parentNode)q.push([k,r]),l=k;l===(f.ownerDocument||e)&&q.push([l.defaultView||l.parentWindow||a,r])}for(j=0;j<q.length&&!c.isPropagationStopped();j++)k=q[j][0],c.type=q[j][1],o=(p._data(k,"events")||{})[c.type]&&p._data(k,"handle"),o&&o.apply(k,d),o=m&&k[m],o&&p.acceptData(k)&&o.apply&&o.apply(k,d)===!1&&c.preventDefault();return c.type=s,!g&&!c.isDefaultPrevented()&&(!n._default||n._default.apply(f.ownerDocument,d)===!1)&&(s!=="click"||!p.nodeName(f,"a"))&&p.acceptData(f)&&m&&f[s]&&(s!=="focus"&&s!=="blur"||c.target.offsetWidth!==0)&&!p.isWindow(f)&&(l=f[m],l&&(f[m]=null),p.event.triggered=s,f[s](),p.event.triggered=b,l&&(f[m]=l)),c.result}return},dispatch:function(c){c=p.event.fix(c||a.event);var d,e,f,g,h,i,j,l,m,n,o=(p._data(this,"events")||{})[c.type]||[],q=o.delegateCount,r=k.call(arguments),s=!c.exclusive&&!c.namespace,t=p.event.special[c.type]||{},u=[];r[0]=c,c.delegateTarget=this;if(t.preDispatch&&t.preDispatch.call(this,c)===!1)return;if(q&&(!c.button||c.type!=="click"))for(f=c.target;f!=this;f=f.parentNode||this)if(f.disabled!==!0||c.type!=="click"){h={},j=[];for(d=0;d<q;d++)l=o[d],m=l.selector,h[m]===b&&(h[m]=l.needsContext?p(m,this).index(f)>=0:p.find(m,this,null,[f]).length),h[m]&&j.push(l);j.length&&u.push({elem:f,matches:j})}o.length>q&&u.push({elem:this,matches:o.slice(q)});for(d=0;d<u.length&&!c.isPropagationStopped();d++){i=u[d],c.currentTarget=i.elem;for(e=0;e<i.matches.length&&!c.isImmediatePropagationStopped();e++){l=i.matches[e];if(s||!c.namespace&&!l.namespace||c.namespace_re&&c.namespace_re.test(l.namespace))c.data=l.data,c.handleObj=l,g=((p.event.special[l.origType]||{}).handle||l.handler).apply(i.elem,r),g!==b&&(c.result=g,g===!1&&(c.preventDefault(),c.stopPropagation()))}}return t.postDispatch&&t.postDispatch.call(this,c),c.result},props:"attrChange attrName relatedNode srcElement altKey bubbles cancelable ctrlKey currentTarget eventPhase metaKey relatedTarget shiftKey target timeStamp view which".split(" "),fixHooks:{},keyHooks:{props:"char charCode key keyCode".split(" "),filter:function(a,b){return a.which==null&&(a.which=b.charCode!=null?b.charCode:b.keyCode),a}},mouseHooks:{props:"button buttons clientX clientY fromElement offsetX offsetY pageX pageY screenX screenY toElement".split(" "),filter:function(a,c){var d,f,g,h=c.button,i=c.fromElement;return a.pageX==null&&c.clientX!=null&&(d=a.target.ownerDocument||e,f=d.documentElement,g=d.body,a.pageX=c.clientX+(f&&f.scrollLeft||g&&g.scrollLeft||0)-(f&&f.clientLeft||g&&g.clientLeft||0),a.pageY=c.clientY+(f&&f.scrollTop||g&&g.scrollTop||0)-(f&&f.clientTop||g&&g.clientTop||0)),!a.relatedTarget&&i&&(a.relatedTarget=i===a.target?c.toElement:i),!a.which&&h!==b&&(a.which=h&1?1:h&2?3:h&4?2:0),a}},fix:function(a){if(a[p.expando])return a;var b,c,d=a,f=p.event.fixHooks[a.type]||{},g=f.props?this.props.concat(f.props):this.props;a=p.Event(d);for(b=g.length;b;)c=g[--b],a[c]=d[c];return a.target||(a.target=d.srcElement||e),a.target.nodeType===3&&(a.target=a.target.parentNode),a.metaKey=!!a.metaKey,f.filter?f.filter(a,d):a},special:{load:{noBubble:!0},focus:{delegateType:"focusin"},blur:{delegateType:"focusout"},beforeunload:{setup:function(a,b,c){p.isWindow(this)&&(this.onbeforeunload=c)},teardown:function(a,b){this.onbeforeunload===b&&(this.onbeforeunload=null)}}},simulate:function(a,b,c,d){var e=p.extend(new p.Event,c,{type:a,isSimulated:!0,originalEvent:{}});d?p.event.trigger(e,null,b):p.event.dispatch.call(b,e),e.isDefaultPrevented()&&c.preventDefault()}},p.event.handle=p.event.dispatch,p.removeEvent=e.removeEventListener?function(a,b,c){a.removeEventListener&&a.removeEventListener(b,c,!1)}:function(a,b,c){var d="on"+b;a.detachEvent&&(typeof a[d]=="undefined"&&(a[d]=null),a.detachEvent(d,c))},p.Event=function(a,b){if(this instanceof p.Event)a&&a.type?(this.originalEvent=a,this.type=a.type,this.isDefaultPrevented=a.defaultPrevented||a.returnValue===!1||a.getPreventDefault&&a.getPreventDefault()?bb:ba):this.type=a,b&&p.extend(this,b),this.timeStamp=a&&a.timeStamp||p.now(),this[p.expando]=!0;else return new p.Event(a,b)},p.Event.prototype={preventDefault:function(){this.isDefaultPrevented=bb;var a=this.originalEvent;if(!a)return;a.preventDefault?a.preventDefault():a.returnValue=!1},stopPropagation:function(){this.isPropagationStopped=bb;var a=this.originalEvent;if(!a)return;a.stopPropagation&&a.stopPropagation(),a.cancelBubble=!0},stopImmediatePropagation:function(){this.isImmediatePropagationStopped=bb,this.stopPropagation()},isDefaultPrevented:ba,isPropagationStopped:ba,isImmediatePropagationStopped:ba},p.each({mouseenter:"mouseover",mouseleave:"mouseout"},function(a,b){p.event.special[a]={delegateType:b,bindType:b,handle:function(a){var c,d=this,e=a.relatedTarget,f=a.handleObj,g=f.selector;if(!e||e!==d&&!p.contains(d,e))a.type=f.origType,c=f.handler.apply(this,arguments),a.type=b;return c}}}),p.support.submitBubbles||(p.event.special.submit={setup:function(){if(p.nodeName(this,"form"))return!1;p.event.add(this,"click._submit keypress._submit",function(a){var c=a.target,d=p.nodeName(c,"input")||p.nodeName(c,"button")?c.form:b;d&&!p._data(d,"_submit_attached")&&(p.event.add(d,"submit._submit",function(a){a._submit_bubble=!0}),p._data(d,"_submit_attached",!0))})},postDispatch:function(a){a._submit_bubble&&(delete a._submit_bubble,this.parentNode&&!a.isTrigger&&p.event.simulate("submit",this.parentNode,a,!0))},teardown:function(){if(p.nodeName(this,"form"))return!1;p.event.remove(this,"._submit")}}),p.support.changeBubbles||(p.event.special.change={setup:function(){if(V.test(this.nodeName)){if(this.type==="checkbox"||this.type==="radio")p.event.add(this,"propertychange._change",function(a){a.originalEvent.propertyName==="checked"&&(this._just_changed=!0)}),p.event.add(this,"click._change",function(a){this._just_changed&&!a.isTrigger&&(this._just_changed=!1),p.event.simulate("change",this,a,!0)});return!1}p.event.add(this,"beforeactivate._change",function(a){var b=a.target;V.test(b.nodeName)&&!p._data(b,"_change_attached")&&(p.event.add(b,"change._change",function(a){this.parentNode&&!a.isSimulated&&!a.isTrigger&&p.event.simulate("change",this.parentNode,a,!0)}),p._data(b,"_change_attached",!0))})},handle:function(a){var b=a.target;if(this!==b||a.isSimulated||a.isTrigger||b.type!=="radio"&&b.type!=="checkbox")return a.handleObj.handler.apply(this,arguments)},teardown:function(){return p.event.remove(this,"._change"),!V.test(this.nodeName)}}),p.support.focusinBubbles||p.each({focus:"focusin",blur:"focusout"},function(a,b){var c=0,d=function(a){p.event.simulate(b,a.target,p.event.fix(a),!0)};p.event.special[b]={setup:function(){c++===0&&e.addEventListener(a,d,!0)},teardown:function(){--c===0&&e.removeEventListener(a,d,!0)}}}),p.fn.extend({on:function(a,c,d,e,f){var g,h;if(typeof a=="object"){typeof c!="string"&&(d=d||c,c=b);for(h in a)this.on(h,c,d,a[h],f);return this}d==null&&e==null?(e=c,d=c=b):e==null&&(typeof c=="string"?(e=d,d=b):(e=d,d=c,c=b));if(e===!1)e=ba;else if(!e)return this;return f===1&&(g=e,e=function(a){return p().off(a),g.apply(this,arguments)},e.guid=g.guid||(g.guid=p.guid++)),this.each(function(){p.event.add(this,a,e,d,c)})},one:function(a,b,c,d){return this.on(a,b,c,d,1)},off:function(a,c,d){var e,f;if(a&&a.preventDefault&&a.handleObj)return e=a.handleObj,p(a.delegateTarget).off(e.namespace?e.origType+"."+e.namespace:e.origType,e.selector,e.handler),this;if(typeof a=="object"){for(f in a)this.off(f,c,a[f]);return this}if(c===!1||typeof c=="function")d=c,c=b;return d===!1&&(d=ba),this.each(function(){p.event.remove(this,a,d,c)})},bind:function(a,b,c){return this.on(a,null,b,c)},unbind:function(a,b){return this.off(a,null,b)},live:function(a,b,c){return p(this.context).on(a,this.selector,b,c),this},die:function(a,b){return p(this.context).off(a,this.selector||"**",b),this},delegate:function(a,b,c,d){return this.on(b,a,c,d)},undelegate:function(a,b,c){return arguments.length===1?this.off(a,"**"):this.off(b,a||"**",c)},trigger:function(a,b){return this.each(function(){p.event.trigger(a,b,this)})},triggerHandler:function(a,b){if(this[0])return p.event.trigger(a,b,this[0],!0)},toggle:function(a){var b=arguments,c=a.guid||p.guid++,d=0,e=function(c){var e=(p._data(this,"lastToggle"+a.guid)||0)%d;return p._data(this,"lastToggle"+a.guid,e+1),c.preventDefault(),b[e].apply(this,arguments)||!1};e.guid=c;while(d<b.length)b[d++].guid=c;return this.click(e)},hover:function(a,b){return this.mouseenter(a).mouseleave(b||a)}}),p.each("blur focus focusin focusout load resize scroll unload click dblclick mousedown mouseup mousemove mouseover mouseout mouseenter mouseleave change select submit keydown keypress keyup error contextmenu".split(" "),function(a,b){p.fn[b]=function(a,c){return c==null&&(c=a,a=null),arguments.length>0?this.on(b,null,a,c):this.trigger(b)},Y.test(b)&&(p.event.fixHooks[b]=p.event.keyHooks),Z.test(b)&&(p.event.fixHooks[b]=p.event.mouseHooks)}),function(a,b){function bc(a,b,c,d){c=c||[],b=b||r;var e,f,i,j,k=b.nodeType;if(!a||typeof a!="string")return c;if(k!==1&&k!==9)return[];i=g(b);if(!i&&!d)if(e=P.exec(a))if(j=e[1]){if(k===9){f=b.getElementById(j);if(!f||!f.parentNode)return c;if(f.id===j)return c.push(f),c}else if(b.ownerDocument&&(f=b.ownerDocument.getElementById(j))&&h(b,f)&&f.id===j)return c.push(f),c}else{if(e[2])return w.apply(c,x.call(b.getElementsByTagName(a),0)),c;if((j=e[3])&&_&&b.getElementsByClassName)return w.apply(c,x.call(b.getElementsByClassName(j),0)),c}return bp(a.replace(L,"$1"),b,c,d,i)}function bd(a){return function(b){var c=b.nodeName.toLowerCase();return c==="input"&&b.type===a}}function be(a){return function(b){var c=b.nodeName.toLowerCase();return(c==="input"||c==="button")&&b.type===a}}function bf(a){return z(function(b){return b=+b,z(function(c,d){var e,f=a([],c.length,b),g=f.length;while(g--)c[e=f[g]]&&(c[e]=!(d[e]=c[e]))})})}function bg(a,b,c){if(a===b)return c;var d=a.nextSibling;while(d){if(d===b)return-1;d=d.nextSibling}return 1}function bh(a,b){var c,d,f,g,h,i,j,k=C[o][a];if(k)return b?0:k.slice(0);h=a,i=[],j=e.preFilter;while(h){if(!c||(d=M.exec(h)))d&&(h=h.slice(d[0].length)),i.push(f=[]);c=!1;if(d=N.exec(h))f.push(c=new q(d.shift())),h=h.slice(c.length),c.type=d[0].replace(L," ");for(g in e.filter)(d=W[g].exec(h))&&(!j[g]||(d=j[g](d,r,!0)))&&(f.push(c=new q(d.shift())),h=h.slice(c.length),c.type=g,c.matches=d);if(!c)break}return b?h.length:h?bc.error(a):C(a,i).slice(0)}function bi(a,b,d){var e=b.dir,f=d&&b.dir==="parentNode",g=u++;return b.first?function(b,c,d){while(b=b[e])if(f||b.nodeType===1)return a(b,c,d)}:function(b,d,h){if(!h){var i,j=t+" "+g+" ",k=j+c;while(b=b[e])if(f||b.nodeType===1){if((i=b[o])===k)return b.sizset;if(typeof i=="string"&&i.indexOf(j)===0){if(b.sizset)return b}else{b[o]=k;if(a(b,d,h))return b.sizset=!0,b;b.sizset=!1}}}else while(b=b[e])if(f||b.nodeType===1)if(a(b,d,h))return b}}function bj(a){return a.length>1?function(b,c,d){var e=a.length;while(e--)if(!a[e](b,c,d))return!1;return!0}:a[0]}function bk(a,b,c,d,e){var f,g=[],h=0,i=a.length,j=b!=null;for(;h<i;h++)if(f=a[h])if(!c||c(f,d,e))g.push(f),j&&b.push(h);return g}function bl(a,b,c,d,e,f){return d&&!d[o]&&(d=bl(d)),e&&!e[o]&&(e=bl(e,f)),z(function(f,g,h,i){if(f&&e)return;var j,k,l,m=[],n=[],o=g.length,p=f||bo(b||"*",h.nodeType?[h]:h,[],f),q=a&&(f||!b)?bk(p,m,a,h,i):p,r=c?e||(f?a:o||d)?[]:g:q;c&&c(q,r,h,i);if(d){l=bk(r,n),d(l,[],h,i),j=l.length;while(j--)if(k=l[j])r[n[j]]=!(q[n[j]]=k)}if(f){j=a&&r.length;while(j--)if(k=r[j])f[m[j]]=!(g[m[j]]=k)}else r=bk(r===g?r.splice(o,r.length):r),e?e(null,g,r,i):w.apply(g,r)})}function bm(a){var b,c,d,f=a.length,g=e.relative[a[0].type],h=g||e.relative[" "],i=g?1:0,j=bi(function(a){return a===b},h,!0),k=bi(function(a){return y.call(b,a)>-1},h,!0),m=[function(a,c,d){return!g&&(d||c!==l)||((b=c).nodeType?j(a,c,d):k(a,c,d))}];for(;i<f;i++)if(c=e.relative[a[i].type])m=[bi(bj(m),c)];else{c=e.filter[a[i].type].apply(null,a[i].matches);if(c[o]){d=++i;for(;d<f;d++)if(e.relative[a[d].type])break;return bl(i>1&&bj(m),i>1&&a.slice(0,i-1).join("").replace(L,"$1"),c,i<d&&bm(a.slice(i,d)),d<f&&bm(a=a.slice(d)),d<f&&a.join(""))}m.push(c)}return bj(m)}function bn(a,b){var d=b.length>0,f=a.length>0,g=function(h,i,j,k,m){var n,o,p,q=[],s=0,u="0",x=h&&[],y=m!=null,z=l,A=h||f&&e.find.TAG("*",m&&i.parentNode||i),B=t+=z==null?1:Math.E;y&&(l=i!==r&&i,c=g.el);for(;(n=A[u])!=null;u++){if(f&&n){for(o=0;p=a[o];o++)if(p(n,i,j)){k.push(n);break}y&&(t=B,c=++g.el)}d&&((n=!p&&n)&&s--,h&&x.push(n))}s+=u;if(d&&u!==s){for(o=0;p=b[o];o++)p(x,q,i,j);if(h){if(s>0)while(u--)!x[u]&&!q[u]&&(q[u]=v.call(k));q=bk(q)}w.apply(k,q),y&&!h&&q.length>0&&s+b.length>1&&bc.uniqueSort(k)}return y&&(t=B,l=z),x};return g.el=0,d?z(g):g}function bo(a,b,c,d){var e=0,f=b.length;for(;e<f;e++)bc(a,b[e],c,d);return c}function bp(a,b,c,d,f){var g,h,j,k,l,m=bh(a),n=m.length;if(!d&&m.length===1){h=m[0]=m[0].slice(0);if(h.length>2&&(j=h[0]).type==="ID"&&b.nodeType===9&&!f&&e.relative[h[1].type]){b=e.find.ID(j.matches[0].replace(V,""),b,f)[0];if(!b)return c;a=a.slice(h.shift().length)}for(g=W.POS.test(a)?-1:h.length-1;g>=0;g--){j=h[g];if(e.relative[k=j.type])break;if(l=e.find[k])if(d=l(j.matches[0].replace(V,""),R.test(h[0].type)&&b.parentNode||b,f)){h.splice(g,1),a=d.length&&h.join("");if(!a)return w.apply(c,x.call(d,0)),c;break}}}return i(a,m)(d,b,f,c,R.test(a)),c}function bq(){}var c,d,e,f,g,h,i,j,k,l,m=!0,n="undefined",o=("sizcache"+Math.random()).replace(".",""),q=String,r=a.document,s=r.documentElement,t=0,u=0,v=[].pop,w=[].push,x=[].slice,y=[].indexOf||function(a){var b=0,c=this.length;for(;b<c;b++)if(this[b]===a)return b;return-1},z=function(a,b){return a[o]=b==null||b,a},A=function(){var a={},b=[];return z(function(c,d){return b.push(c)>e.cacheLength&&delete a[b.shift()],a[c]=d},a)},B=A(),C=A(),D=A(),E="[\\x20\\t\\r\\n\\f]",F="(?:\\\\.|[-\\w]|[^\\x00-\\xa0])+",G=F.replace("w","w#"),H="([*^$|!~]?=)",I="\\["+E+"*("+F+")"+E+"*(?:"+H+E+"*(?:(['\"])((?:\\\\.|[^\\\\])*?)\\3|("+G+")|)|)"+E+"*\\]",J=":("+F+")(?:\\((?:(['\"])((?:\\\\.|[^\\\\])*?)\\2|([^()[\\]]*|(?:(?:"+I+")|[^:]|\\\\.)*|.*))\\)|)",K=":(even|odd|eq|gt|lt|nth|first|last)(?:\\("+E+"*((?:-\\d)?\\d*)"+E+"*\\)|)(?=[^-]|$)",L=new RegExp("^"+E+"+|((?:^|[^\\\\])(?:\\\\.)*)"+E+"+$","g"),M=new RegExp("^"+E+"*,"+E+"*"),N=new RegExp("^"+E+"*([\\x20\\t\\r\\n\\f>+~])"+E+"*"),O=new RegExp(J),P=/^(?:#([\w\-]+)|(\w+)|\.([\w\-]+))$/,Q=/^:not/,R=/[\x20\t\r\n\f]*[+~]/,S=/:not\($/,T=/h\d/i,U=/input|select|textarea|button/i,V=/\\(?!\\)/g,W={ID:new RegExp("^#("+F+")"),CLASS:new RegExp("^\\.("+F+")"),NAME:new RegExp("^\\[name=['\"]?("+F+")['\"]?\\]"),TAG:new RegExp("^("+F.replace("w","w*")+")"),ATTR:new RegExp("^"+I),PSEUDO:new RegExp("^"+J),POS:new RegExp(K,"i"),CHILD:new RegExp("^:(only|nth|first|last)-child(?:\\("+E+"*(even|odd|(([+-]|)(\\d*)n|)"+E+"*(?:([+-]|)"+E+"*(\\d+)|))"+E+"*\\)|)","i"),needsContext:new RegExp("^"+E+"*[>+~]|"+K,"i")},X=function(a){var b=r.createElement("div");try{return a(b)}catch(c){return!1}finally{b=null}},Y=X(function(a){return a.appendChild(r.createComment("")),!a.getElementsByTagName("*").length}),Z=X(function(a){return a.innerHTML="<a href='#'></a>",a.firstChild&&typeof a.firstChild.getAttribute!==n&&a.firstChild.getAttribute("href")==="#"}),$=X(function(a){a.innerHTML="<select></select>";var b=typeof a.lastChild.getAttribute("multiple");return b!=="boolean"&&b!=="string"}),_=X(function(a){return a.innerHTML="<div class='hidden e'></div><div class='hidden'></div>",!a.getElementsByClassName||!a.getElementsByClassName("e").length?!1:(a.lastChild.className="e",a.getElementsByClassName("e").length===2)}),ba=X(function(a){a.id=o+0,a.innerHTML="<a name='"+o+"'></a><div name='"+o+"'></div>",s.insertBefore(a,s.firstChild);var b=r.getElementsByName&&r.getElementsByName(o).length===2+r.getElementsByName(o+0).length;return d=!r.getElementById(o),s.removeChild(a),b});try{x.call(s.childNodes,0)[0].nodeType}catch(bb){x=function(a){var b,c=[];for(;b=this[a];a++)c.push(b);return c}}bc.matches=function(a,b){return bc(a,null,null,b)},bc.matchesSelector=function(a,b){return bc(b,null,null,[a]).length>0},f=bc.getText=function(a){var b,c="",d=0,e=a.nodeType;if(e){if(e===1||e===9||e===11){if(typeof a.textContent=="string")return a.textContent;for(a=a.firstChild;a;a=a.nextSibling)c+=f(a)}else if(e===3||e===4)return a.nodeValue}else for(;b=a[d];d++)c+=f(b);return c},g=bc.isXML=function(a){var b=a&&(a.ownerDocument||a).documentElement;return b?b.nodeName!=="HTML":!1},h=bc.contains=s.contains?function(a,b){var c=a.nodeType===9?a.documentElement:a,d=b&&b.parentNode;return a===d||!!(d&&d.nodeType===1&&c.contains&&c.contains(d))}:s.compareDocumentPosition?function(a,b){return b&&!!(a.compareDocumentPosition(b)&16)}:function(a,b){while(b=b.parentNode)if(b===a)return!0;return!1},bc.attr=function(a,b){var c,d=g(a);return d||(b=b.toLowerCase()),(c=e.attrHandle[b])?c(a):d||$?a.getAttribute(b):(c=a.getAttributeNode(b),c?typeof a[b]=="boolean"?a[b]?b:null:c.specified?c.value:null:null)},e=bc.selectors={cacheLength:50,createPseudo:z,match:W,attrHandle:Z?{}:{href:function(a){return a.getAttribute("href",2)},type:function(a){return a.getAttribute("type")}},find:{ID:d?function(a,b,c){if(typeof b.getElementById!==n&&!c){var d=b.getElementById(a);return d&&d.parentNode?[d]:[]}}:function(a,c,d){if(typeof c.getElementById!==n&&!d){var e=c.getElementById(a);return e?e.id===a||typeof e.getAttributeNode!==n&&e.getAttributeNode("id").value===a?[e]:b:[]}},TAG:Y?function(a,b){if(typeof b.getElementsByTagName!==n)return b.getElementsByTagName(a)}:function(a,b){var c=b.getElementsByTagName(a);if(a==="*"){var d,e=[],f=0;for(;d=c[f];f++)d.nodeType===1&&e.push(d);return e}return c},NAME:ba&&function(a,b){if(typeof b.getElementsByName!==n)return b.getElementsByName(name)},CLASS:_&&function(a,b,c){if(typeof b.getElementsByClassName!==n&&!c)return b.getElementsByClassName(a)}},relative:{">":{dir:"parentNode",first:!0}," ":{dir:"parentNode"},"+":{dir:"previousSibling",first:!0},"~":{dir:"previousSibling"}},preFilter:{ATTR:function(a){return a[1]=a[1].replace(V,""),a[3]=(a[4]||a[5]||"").replace(V,""),a[2]==="~="&&(a[3]=" "+a[3]+" "),a.slice(0,4)},CHILD:function(a){return a[1]=a[1].toLowerCase(),a[1]==="nth"?(a[2]||bc.error(a[0]),a[3]=+(a[3]?a[4]+(a[5]||1):2*(a[2]==="even"||a[2]==="odd")),a[4]=+(a[6]+a[7]||a[2]==="odd")):a[2]&&bc.error(a[0]),a},PSEUDO:function(a){var b,c;if(W.CHILD.test(a[0]))return null;if(a[3])a[2]=a[3];else if(b=a[4])O.test(b)&&(c=bh(b,!0))&&(c=b.indexOf(")",b.length-c)-b.length)&&(b=b.slice(0,c),a[0]=a[0].slice(0,c)),a[2]=b;return a.slice(0,3)}},filter:{ID:d?function(a){return a=a.replace(V,""),function(b){return b.getAttribute("id")===a}}:function(a){return a=a.replace(V,""),function(b){var c=typeof b.getAttributeNode!==n&&b.getAttributeNode("id");return c&&c.value===a}},TAG:function(a){return a==="*"?function(){return!0}:(a=a.replace(V,"").toLowerCase(),function(b){return b.nodeName&&b.nodeName.toLowerCase()===a})},CLASS:function(a){var b=B[o][a];return b||(b=B(a,new RegExp("(^|"+E+")"+a+"("+E+"|$)"))),function(a){return b.test(a.className||typeof a.getAttribute!==n&&a.getAttribute("class")||"")}},ATTR:function(a,b,c){return function(d,e){var f=bc.attr(d,a);return f==null?b==="!=":b?(f+="",b==="="?f===c:b==="!="?f!==c:b==="^="?c&&f.indexOf(c)===0:b==="*="?c&&f.indexOf(c)>-1:b==="$="?c&&f.substr(f.length-c.length)===c:b==="~="?(" "+f+" ").indexOf(c)>-1:b==="|="?f===c||f.substr(0,c.length+1)===c+"-":!1):!0}},CHILD:function(a,b,c,d){return a==="nth"?function(a){var b,e,f=a.parentNode;if(c===1&&d===0)return!0;if(f){e=0;for(b=f.firstChild;b;b=b.nextSibling)if(b.nodeType===1){e++;if(a===b)break}}return e-=d,e===c||e%c===0&&e/c>=0}:function(b){var c=b;switch(a){case"only":case"first":while(c=c.previousSibling)if(c.nodeType===1)return!1;if(a==="first")return!0;c=b;case"last":while(c=c.nextSibling)if(c.nodeType===1)return!1;return!0}}},PSEUDO:function(a,b){var c,d=e.pseudos[a]||e.setFilters[a.toLowerCase()]||bc.error("unsupported pseudo: "+a);return d[o]?d(b):d.length>1?(c=[a,a,"",b],e.setFilters.hasOwnProperty(a.toLowerCase())?z(function(a,c){var e,f=d(a,b),g=f.length;while(g--)e=y.call(a,f[g]),a[e]=!(c[e]=f[g])}):function(a){return d(a,0,c)}):d}},pseudos:{not:z(function(a){var b=[],c=[],d=i(a.replace(L,"$1"));return d[o]?z(function(a,b,c,e){var f,g=d(a,null,e,[]),h=a.length;while(h--)if(f=g[h])a[h]=!(b[h]=f)}):function(a,e,f){return b[0]=a,d(b,null,f,c),!c.pop()}}),has:z(function(a){return function(b){return bc(a,b).length>0}}),contains:z(function(a){return function(b){return(b.textContent||b.innerText||f(b)).indexOf(a)>-1}}),enabled:function(a){return a.disabled===!1},disabled:function(a){return a.disabled===!0},checked:function(a){var b=a.nodeName.toLowerCase();return b==="input"&&!!a.checked||b==="option"&&!!a.selected},selected:function(a){return a.parentNode&&a.parentNode.selectedIndex,a.selected===!0},parent:function(a){return!e.pseudos.empty(a)},empty:function(a){var b;a=a.firstChild;while(a){if(a.nodeName>"@"||(b=a.nodeType)===3||b===4)return!1;a=a.nextSibling}return!0},header:function(a){return T.test(a.nodeName)},text:function(a){var b,c;return a.nodeName.toLowerCase()==="input"&&(b=a.type)==="text"&&((c=a.getAttribute("type"))==null||c.toLowerCase()===b)},radio:bd("radio"),checkbox:bd("checkbox"),file:bd("file"),password:bd("password"),image:bd("image"),submit:be("submit"),reset:be("reset"),button:function(a){var b=a.nodeName.toLowerCase();return b==="input"&&a.type==="button"||b==="button"},input:function(a){return U.test(a.nodeName)},focus:function(a){var b=a.ownerDocument;return a===b.activeElement&&(!b.hasFocus||b.hasFocus())&&(!!a.type||!!a.href)},active:function(a){return a===a.ownerDocument.activeElement},first:bf(function(a,b,c){return[0]}),last:bf(function(a,b,c){return[b-1]}),eq:bf(function(a,b,c){return[c<0?c+b:c]}),even:bf(function(a,b,c){for(var d=0;d<b;d+=2)a.push(d);return a}),odd:bf(function(a,b,c){for(var d=1;d<b;d+=2)a.push(d);return a}),lt:bf(function(a,b,c){for(var d=c<0?c+b:c;--d>=0;)a.push(d);return a}),gt:bf(function(a,b,c){for(var d=c<0?c+b:c;++d<b;)a.push(d);return a})}},j=s.compareDocumentPosition?function(a,b){return a===b?(k=!0,0):(!a.compareDocumentPosition||!b.compareDocumentPosition?a.compareDocumentPosition:a.compareDocumentPosition(b)&4)?-1:1}:function(a,b){if(a===b)return k=!0,0;if(a.sourceIndex&&b.sourceIndex)return a.sourceIndex-b.sourceIndex;var c,d,e=[],f=[],g=a.parentNode,h=b.parentNode,i=g;if(g===h)return bg(a,b);if(!g)return-1;if(!h)return 1;while(i)e.unshift(i),i=i.parentNode;i=h;while(i)f.unshift(i),i=i.parentNode;c=e.length,d=f.length;for(var j=0;j<c&&j<d;j++)if(e[j]!==f[j])return bg(e[j],f[j]);return j===c?bg(a,f[j],-1):bg(e[j],b,1)},[0,0].sort(j),m=!k,bc.uniqueSort=function(a){var b,c=1;k=m,a.sort(j);if(k)for(;b=a[c];c++)b===a[c-1]&&a.splice(c--,1);return a},bc.error=function(a){throw new Error("Syntax error, unrecognized expression: "+a)},i=bc.compile=function(a,b){var c,d=[],e=[],f=D[o][a];if(!f){b||(b=bh(a)),c=b.length;while(c--)f=bm(b[c]),f[o]?d.push(f):e.push(f);f=D(a,bn(e,d))}return f},r.querySelectorAll&&function(){var a,b=bp,c=/'|\\/g,d=/\=[\x20\t\r\n\f]*([^'"\]]*)[\x20\t\r\n\f]*\]/g,e=[":focus"],f=[":active",":focus"],h=s.matchesSelector||s.mozMatchesSelector||s.webkitMatchesSelector||s.oMatchesSelector||s.msMatchesSelector;X(function(a){a.innerHTML="<select><option selected=''></option></select>",a.querySelectorAll("[selected]").length||e.push("\\["+E+"*(?:checked|disabled|ismap|multiple|readonly|selected|value)"),a.querySelectorAll(":checked").length||e.push(":checked")}),X(function(a){a.innerHTML="<p test=''></p>",a.querySelectorAll("[test^='']").length&&e.push("[*^$]="+E+"*(?:\"\"|'')"),a.innerHTML="<input type='hidden'/>",a.querySelectorAll(":enabled").length||e.push(":enabled",":disabled")}),e=new RegExp(e.join("|")),bp=function(a,d,f,g,h){if(!g&&!h&&(!e||!e.test(a))){var i,j,k=!0,l=o,m=d,n=d.nodeType===9&&a;if(d.nodeType===1&&d.nodeName.toLowerCase()!=="object"){i=bh(a),(k=d.getAttribute("id"))?l=k.replace(c,"\\$&"):d.setAttribute("id",l),l="[id='"+l+"'] ",j=i.length;while(j--)i[j]=l+i[j].join("");m=R.test(a)&&d.parentNode||d,n=i.join(",")}if(n)try{return w.apply(f,x.call(m.querySelectorAll(n),0)),f}catch(p){}finally{k||d.removeAttribute("id")}}return b(a,d,f,g,h)},h&&(X(function(b){a=h.call(b,"div");try{h.call(b,"[test!='']:sizzle"),f.push("!=",J)}catch(c){}}),f=new RegExp(f.join("|")),bc.matchesSelector=function(b,c){c=c.replace(d,"='$1']");if(!g(b)&&!f.test(c)&&(!e||!e.test(c)))try{var i=h.call(b,c);if(i||a||b.document&&b.document.nodeType!==11)return i}catch(j){}return bc(c,null,null,[b]).length>0})}(),e.pseudos.nth=e.pseudos.eq,e.filters=bq.prototype=e.pseudos,e.setFilters=new bq,bc.attr=p.attr,p.find=bc,p.expr=bc.selectors,p.expr[":"]=p.expr.pseudos,p.unique=bc.uniqueSort,p.text=bc.getText,p.isXMLDoc=bc.isXML,p.contains=bc.contains}(a);var bc=/Until$/,bd=/^(?:parents|prev(?:Until|All))/,be=/^.[^:#\[\.,]*$/,bf=p.expr.match.needsContext,bg={children:!0,contents:!0,next:!0,prev:!0};p.fn.extend({find:function(a){var b,c,d,e,f,g,h=this;if(typeof a!="string")return p(a).filter(function(){for(b=0,c=h.length;b<c;b++)if(p.contains(h[b],this))return!0});g=this.pushStack("","find",a);for(b=0,c=this.length;b<c;b++){d=g.length,p.find(a,this[b],g);if(b>0)for(e=d;e<g.length;e++)for(f=0;f<d;f++)if(g[f]===g[e]){g.splice(e--,1);break}}return g},has:function(a){var b,c=p(a,this),d=c.length;return this.filter(function(){for(b=0;b<d;b++)if(p.contains(this,c[b]))return!0})},not:function(a){return this.pushStack(bj(this,a,!1),"not",a)},filter:function(a){return this.pushStack(bj(this,a,!0),"filter",a)},is:function(a){return!!a&&(typeof a=="string"?bf.test(a)?p(a,this.context).index(this[0])>=0:p.filter(a,this).length>0:this.filter(a).length>0)},closest:function(a,b){var c,d=0,e=this.length,f=[],g=bf.test(a)||typeof a!="string"?p(a,b||this.context):0;for(;d<e;d++){c=this[d];while(c&&c.ownerDocument&&c!==b&&c.nodeType!==11){if(g?g.index(c)>-1:p.find.matchesSelector(c,a)){f.push(c);break}c=c.parentNode}}return f=f.length>1?p.unique(f):f,this.pushStack(f,"closest",a)},index:function(a){return a?typeof a=="string"?p.inArray(this[0],p(a)):p.inArray(a.jquery?a[0]:a,this):this[0]&&this[0].parentNode?this.prevAll().length:-1},add:function(a,b){var c=typeof a=="string"?p(a,b):p.makeArray(a&&a.nodeType?[a]:a),d=p.merge(this.get(),c);return this.pushStack(bh(c[0])||bh(d[0])?d:p.unique(d))},addBack:function(a){return this.add(a==null?this.prevObject:this.prevObject.filter(a))}}),p.fn.andSelf=p.fn.addBack,p.each({parent:function(a){var b=a.parentNode;return b&&b.nodeType!==11?b:null},parents:function(a){return p.dir(a,"parentNode")},parentsUntil:function(a,b,c){return p.dir(a,"parentNode",c)},next:function(a){return bi(a,"nextSibling")},prev:function(a){return bi(a,"previousSibling")},nextAll:function(a){return p.dir(a,"nextSibling")},prevAll:function(a){return p.dir(a,"previousSibling")},nextUntil:function(a,b,c){return p.dir(a,"nextSibling",c)},prevUntil:function(a,b,c){return p.dir(a,"previousSibling",c)},siblings:function(a){return p.sibling((a.parentNode||{}).firstChild,a)},children:function(a){return p.sibling(a.firstChild)},contents:function(a){return p.nodeName(a,"iframe")?a.contentDocument||a.contentWindow.document:p.merge([],a.childNodes)}},function(a,b){p.fn[a]=function(c,d){var e=p.map(this,b,c);return bc.test(a)||(d=c),d&&typeof d=="string"&&(e=p.filter(d,e)),e=this.length>1&&!bg[a]?p.unique(e):e,this.length>1&&bd.test(a)&&(e=e.reverse()),this.pushStack(e,a,k.call(arguments).join(","))}}),p.extend({filter:function(a,b,c){return c&&(a=":not("+a+")"),b.length===1?p.find.matchesSelector(b[0],a)?[b[0]]:[]:p.find.matches(a,b)},dir:function(a,c,d){var e=[],f=a[c];while(f&&f.nodeType!==9&&(d===b||f.nodeType!==1||!p(f).is(d)))f.nodeType===1&&e.push(f),f=f[c];return e},sibling:function(a,b){var c=[];for(;a;a=a.nextSibling)a.nodeType===1&&a!==b&&c.push(a);return c}});var bl="abbr|article|aside|audio|bdi|canvas|data|datalist|details|figcaption|figure|footer|header|hgroup|mark|meter|nav|output|progress|section|summary|time|video",bm=/ jQuery\d+="(?:null|\d+)"/g,bn=/^\s+/,bo=/<(?!area|br|col|embed|hr|img|input|link|meta|param)(([\w:]+)[^>]*)\/>/gi,bp=/<([\w:]+)/,bq=/<tbody/i,br=/<|&#?\w+;/,bs=/<(?:script|style|link)/i,bt=/<(?:script|object|embed|option|style)/i,bu=new RegExp("<(?:"+bl+")[\\s/>]","i"),bv=/^(?:checkbox|radio)$/,bw=/checked\s*(?:[^=]|=\s*.checked.)/i,bx=/\/(java|ecma)script/i,by=/^\s*<!(?:\[CDATA\[|\-\-)|[\]\-]{2}>\s*$/g,bz={option:[1,"<select multiple='multiple'>","</select>"],legend:[1,"<fieldset>","</fieldset>"],thead:[1,"<table>","</table>"],tr:[2,"<table><tbody>","</tbody></table>"],td:[3,"<table><tbody><tr>","</tr></tbody></table>"],col:[2,"<table><tbody></tbody><colgroup>","</colgroup></table>"],area:[1,"<map>","</map>"],_default:[0,"",""]},bA=bk(e),bB=bA.appendChild(e.createElement("div"));bz.optgroup=bz.option,bz.tbody=bz.tfoot=bz.colgroup=bz.caption=bz.thead,bz.th=bz.td,p.support.htmlSerialize||(bz._default=[1,"X<div>","</div>"]),p.fn.extend({text:function(a){return p.access(this,function(a){return a===b?p.text(this):this.empty().append((this[0]&&this[0].ownerDocument||e).createTextNode(a))},null,a,arguments.length)},wrapAll:function(a){if(p.isFunction(a))return this.each(function(b){p(this).wrapAll(a.call(this,b))});if(this[0]){var b=p(a,this[0].ownerDocument).eq(0).clone(!0);this[0].parentNode&&b.insertBefore(this[0]),b.map(function(){var a=this;while(a.firstChild&&a.firstChild.nodeType===1)a=a.firstChild;return a}).append(this)}return this},wrapInner:function(a){return p.isFunction(a)?this.each(function(b){p(this).wrapInner(a.call(this,b))}):this.each(function(){var b=p(this),c=b.contents();c.length?c.wrapAll(a):b.append(a)})},wrap:function(a){var b=p.isFunction(a);return this.each(function(c){p(this).wrapAll(b?a.call(this,c):a)})},unwrap:function(){return this.parent().each(function(){p.nodeName(this,"body")||p(this).replaceWith(this.childNodes)}).end()},append:function(){return this.domManip(arguments,!0,function(a){(this.nodeType===1||this.nodeType===11)&&this.appendChild(a)})},prepend:function(){return this.domManip(arguments,!0,function(a){(this.nodeType===1||this.nodeType===11)&&this.insertBefore(a,this.firstChild)})},before:function(){if(!bh(this[0]))return this.domManip(arguments,!1,function(a){this.parentNode.insertBefore(a,this)});if(arguments.length){var a=p.clean(arguments);return this.pushStack(p.merge(a,this),"before",this.selector)}},after:function(){if(!bh(this[0]))return this.domManip(arguments,!1,function(a){this.parentNode.insertBefore(a,this.nextSibling)});if(arguments.length){var a=p.clean(arguments);return this.pushStack(p.merge(this,a),"after",this.selector)}},remove:function(a,b){var c,d=0;for(;(c=this[d])!=null;d++)if(!a||p.filter(a,[c]).length)!b&&c.nodeType===1&&(p.cleanData(c.getElementsByTagName("*")),p.cleanData([c])),c.parentNode&&c.parentNode.removeChild(c);return this},empty:function(){var a,b=0;for(;(a=this[b])!=null;b++){a.nodeType===1&&p.cleanData(a.getElementsByTagName("*"));while(a.firstChild)a.removeChild(a.firstChild)}return this},clone:function(a,b){return a=a==null?!1:a,b=b==null?a:b,this.map(function(){return p.clone(this,a,b)})},html:function(a){return p.access(this,function(a){var c=this[0]||{},d=0,e=this.length;if(a===b)return c.nodeType===1?c.innerHTML.replace(bm,""):b;if(typeof a=="string"&&!bs.test(a)&&(p.support.htmlSerialize||!bu.test(a))&&(p.support.leadingWhitespace||!bn.test(a))&&!bz[(bp.exec(a)||["",""])[1].toLowerCase()]){a=a.replace(bo,"<$1></$2>");try{for(;d<e;d++)c=this[d]||{},c.nodeType===1&&(p.cleanData(c.getElementsByTagName("*")),c.innerHTML=a);c=0}catch(f){}}c&&this.empty().append(a)},null,a,arguments.length)},replaceWith:function(a){return bh(this[0])?this.length?this.pushStack(p(p.isFunction(a)?a():a),"replaceWith",a):this:p.isFunction(a)?this.each(function(b){var c=p(this),d=c.html();c.replaceWith(a.call(this,b,d))}):(typeof a!="string"&&(a=p(a).detach()),this.each(function(){var b=this.nextSibling,c=this.parentNode;p(this).remove(),b?p(b).before(a):p(c).append(a)}))},detach:function(a){return this.remove(a,!0)},domManip:function(a,c,d){a=[].concat.apply([],a);var e,f,g,h,i=0,j=a[0],k=[],l=this.length;if(!p.support.checkClone&&l>1&&typeof j=="string"&&bw.test(j))return this.each(function(){p(this).domManip(a,c,d)});if(p.isFunction(j))return this.each(function(e){var f=p(this);a[0]=j.call(this,e,c?f.html():b),f.domManip(a,c,d)});if(this[0]){e=p.buildFragment(a,this,k),g=e.fragment,f=g.firstChild,g.childNodes.length===1&&(g=f);if(f){c=c&&p.nodeName(f,"tr");for(h=e.cacheable||l-1;i<l;i++)d.call(c&&p.nodeName(this[i],"table")?bC(this[i],"tbody"):this[i],i===h?g:p.clone(g,!0,!0))}g=f=null,k.length&&p.each(k,function(a,b){b.src?p.ajax?p.ajax({url:b.src,type:"GET",dataType:"script",async:!1,global:!1,"throws":!0}):p.error("no ajax"):p.globalEval((b.text||b.textContent||b.innerHTML||"").replace(by,"")),b.parentNode&&b.parentNode.removeChild(b)})}return this}}),p.buildFragment=function(a,c,d){var f,g,h,i=a[0];return c=c||e,c=!c.nodeType&&c[0]||c,c=c.ownerDocument||c,a.length===1&&typeof i=="string"&&i.length<512&&c===e&&i.charAt(0)==="<"&&!bt.test(i)&&(p.support.checkClone||!bw.test(i))&&(p.support.html5Clone||!bu.test(i))&&(g=!0,f=p.fragments[i],h=f!==b),f||(f=c.createDocumentFragment(),p.clean(a,c,f,d),g&&(p.fragments[i]=h&&f)),{fragment:f,cacheable:g}},p.fragments={},p.each({appendTo:"append",prependTo:"prepend",insertBefore:"before",insertAfter:"after",replaceAll:"replaceWith"},function(a,b){p.fn[a]=function(c){var d,e=0,f=[],g=p(c),h=g.length,i=this.length===1&&this[0].parentNode;if((i==null||i&&i.nodeType===11&&i.childNodes.length===1)&&h===1)return g[b](this[0]),this;for(;e<h;e++)d=(e>0?this.clone(!0):this).get(),p(g[e])[b](d),f=f.concat(d);return this.pushStack(f,a,g.selector)}}),p.extend({clone:function(a,b,c){var d,e,f,g;p.support.html5Clone||p.isXMLDoc(a)||!bu.test("<"+a.nodeName+">")?g=a.cloneNode(!0):(bB.innerHTML=a.outerHTML,bB.removeChild(g=bB.firstChild));if((!p.support.noCloneEvent||!p.support.noCloneChecked)&&(a.nodeType===1||a.nodeType===11)&&!p.isXMLDoc(a)){bE(a,g),d=bF(a),e=bF(g);for(f=0;d[f];++f)e[f]&&bE(d[f],e[f])}if(b){bD(a,g);if(c){d=bF(a),e=bF(g);for(f=0;d[f];++f)bD(d[f],e[f])}}return d=e=null,g},clean:function(a,b,c,d){var f,g,h,i,j,k,l,m,n,o,q,r,s=b===e&&bA,t=[];if(!b||typeof b.createDocumentFragment=="undefined")b=e;for(f=0;(h=a[f])!=null;f++){typeof h=="number"&&(h+="");if(!h)continue;if(typeof h=="string")if(!br.test(h))h=b.createTextNode(h);else{s=s||bk(b),l=b.createElement("div"),s.appendChild(l),h=h.replace(bo,"<$1></$2>"),i=(bp.exec(h)||["",""])[1].toLowerCase(),j=bz[i]||bz._default,k=j[0],l.innerHTML=j[1]+h+j[2];while(k--)l=l.lastChild;if(!p.support.tbody){m=bq.test(h),n=i==="table"&&!m?l.firstChild&&l.firstChild.childNodes:j[1]==="<table>"&&!m?l.childNodes:[];for(g=n.length-1;g>=0;--g)p.nodeName(n[g],"tbody")&&!n[g].childNodes.length&&n[g].parentNode.removeChild(n[g])}!p.support.leadingWhitespace&&bn.test(h)&&l.insertBefore(b.createTextNode(bn.exec(h)[0]),l.firstChild),h=l.childNodes,l.parentNode.removeChild(l)}h.nodeType?t.push(h):p.merge(t,h)}l&&(h=l=s=null);if(!p.support.appendChecked)for(f=0;(h=t[f])!=null;f++)p.nodeName(h,"input")?bG(h):typeof h.getElementsByTagName!="undefined"&&p.grep(h.getElementsByTagName("input"),bG);if(c){q=function(a){if(!a.type||bx.test(a.type))return d?d.push(a.parentNode?a.parentNode.removeChild(a):a):c.appendChild(a)};for(f=0;(h=t[f])!=null;f++)if(!p.nodeName(h,"script")||!q(h))c.appendChild(h),typeof h.getElementsByTagName!="undefined"&&(r=p.grep(p.merge([],h.getElementsByTagName("script")),q),t.splice.apply(t,[f+1,0].concat(r)),f+=r.length)}return t},cleanData:function(a,b){var c,d,e,f,g=0,h=p.expando,i=p.cache,j=p.support.deleteExpando,k=p.event.special;for(;(e=a[g])!=null;g++)if(b||p.acceptData(e)){d=e[h],c=d&&i[d];if(c){if(c.events)for(f in c.events)k[f]?p.event.remove(e,f):p.removeEvent(e,f,c.handle);i[d]&&(delete i[d],j?delete e[h]:e.removeAttribute?e.removeAttribute(h):e[h]=null,p.deletedIds.push(d))}}}}),function(){var a,b;p.uaMatch=function(a){a=a.toLowerCase();var b=/(chrome)[ \/]([\w.]+)/.exec(a)||/(webkit)[ \/]([\w.]+)/.exec(a)||/(opera)(?:.*version|)[ \/]([\w.]+)/.exec(a)||/(msie) ([\w.]+)/.exec(a)||a.indexOf("compatible")<0&&/(mozilla)(?:.*? rv:([\w.]+)|)/.exec(a)||[];return{browser:b[1]||"",version:b[2]||"0"}},a=p.uaMatch(g.userAgent),b={},a.browser&&(b[a.browser]=!0,b.version=a.version),b.chrome?b.webkit=!0:b.webkit&&(b.safari=!0),p.browser=b,p.sub=function(){function a(b,c){return new a.fn.init(b,c)}p.extend(!0,a,this),a.superclass=this,a.fn=a.prototype=this(),a.fn.constructor=a,a.sub=this.sub,a.fn.init=function c(c,d){return d&&d instanceof p&&!(d instanceof a)&&(d=a(d)),p.fn.init.call(this,c,d,b)},a.fn.init.prototype=a.fn;var b=a(e);return a}}();var bH,bI,bJ,bK=/alpha\([^)]*\)/i,bL=/opacity=([^)]*)/,bM=/^(top|right|bottom|left)$/,bN=/^(none|table(?!-c[ea]).+)/,bO=/^margin/,bP=new RegExp("^("+q+")(.*)$","i"),bQ=new RegExp("^("+q+")(?!px)[a-z%]+$","i"),bR=new RegExp("^([-+])=("+q+")","i"),bS={},bT={position:"absolute",visibility:"hidden",display:"block"},bU={letterSpacing:0,fontWeight:400},bV=["Top","Right","Bottom","Left"],bW=["Webkit","O","Moz","ms"],bX=p.fn.toggle;p.fn.extend({css:function(a,c){return p.access(this,function(a,c,d){return d!==b?p.style(a,c,d):p.css(a,c)},a,c,arguments.length>1)},show:function(){return b$(this,!0)},hide:function(){return b$(this)},toggle:function(a,b){var c=typeof a=="boolean";return p.isFunction(a)&&p.isFunction(b)?bX.apply(this,arguments):this.each(function(){(c?a:bZ(this))?p(this).show():p(this).hide()})}}),p.extend({cssHooks:{opacity:{get:function(a,b){if(b){var c=bH(a,"opacity");return c===""?"1":c}}}},cssNumber:{fillOpacity:!0,fontWeight:!0,lineHeight:!0,opacity:!0,orphans:!0,widows:!0,zIndex:!0,zoom:!0},cssProps:{"float":p.support.cssFloat?"cssFloat":"styleFloat"},style:function(a,c,d,e){if(!a||a.nodeType===3||a.nodeType===8||!a.style)return;var f,g,h,i=p.camelCase(c),j=a.style;c=p.cssProps[i]||(p.cssProps[i]=bY(j,i)),h=p.cssHooks[c]||p.cssHooks[i];if(d===b)return h&&"get"in h&&(f=h.get(a,!1,e))!==b?f:j[c];g=typeof d,g==="string"&&(f=bR.exec(d))&&(d=(f[1]+1)*f[2]+parseFloat(p.css(a,c)),g="number");if(d==null||g==="number"&&isNaN(d))return;g==="number"&&!p.cssNumber[i]&&(d+="px");if(!h||!("set"in h)||(d=h.set(a,d,e))!==b)try{j[c]=d}catch(k){}},css:function(a,c,d,e){var f,g,h,i=p.camelCase(c);return c=p.cssProps[i]||(p.cssProps[i]=bY(a.style,i)),h=p.cssHooks[c]||p.cssHooks[i],h&&"get"in h&&(f=h.get(a,!0,e)),f===b&&(f=bH(a,c)),f==="normal"&&c in bU&&(f=bU[c]),d||e!==b?(g=parseFloat(f),d||p.isNumeric(g)?g||0:f):f},swap:function(a,b,c){var d,e,f={};for(e in b)f[e]=a.style[e],a.style[e]=b[e];d=c.call(a);for(e in b)a.style[e]=f[e];return d}}),a.getComputedStyle?bH=function(b,c){var d,e,f,g,h=a.getComputedStyle(b,null),i=b.style;return h&&(d=h[c],d===""&&!p.contains(b.ownerDocument,b)&&(d=p.style(b,c)),bQ.test(d)&&bO.test(c)&&(e=i.width,f=i.minWidth,g=i.maxWidth,i.minWidth=i.maxWidth=i.width=d,d=h.width,i.width=e,i.minWidth=f,i.maxWidth=g)),d}:e.documentElement.currentStyle&&(bH=function(a,b){var c,d,e=a.currentStyle&&a.currentStyle[b],f=a.style;return e==null&&f&&f[b]&&(e=f[b]),bQ.test(e)&&!bM.test(b)&&(c=f.left,d=a.runtimeStyle&&a.runtimeStyle.left,d&&(a.runtimeStyle.left=a.currentStyle.left),f.left=b==="fontSize"?"1em":e,e=f.pixelLeft+"px",f.left=c,d&&(a.runtimeStyle.left=d)),e===""?"auto":e}),p.each(["height","width"],function(a,b){p.cssHooks[b]={get:function(a,c,d){if(c)return a.offsetWidth===0&&bN.test(bH(a,"display"))?p.swap(a,bT,function(){return cb(a,b,d)}):cb(a,b,d)},set:function(a,c,d){return b_(a,c,d?ca(a,b,d,p.support.boxSizing&&p.css(a,"boxSizing")==="border-box"):0)}}}),p.support.opacity||(p.cssHooks.opacity={get:function(a,b){return bL.test((b&&a.currentStyle?a.currentStyle.filter:a.style.filter)||"")?.01*parseFloat(RegExp.$1)+"":b?"1":""},set:function(a,b){var c=a.style,d=a.currentStyle,e=p.isNumeric(b)?"alpha(opacity="+b*100+")":"",f=d&&d.filter||c.filter||"";c.zoom=1;if(b>=1&&p.trim(f.replace(bK,""))===""&&c.removeAttribute){c.removeAttribute("filter");if(d&&!d.filter)return}c.filter=bK.test(f)?f.replace(bK,e):f+" "+e}}),p(function(){p.support.reliableMarginRight||(p.cssHooks.marginRight={get:function(a,b){return p.swap(a,{display:"inline-block"},function(){if(b)return bH(a,"marginRight")})}}),!p.support.pixelPosition&&p.fn.position&&p.each(["top","left"],function(a,b){p.cssHooks[b]={get:function(a,c){if(c){var d=bH(a,b);return bQ.test(d)?p(a).position()[b]+"px":d}}}})}),p.expr&&p.expr.filters&&(p.expr.filters.hidden=function(a){return a.offsetWidth===0&&a.offsetHeight===0||!p.support.reliableHiddenOffsets&&(a.style&&a.style.display||bH(a,"display"))==="none"},p.expr.filters.visible=function(a){return!p.expr.filters.hidden(a)}),p.each({margin:"",padding:"",border:"Width"},function(a,b){p.cssHooks[a+b]={expand:function(c){var d,e=typeof c=="string"?c.split(" "):[c],f={};for(d=0;d<4;d++)f[a+bV[d]+b]=e[d]||e[d-2]||e[0];return f}},bO.test(a)||(p.cssHooks[a+b].set=b_)});var cd=/%20/g,ce=/\[\]$/,cf=/\r?\n/g,cg=/^(?:color|date|datetime|datetime-local|email|hidden|month|number|password|range|search|tel|text|time|url|week)$/i,ch=/^(?:select|textarea)/i;p.fn.extend({serialize:function(){return p.param(this.serializeArray())},serializeArray:function(){return this.map(function(){return this.elements?p.makeArray(this.elements):this}).filter(function(){return this.name&&!this.disabled&&(this.checked||ch.test(this.nodeName)||cg.test(this.type))}).map(function(a,b){var c=p(this).val();return c==null?null:p.isArray(c)?p.map(c,function(a,c){return{name:b.name,value:a.replace(cf,"\r\n")}}):{name:b.name,value:c.replace(cf,"\r\n")}}).get()}}),p.param=function(a,c){var d,e=[],f=function(a,b){b=p.isFunction(b)?b():b==null?"":b,e[e.length]=encodeURIComponent(a)+"="+encodeURIComponent(b)};c===b&&(c=p.ajaxSettings&&p.ajaxSettings.traditional);if(p.isArray(a)||a.jquery&&!p.isPlainObject(a))p.each(a,function(){f(this.name,this.value)});else for(d in a)ci(d,a[d],c,f);return e.join("&").replace(cd,"+")};var cj,ck,cl=/#.*$/,cm=/^(.*?):[ \t]*([^\r\n]*)\r?$/mg,cn=/^(?:about|app|app\-storage|.+\-extension|file|res|widget):$/,co=/^(?:GET|HEAD)$/,cp=/^\/\//,cq=/\?/,cr=/<script\b[^<]*(?:(?!<\/script>)<[^<]*)*<\/script>/gi,cs=/([?&])_=[^&]*/,ct=/^([\w\+\.\-]+:)(?:\/\/([^\/?#:]*)(?::(\d+)|)|)/,cu=p.fn.load,cv={},cw={},cx=["*/"]+["*"];try{ck=f.href}catch(cy){ck=e.createElement("a"),ck.href="",ck=ck.href}cj=ct.exec(ck.toLowerCase())||[],p.fn.load=function(a,c,d){if(typeof a!="string"&&cu)return cu.apply(this,arguments);if(!this.length)return this;var e,f,g,h=this,i=a.indexOf(" ");return i>=0&&(e=a.slice(i,a.length),a=a.slice(0,i)),p.isFunction(c)?(d=c,c=b):c&&typeof c=="object"&&(f="POST"),p.ajax({url:a,type:f,dataType:"html",data:c,complete:function(a,b){d&&h.each(d,g||[a.responseText,b,a])}}).done(function(a){g=arguments,h.html(e?p("<div>").append(a.replace(cr,"")).find(e):a)}),this},p.each("ajaxStart ajaxStop ajaxComplete ajaxError ajaxSuccess ajaxSend".split(" "),function(a,b){p.fn[b]=function(a){return this.on(b,a)}}),p.each(["get","post"],function(a,c){p[c]=function(a,d,e,f){return p.isFunction(d)&&(f=f||e,e=d,d=b),p.ajax({type:c,url:a,data:d,success:e,dataType:f})}}),p.extend({getScript:function(a,c){return p.get(a,b,c,"script")},getJSON:function(a,b,c){return p.get(a,b,c,"json")},ajaxSetup:function(a,b){return b?cB(a,p.ajaxSettings):(b=a,a=p.ajaxSettings),cB(a,b),a},ajaxSettings:{url:ck,isLocal:cn.test(cj[1]),global:!0,type:"GET",contentType:"application/x-www-form-urlencoded; charset=UTF-8",processData:!0,async:!0,accepts:{xml:"application/xml, text/xml",html:"text/html",text:"text/plain",json:"application/json, text/javascript","*":cx},contents:{xml:/xml/,html:/html/,json:/json/},responseFields:{xml:"responseXML",text:"responseText"},converters:{"* text":a.String,"text html":!0,"text json":p.parseJSON,"text xml":p.parseXML},flatOptions:{context:!0,url:!0}},ajaxPrefilter:cz(cv),ajaxTransport:cz(cw),ajax:function(a,c){function y(a,c,f,i){var k,s,t,u,w,y=c;if(v===2)return;v=2,h&&clearTimeout(h),g=b,e=i||"",x.readyState=a>0?4:0,f&&(u=cC(l,x,f));if(a>=200&&a<300||a===304)l.ifModified&&(w=x.getResponseHeader("Last-Modified"),w&&(p.lastModified[d]=w),w=x.getResponseHeader("Etag"),w&&(p.etag[d]=w)),a===304?(y="notmodified",k=!0):(k=cD(l,u),y=k.state,s=k.data,t=k.error,k=!t);else{t=y;if(!y||a)y="error",a<0&&(a=0)}x.status=a,x.statusText=(c||y)+"",k?o.resolveWith(m,[s,y,x]):o.rejectWith(m,[x,y,t]),x.statusCode(r),r=b,j&&n.trigger("ajax"+(k?"Success":"Error"),[x,l,k?s:t]),q.fireWith(m,[x,y]),j&&(n.trigger("ajaxComplete",[x,l]),--p.active||p.event.trigger("ajaxStop"))}typeof a=="object"&&(c=a,a=b),c=c||{};var d,e,f,g,h,i,j,k,l=p.ajaxSetup({},c),m=l.context||l,n=m!==l&&(m.nodeType||m instanceof p)?p(m):p.event,o=p.Deferred(),q=p.Callbacks("once memory"),r=l.statusCode||{},t={},u={},v=0,w="canceled",x={readyState:0,setRequestHeader:function(a,b){if(!v){var c=a.toLowerCase();a=u[c]=u[c]||a,t[a]=b}return this},getAllResponseHeaders:function(){return v===2?e:null},getResponseHeader:function(a){var c;if(v===2){if(!f){f={};while(c=cm.exec(e))f[c[1].toLowerCase()]=c[2]}c=f[a.toLowerCase()]}return c===b?null:c},overrideMimeType:function(a){return v||(l.mimeType=a),this},abort:function(a){return a=a||w,g&&g.abort(a),y(0,a),this}};o.promise(x),x.success=x.done,x.error=x.fail,x.complete=q.add,x.statusCode=function(a){if(a){var b;if(v<2)for(b in a)r[b]=[r[b],a[b]];else b=a[x.status],x.always(b)}return this},l.url=((a||l.url)+"").replace(cl,"").replace(cp,cj[1]+"//"),l.dataTypes=p.trim(l.dataType||"*").toLowerCase().split(s),l.crossDomain==null&&(i=ct.exec(l.url.toLowerCase())||!1,l.crossDomain=i&&i.join(":")+(i[3]?"":i[1]==="http:"?80:443)!==cj.join(":")+(cj[3]?"":cj[1]==="http:"?80:443)),l.data&&l.processData&&typeof l.data!="string"&&(l.data=p.param(l.data,l.traditional)),cA(cv,l,c,x);if(v===2)return x;j=l.global,l.type=l.type.toUpperCase(),l.hasContent=!co.test(l.type),j&&p.active++===0&&p.event.trigger("ajaxStart");if(!l.hasContent){l.data&&(l.url+=(cq.test(l.url)?"&":"?")+l.data,delete l.data),d=l.url;if(l.cache===!1){var z=p.now(),A=l.url.replace(cs,"$1_="+z);l.url=A+(A===l.url?(cq.test(l.url)?"&":"?")+"_="+z:"")}}(l.data&&l.hasContent&&l.contentType!==!1||c.contentType)&&x.setRequestHeader("Content-Type",l.contentType),l.ifModified&&(d=d||l.url,p.lastModified[d]&&x.setRequestHeader("If-Modified-Since",p.lastModified[d]),p.etag[d]&&x.setRequestHeader("If-None-Match",p.etag[d])),x.setRequestHeader("Accept",l.dataTypes[0]&&l.accepts[l.dataTypes[0]]?l.accepts[l.dataTypes[0]]+(l.dataTypes[0]!=="*"?", "+cx+"; q=0.01":""):l.accepts["*"]);for(k in l.headers)x.setRequestHeader(k,l.headers[k]);if(!l.beforeSend||l.beforeSend.call(m,x,l)!==!1&&v!==2){w="abort";for(k in{success:1,error:1,complete:1})x[k](l[k]);g=cA(cw,l,c,x);if(!g)y(-1,"No Transport");else{x.readyState=1,j&&n.trigger("ajaxSend",[x,l]),l.async&&l.timeout>0&&(h=setTimeout(function(){x.abort("timeout")},l.timeout));try{v=1,g.send(t,y)}catch(B){if(v<2)y(-1,B);else throw B}}return x}return x.abort()},active:0,lastModified:{},etag:{}});var cE=[],cF=/\?/,cG=/(=)\?(?=&|$)|\?\?/,cH=p.now();p.ajaxSetup({jsonp:"callback",jsonpCallback:function(){var a=cE.pop()||p.expando+"_"+cH++;return this[a]=!0,a}}),p.ajaxPrefilter("json jsonp",function(c,d,e){var f,g,h,i=c.data,j=c.url,k=c.jsonp!==!1,l=k&&cG.test(j),m=k&&!l&&typeof i=="string"&&!(c.contentType||"").indexOf("application/x-www-form-urlencoded")&&cG.test(i);if(c.dataTypes[0]==="jsonp"||l||m)return f=c.jsonpCallback=p.isFunction(c.jsonpCallback)?c.jsonpCallback():c.jsonpCallback,g=a[f],l?c.url=j.replace(cG,"$1"+f):m?c.data=i.replace(cG,"$1"+f):k&&(c.url+=(cF.test(j)?"&":"?")+c.jsonp+"="+f),c.converters["script json"]=function(){return h||p.error(f+" was not called"),h[0]},c.dataTypes[0]="json",a[f]=function(){h=arguments},e.always(function(){a[f]=g,c[f]&&(c.jsonpCallback=d.jsonpCallback,cE.push(f)),h&&p.isFunction(g)&&g(h[0]),h=g=b}),"script"}),p.ajaxSetup({accepts:{script:"text/javascript, application/javascript, application/ecmascript, application/x-ecmascript"},contents:{script:/javascript|ecmascript/},converters:{"text script":function(a){return p.globalEval(a),a}}}),p.ajaxPrefilter("script",function(a){a.cache===b&&(a.cache=!1),a.crossDomain&&(a.type="GET",a.global=!1)}),p.ajaxTransport("script",function(a){if(a.crossDomain){var c,d=e.head||e.getElementsByTagName("head")[0]||e.documentElement;return{send:function(f,g){c=e.createElement("script"),c.async="async",a.scriptCharset&&(c.charset=a.scriptCharset),c.src=a.url,c.onload=c.onreadystatechange=function(a,e){if(e||!c.readyState||/loaded|complete/.test(c.readyState))c.onload=c.onreadystatechange=null,d&&c.parentNode&&d.removeChild(c),c=b,e||g(200,"success")},d.insertBefore(c,d.firstChild)},abort:function(){c&&c.onload(0,1)}}}});var cI,cJ=a.ActiveXObject?function(){for(var a in cI)cI[a](0,1)}:!1,cK=0;p.ajaxSettings.xhr=a.ActiveXObject?function(){return!this.isLocal&&cL()||cM()}:cL,function(a){p.extend(p.support,{ajax:!!a,cors:!!a&&"withCredentials"in a})}(p.ajaxSettings.xhr()),p.support.ajax&&p.ajaxTransport(function(c){if(!c.crossDomain||p.support.cors){var d;return{send:function(e,f){var g,h,i=c.xhr();c.username?i.open(c.type,c.url,c.async,c.username,c.password):i.open(c.type,c.url,c.async);if(c.xhrFields)for(h in c.xhrFields)i[h]=c.xhrFields[h];c.mimeType&&i.overrideMimeType&&i.overrideMimeType(c.mimeType),!c.crossDomain&&!e["X-Requested-With"]&&(e["X-Requested-With"]="XMLHttpRequest");try{for(h in e)i.setRequestHeader(h,e[h])}catch(j){}i.send(c.hasContent&&c.data||null),d=function(a,e){var h,j,k,l,m;try{if(d&&(e||i.readyState===4)){d=b,g&&(i.onreadystatechange=p.noop,cJ&&delete cI[g]);if(e)i.readyState!==4&&i.abort();else{h=i.status,k=i.getAllResponseHeaders(),l={},m=i.responseXML,m&&m.documentElement&&(l.xml=m);try{l.text=i.responseText}catch(a){}try{j=i.statusText}catch(n){j=""}!h&&c.isLocal&&!c.crossDomain?h=l.text?200:404:h===1223&&(h=204)}}}catch(o){e||f(-1,o)}l&&f(h,j,l,k)},c.async?i.readyState===4?setTimeout(d,0):(g=++cK,cJ&&(cI||(cI={},p(a).unload(cJ)),cI[g]=d),i.onreadystatechange=d):d()},abort:function(){d&&d(0,1)}}}});var cN,cO,cP=/^(?:toggle|show|hide)$/,cQ=new RegExp("^(?:([-+])=|)("+q+")([a-z%]*)$","i"),cR=/queueHooks$/,cS=[cY],cT={"*":[function(a,b){var c,d,e=this.createTween(a,b),f=cQ.exec(b),g=e.cur(),h=+g||0,i=1,j=20;if(f){c=+f[2],d=f[3]||(p.cssNumber[a]?"":"px");if(d!=="px"&&h){h=p.css(e.elem,a,!0)||c||1;do i=i||".5",h=h/i,p.style(e.elem,a,h+d);while(i!==(i=e.cur()/g)&&i!==1&&--j)}e.unit=d,e.start=h,e.end=f[1]?h+(f[1]+1)*c:c}return e}]};p.Animation=p.extend(cW,{tweener:function(a,b){p.isFunction(a)?(b=a,a=["*"]):a=a.split(" ");var c,d=0,e=a.length;for(;d<e;d++)c=a[d],cT[c]=cT[c]||[],cT[c].unshift(b)},prefilter:function(a,b){b?cS.unshift(a):cS.push(a)}}),p.Tween=cZ,cZ.prototype={constructor:cZ,init:function(a,b,c,d,e,f){this.elem=a,this.prop=c,this.easing=e||"swing",this.options=b,this.start=this.now=this.cur(),this.end=d,this.unit=f||(p.cssNumber[c]?"":"px")},cur:function(){var a=cZ.propHooks[this.prop];return a&&a.get?a.get(this):cZ.propHooks._default.get(this)},run:function(a){var b,c=cZ.propHooks[this.prop];return this.options.duration?this.pos=b=p.easing[this.easing](a,this.options.duration*a,0,1,this.options.duration):this.pos=b=a,this.now=(this.end-this.start)*b+this.start,this.options.step&&this.options.step.call(this.elem,this.now,this),c&&c.set?c.set(this):cZ.propHooks._default.set(this),this}},cZ.prototype.init.prototype=cZ.prototype,cZ.propHooks={_default:{get:function(a){var b;return a.elem[a.prop]==null||!!a.elem.style&&a.elem.style[a.prop]!=null?(b=p.css(a.elem,a.prop,!1,""),!b||b==="auto"?0:b):a.elem[a.prop]},set:function(a){p.fx.step[a.prop]?p.fx.step[a.prop](a):a.elem.style&&(a.elem.style[p.cssProps[a.prop]]!=null||p.cssHooks[a.prop])?p.style(a.elem,a.prop,a.now+a.unit):a.elem[a.prop]=a.now}}},cZ.propHooks.scrollTop=cZ.propHooks.scrollLeft={set:function(a){a.elem.nodeType&&a.elem.parentNode&&(a.elem[a.prop]=a.now)}},p.each(["toggle","show","hide"],function(a,b){var c=p.fn[b];p.fn[b]=function(d,e,f){return d==null||typeof d=="boolean"||!a&&p.isFunction(d)&&p.isFunction(e)?c.apply(this,arguments):this.animate(c$(b,!0),d,e,f)}}),p.fn.extend({fadeTo:function(a,b,c,d){return this.filter(bZ).css("opacity",0).show().end().animate({opacity:b},a,c,d)},animate:function(a,b,c,d){var e=p.isEmptyObject(a),f=p.speed(b,c,d),g=function(){var b=cW(this,p.extend({},a),f);e&&b.stop(!0)};return e||f.queue===!1?this.each(g):this.queue(f.queue,g)},stop:function(a,c,d){var e=function(a){var b=a.stop;delete a.stop,b(d)};return typeof a!="string"&&(d=c,c=a,a=b),c&&a!==!1&&this.queue(a||"fx",[]),this.each(function(){var b=!0,c=a!=null&&a+"queueHooks",f=p.timers,g=p._data(this);if(c)g[c]&&g[c].stop&&e(g[c]);else for(c in g)g[c]&&g[c].stop&&cR.test(c)&&e(g[c]);for(c=f.length;c--;)f[c].elem===this&&(a==null||f[c].queue===a)&&(f[c].anim.stop(d),b=!1,f.splice(c,1));(b||!d)&&p.dequeue(this,a)})}}),p.each({slideDown:c$("show"),slideUp:c$("hide"),slideToggle:c$("toggle"),fadeIn:{opacity:"show"},fadeOut:{opacity:"hide"},fadeToggle:{opacity:"toggle"}},function(a,b){p.fn[a]=function(a,c,d){return this.animate(b,a,c,d)}}),p.speed=function(a,b,c){var d=a&&typeof a=="object"?p.extend({},a):{complete:c||!c&&b||p.isFunction(a)&&a,duration:a,easing:c&&b||b&&!p.isFunction(b)&&b};d.duration=p.fx.off?0:typeof d.duration=="number"?d.duration:d.duration in p.fx.speeds?p.fx.speeds[d.duration]:p.fx.speeds._default;if(d.queue==null||d.queue===!0)d.queue="fx";return d.old=d.complete,d.complete=function(){p.isFunction(d.old)&&d.old.call(this),d.queue&&p.dequeue(this,d.queue)},d},p.easing={linear:function(a){return a},swing:function(a){return.5-Math.cos(a*Math.PI)/2}},p.timers=[],p.fx=cZ.prototype.init,p.fx.tick=function(){var a,b=p.timers,c=0;for(;c<b.length;c++)a=b[c],!a()&&b[c]===a&&b.splice(c--,1);b.length||p.fx.stop()},p.fx.timer=function(a){a()&&p.timers.push(a)&&!cO&&(cO=setInterval(p.fx.tick,p.fx.interval))},p.fx.interval=13,p.fx.stop=function(){clearInterval(cO),cO=null},p.fx.speeds={slow:600,fast:200,_default:400},p.fx.step={},p.expr&&p.expr.filters&&(p.expr.filters.animated=function(a){return p.grep(p.timers,function(b){return a===b.elem}).length});var c_=/^(?:body|html)$/i;p.fn.offset=function(a){if(arguments.length)return a===b?this:this.each(function(b){p.offset.setOffset(this,a,b)});var c,d,e,f,g,h,i,j={top:0,left:0},k=this[0],l=k&&k.ownerDocument;if(!l)return;return(d=l.body)===k?p.offset.bodyOffset(k):(c=l.documentElement,p.contains(c,k)?(typeof k.getBoundingClientRect!="undefined"&&(j=k.getBoundingClientRect()),e=da(l),f=c.clientTop||d.clientTop||0,g=c.clientLeft||d.clientLeft||0,h=e.pageYOffset||c.scrollTop,i=e.pageXOffset||c.scrollLeft,{top:j.top+h-f,left:j.left+i-g}):j)},p.offset={bodyOffset:function(a){var b=a.offsetTop,c=a.offsetLeft;return p.support.doesNotIncludeMarginInBodyOffset&&(b+=parseFloat(p.css(a,"marginTop"))||0,c+=parseFloat(p.css(a,"marginLeft"))||0),{top:b,left:c}},setOffset:function(a,b,c){var d=p.css(a,"position");d==="static"&&(a.style.position="relative");var e=p(a),f=e.offset(),g=p.css(a,"top"),h=p.css(a,"left"),i=(d==="absolute"||d==="fixed")&&p.inArray("auto",[g,h])>-1,j={},k={},l,m;i?(k=e.position(),l=k.top,m=k.left):(l=parseFloat(g)||0,m=parseFloat(h)||0),p.isFunction(b)&&(b=b.call(a,c,f)),b.top!=null&&(j.top=b.top-f.top+l),b.left!=null&&(j.left=b.left-f.left+m),"using"in b?b.using.call(a,j):e.css(j)}},p.fn.extend({position:function(){if(!this[0])return;var a=this[0],b=this.offsetParent(),c=this.offset(),d=c_.test(b[0].nodeName)?{top:0,left:0}:b.offset();return c.top-=parseFloat(p.css(a,"marginTop"))||0,c.left-=parseFloat(p.css(a,"marginLeft"))||0,d.top+=parseFloat(p.css(b[0],"borderTopWidth"))||0,d.left+=parseFloat(p.css(b[0],"borderLeftWidth"))||0,{top:c.top-d.top,left:c.left-d.left}},offsetParent:function(){return this.map(function(){var a=this.offsetParent||e.body;while(a&&!c_.test(a.nodeName)&&p.css(a,"position")==="static")a=a.offsetParent;return a||e.body})}}),p.each({scrollLeft:"pageXOffset",scrollTop:"pageYOffset"},function(a,c){var d=/Y/.test(c);p.fn[a]=function(e){return p.access(this,function(a,e,f){var g=da(a);if(f===b)return g?c in g?g[c]:g.document.documentElement[e]:a[e];g?g.scrollTo(d?p(g).scrollLeft():f,d?f:p(g).scrollTop()):a[e]=f},a,e,arguments.length,null)}}),p.each({Height:"height",Width:"width"},function(a,c){p.each({padding:"inner"+a,content:c,"":"outer"+a},function(d,e){p.fn[e]=function(e,f){var g=arguments.length&&(d||typeof e!="boolean"),h=d||(e===!0||f===!0?"margin":"border");return p.access(this,function(c,d,e){var f;return p.isWindow(c)?c.document.documentElement["client"+a]:c.nodeType===9?(f=c.documentElement,Math.max(c.body["scroll"+a],f["scroll"+a],c.body["offset"+a],f["offset"+a],f["client"+a])):e===b?p.css(c,d,e,h):p.style(c,d,e,h)},c,g?e:b,g,null)}})}),a.jQuery=a.$=p,typeof define=="function"&&define.amd&&define.amd.jQuery&&define("jquery",[],function(){return p})})(window);

/* javascript JSON object to serialize (stringify) a javascript object
 * https://github.com/douglascrockford/JSON-js/blame/master/json2.js
 */
var JSON;if(!JSON){JSON={}}(function(){function f(n){return n<10?"0"+n:n}if(typeof Date.prototype.toJSON!=="function"){Date.prototype.toJSON=function(key){return isFinite(this.valueOf())?this.getUTCFullYear()+"-"+f(this.getUTCMonth()+1)+"-"+f(this.getUTCDate())+"T"+f(this.getUTCHours())+":"+f(this.getUTCMinutes())+":"+f(this.getUTCSeconds())+"Z":null};String.prototype.toJSON=Number.prototype.toJSON=Boolean.prototype.toJSON=function(key){return this.valueOf()}}var cx=/[\u0000\u00ad\u0600-\u0604\u070f\u17b4\u17b5\u200c-\u200f\u2028-\u202f\u2060-\u206f\ufeff\ufff0-\uffff]/g,escapable=/[\\\"\x00-\x1f\x7f-\x9f\u00ad\u0600-\u0604\u070f\u17b4\u17b5\u200c-\u200f\u2028-\u202f\u2060-\u206f\ufeff\ufff0-\uffff]/g,gap,indent,meta={"\b":"\\b","\t":"\\t","\n":"\\n","\f":"\\f","\r":"\\r",'"':'\\"',"\\":"\\\\"},rep;function quote(string){escapable.lastIndex=0;return escapable.test(string)?'"'+string.replace(escapable,function(a){var c=meta[a];return typeof c==="string"?c:"\\u"+("0000"+a.charCodeAt(0).toString(16)).slice(-4)})+'"':'"'+string+'"'}function str(key,holder){var i,k,v,length,mind=gap,partial,value=holder[key];if(value&&typeof value==="object"&&typeof value.toJSON==="function"){value=value.toJSON(key)}if(typeof rep==="function"){value=rep.call(holder,key,value)}switch(typeof value){case"string":return quote(value);case"number":return isFinite(value)?String(value):"null";case"boolean":case"null":return String(value);case"object":if(!value){return"null"}gap+=indent;partial=[];if(Object.prototype.toString.apply(value)==="[object Array]"){length=value.length;for(i=0;i<length;i+=1){partial[i]=str(i,value)||"null"}v=partial.length===0?"[]":gap?"[\n"+gap+partial.join(",\n"+gap)+"\n"+mind+"]":"["+partial.join(",")+"]";gap=mind;return v}if(rep&&typeof rep==="object"){length=rep.length;for(i=0;i<length;i+=1){if(typeof rep[i]==="string"){k=rep[i];v=str(k,value);if(v){partial.push(quote(k)+(gap?": ":":")+v)}}}}else{for(k in value){if(Object.prototype.hasOwnProperty.call(value,k)){v=str(k,value);if(v){partial.push(quote(k)+(gap?": ":":")+v)}}}}v=partial.length===0?"{}":gap?"{\n"+gap+partial.join(",\n"+gap)+"\n"+mind+"}":"{"+partial.join(",")+"}";gap=mind;return v}}if(typeof JSON.stringify!=="function"){JSON.stringify=function(value,replacer,space){var i;gap="";indent="";if(typeof space==="number"){for(i=0;i<space;i+=1){indent+=" "}}else{if(typeof space==="string"){indent=space}}rep=replacer;if(replacer&&typeof replacer!=="function"&&(typeof replacer!=="object"||typeof replacer.length!=="number")){throw new Error("JSON.stringify")}return str("",{"":value})}}if(typeof JSON.parse!=="function"){JSON.parse=function(text,reviver){var j;function walk(holder,key){var k,v,value=holder[key];if(value&&typeof value==="object"){for(k in value){if(Object.prototype.hasOwnProperty.call(value,k)){v=walk(value,k);if(v!==undefined){value[k]=v}else{delete value[k]}}}}return reviver.call(holder,key,value)}text=String(text);cx.lastIndex=0;if(cx.test(text)){text=text.replace(cx,function(a){return"\\u"+("0000"+a.charCodeAt(0).toString(16)).slice(-4)})}if(/^[\],:{}\s]*$/.test(text.replace(/\\(?:["\\\/bfnrt]|u[0-9a-fA-F]{4})/g,"@").replace(/"[^"\\\n\r]*"|true|false|null|-?\d+(?:\.\d*)?(?:[eE][+\-]?\d+)?/g,"]").replace(/(?:^|:|,)(?:\s*\[)+/g,""))){j=eval("("+text+")");return typeof reviver==="function"?walk({"":j},""):j}throw new SyntaxError("JSON.parse")}}}());

/*
 * jQuery dateFormat Plugin 1.0
 * https://github.com/phstc/jquery-dateFormat
 */
(function(n){var u=["Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"],i=["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"],r=["January","February","March","April","May","June","July","August","September","October","November","December"],t=[];t.Jan="01",t.Feb="02",t.Mar="03",t.Apr="04",t.May="05",t.Jun="06",t.Jul="07",t.Aug="08",t.Sep="09",t.Oct="10",t.Nov="11",t.Dec="12",n.format=function(){function o(n){return u[parseInt(n,10)]||n}function s(n){var t=parseInt(n,10)-1;return i[t]||n}function h(n){var t=parseInt(n,10)-1;return r[t]||n}var e=function(n){return t[n]||n},n=function(n){var i=n,u="",r,t;return i.indexOf(".")!==-1&&(r=i.split("."),i=r[0],u=r[1]),t=i.split(":"),t.length===3?(hour=t[0],minute=t[1],second=t[2],{time:i,hour:hour,minute:minute,second:second,millis:u}):{time:"",hour:"",minute:"",second:"",millis:""}},f=function(n,t){for(var r=t-String(n).length,i=0;i<r;i++)n="0"+n;return n};return{date:function(t,i){var v,a,y,g,d;try{var b=null,w=null,p=null,r=null,k=null,l=null;if(typeof t=="number")return this.date(new Date(t),i);if(typeof t.getFullYear=="function")w=t.getFullYear(),p=t.getMonth()+1,r=t.getDate(),k=t.getDay(),l=n(t.toTimeString());else if(t.search(/\d{4}-\d{2}-\d{2}T\d{2}:\d{2}:\d{2}\.?\d{0,3}[Z\-+]?(\d{2}:?\d{2})?/)!=-1)v=t.split(/[T\+-]/),w=v[0],p=v[1],r=v[2],l=n(v[3].split(".")[0]),b=new Date(w,p-1,r),k=b.getDay();else{v=t.split(" ");switch(v.length){case 6:w=v[5],p=e(v[1]),r=v[2],l=n(v[3]),b=new Date(w,p-1,r),k=b.getDay();break;case 2:a=v[0].split("-"),w=a[0],p=a[1],r=a[2],l=n(v[1]),b=new Date(w,p-1,r),k=b.getDay();break;case 7:case 9:case 10:w=v[3],p=e(v[1]),r=v[2],l=n(v[4]),b=new Date(w,p-1,r),k=b.getDay();break;case 1:a=v[0].split(""),w=a[0]+a[1]+a[2]+a[3],p=a[5]+a[6],r=a[8]+a[9],l=n(a[13]+a[14]+a[15]+a[16]+a[17]+a[18]+a[19]+a[20]),b=new Date(w,p-1,r),k=b.getDay();break;default:return t}}var u="",c="",nt="";for(y=0;y<i.length;y++){g=i.charAt(y),u+=g,nt="";switch(u){case"ddd":c+=o(k),u="";break;case"dd":if(i.charAt(y+1)=="d")break;c+=f(r,2),u="";break;case"d":if(i.charAt(y+1)=="d")break;c+=parseInt(r,10),u="";break;case"D":r=r==1||r==21||r==31?r+"st":r==2||r==22?r+"nd":r==3||r==23?r+"rd":r+"th",c+=r,u="";break;case"MMMM":c+=h(p),u="";break;case"MMM":if(i.charAt(y+1)==="M")break;c+=s(p),u="";break;case"MM":if(i.charAt(y+1)=="M")break;c+=f(p,2),u="";break;case"M":if(i.charAt(y+1)=="M")break;c+=parseInt(p,10),u="";break;case"y":case"yyy":if(i.charAt(y+1)=="y")break;c+=u,u="";break;case"yy":if(i.charAt(y+1)=="y"&&i.charAt(y+2)=="y")break;c+=String(w).slice(-2),u="";break;case"yyyy":c+=w,u="";break;case"HH":c+=f(l.hour,2),u="";break;case"H":if(i.charAt(y+1)=="H")break;c+=parseInt(l.hour,10),u="";break;case"hh":d=l.hour==0?12:l.hour<13?l.hour:l.hour-12,c+=f(d,2),u="";break;case"h":if(i.charAt(y+1)=="h")break;d=l.hour==0?12:l.hour<13?l.hour:l.hour-12,c+=parseInt(d,10),u="";break;case"mm":c+=f(l.minute,2),u="";break;case"m":if(i.charAt(y+1)=="m")break;c+=l.minute,u="";break;case"ss":c+=f(l.second.substring(0,2),2),u="";break;case"s":if(i.charAt(y+1)=="s")break;c+=l.second,u="";break;case"S":case"SS":if(i.charAt(y+1)=="S")break;c+=u,u="";break;case"SSS":c+=l.millis.substring(0,3),u="";break;case"a":c+=l.hour>=12?"PM":"AM",u="";break;case"p":c+=l.hour>=12?"p.m.":"a.m.",u="";break;default:c+=g,u=""}}return c+=nt}catch(tt){return console.log(tt),t}},prettyDate:function(n){var r,i,t;if(typeof n=="string"&&(r=new Date(n)),typeof n=="object"&&(r=new Date(n.toString())),i=(+new Date-r.getTime())/1e3,t=Math.floor(i/86400),!isNaN(t)&&!(t<0))return t>=31?"more than 31 days":t==0&&(i<60&&"just now"||i<120&&"1 minute ago"||i<3600&&Math.floor(i/60)+" minutes ago"||i<7200&&"1 hour ago"||i<86400&&Math.floor(i/3600)+" hours ago")||t==1&&"Yesterday"||t<7&&t+" days ago"||t<31&&Math.ceil(t/7)+" weeks ago"},toBrowserTimeZone:function(n,t){return this.date(n,t||"MM/dd/yyyy")}}}()})(jQuery);

/*
 * jQuery Pines Notify (pnotify) Plugin 1.0.1
 *
 * Copyright (c) 2009 Hunter Perrin
 *
 * Licensed (along with all of Pines) under the GNU Affero GPL:
 *	  http://www.gnu.org/licenses/agpl.html
 */
(function(e){var q,m,k,n;e.extend({pnotify_remove_all:function(){var g=k.data("pnotify");g&&g.length&&e.each(g,function(){this.pnotify_remove&&this.pnotify_remove()})},pnotify_position_all:function(){m&&clearTimeout(m);m=null;var g=k.data("pnotify");if(g&&g.length){e.each(g,function(){var c=this.opts.pnotify_stack;if(c){if(!c.nextpos1)c.nextpos1=c.firstpos1;if(!c.nextpos2)c.nextpos2=c.firstpos2;if(!c.addpos2)c.addpos2=0;if(this.css("display")!="none"){var a,j,i={},b;switch(c.dir1){case "down":b="top";
break;case "up":b="bottom";break;case "left":b="right";break;case "right":b="left";break}a=parseInt(this.css(b),10);if(isNaN(a))a=0;if(typeof c.firstpos1=="undefined"){c.firstpos1=a;c.nextpos1=c.firstpos1}var h;switch(c.dir2){case "down":h="top";break;case "up":h="bottom";break;case "left":h="right";break;case "right":h="left";break}j=parseInt(this.css(h),10);if(isNaN(j))j=0;if(typeof c.firstpos2=="undefined"){c.firstpos2=j;c.nextpos2=c.firstpos2}if(c.dir1=="down"&&c.nextpos1+this.height()>n.height()||
c.dir1=="up"&&c.nextpos1+this.height()>n.height()||c.dir1=="left"&&c.nextpos1+this.width()>n.width()||c.dir1=="right"&&c.nextpos1+this.width()>n.width()){c.nextpos1=c.firstpos1;c.nextpos2+=c.addpos2+10;c.addpos2=0}if(c.animation&&c.nextpos2<j)switch(c.dir2){case "down":i.top=c.nextpos2+"px";break;case "up":i.bottom=c.nextpos2+"px";break;case "left":i.right=c.nextpos2+"px";break;case "right":i.left=c.nextpos2+"px";break}else this.css(h,c.nextpos2+"px");switch(c.dir2){case "down":case "up":if(this.outerHeight(true)>
c.addpos2)c.addpos2=this.height();break;case "left":case "right":if(this.outerWidth(true)>c.addpos2)c.addpos2=this.width();break}if(c.nextpos1)if(c.animation&&(a>c.nextpos1||i.top||i.bottom||i.right||i.left))switch(c.dir1){case "down":i.top=c.nextpos1+"px";break;case "up":i.bottom=c.nextpos1+"px";break;case "left":i.right=c.nextpos1+"px";break;case "right":i.left=c.nextpos1+"px";break}else this.css(b,c.nextpos1+"px");if(i.top||i.bottom||i.right||i.left)this.animate(i,{duration:500,queue:false});switch(c.dir1){case "down":case "up":c.nextpos1+=
this.height()+10;break;case "left":case "right":c.nextpos1+=this.width()+10;break}}}});e.each(g,function(){var c=this.opts.pnotify_stack;if(c){c.nextpos1=c.firstpos1;c.nextpos2=c.firstpos2;c.addpos2=0;c.animation=true}})}},pnotify:function(g){k||(k=e("body"));n||(n=e(window));var c,a;if(typeof g!="object"){a=e.extend({},e.pnotify.defaults);a.pnotify_text=g}else a=e.extend({},e.pnotify.defaults,g);if(a.pnotify_before_init)if(a.pnotify_before_init(a)===false)return null;var j,i=function(d,f){b.css("display",
"none");var o=document.elementFromPoint(d.clientX,d.clientY);b.css("display","block");var r=e(o),s=r.css("cursor");b.css("cursor",s!="auto"?s:"default");if(!j||j.get(0)!=o){if(j){p.call(j.get(0),"mouseleave",d.originalEvent);p.call(j.get(0),"mouseout",d.originalEvent)}p.call(o,"mouseenter",d.originalEvent);p.call(o,"mouseover",d.originalEvent)}p.call(o,f,d.originalEvent);j=r},b=e("<div />",{"class":"ui-pnotify "+a.pnotify_addclass,css:{display:"none"},mouseenter:function(d){a.pnotify_nonblock&&d.stopPropagation();
if(a.pnotify_mouse_reset&&c=="out"){b.stop(true);c="in";b.css("height","auto").animate({width:a.pnotify_width,opacity:a.pnotify_nonblock?a.pnotify_nonblock_opacity:a.pnotify_opacity},"fast")}a.pnotify_nonblock&&b.animate({opacity:a.pnotify_nonblock_opacity},"fast");a.pnotify_hide&&a.pnotify_mouse_reset&&b.pnotify_cancel_remove();a.pnotify_closer&&!a.pnotify_nonblock&&b.closer.show()},mouseleave:function(d){a.pnotify_nonblock&&d.stopPropagation();j=null;b.css("cursor","auto");a.pnotify_nonblock&&c!=
"out"&&b.animate({opacity:a.pnotify_opacity},"fast");a.pnotify_hide&&a.pnotify_mouse_reset&&b.pnotify_queue_remove();b.closer.hide();e.pnotify_position_all()},mouseover:function(d){a.pnotify_nonblock&&d.stopPropagation()},mouseout:function(d){a.pnotify_nonblock&&d.stopPropagation()},mousemove:function(d){if(a.pnotify_nonblock){d.stopPropagation();i(d,"onmousemove")}},mousedown:function(d){if(a.pnotify_nonblock){d.stopPropagation();d.preventDefault();i(d,"onmousedown")}},mouseup:function(d){if(a.pnotify_nonblock){d.stopPropagation();
d.preventDefault();i(d,"onmouseup")}},click:function(d){if(a.pnotify_nonblock){d.stopPropagation();i(d,"onclick")}},dblclick:function(d){if(a.pnotify_nonblock){d.stopPropagation();i(d,"ondblclick")}}});b.opts=a;if(a.pnotify_shadow&&!e.browser.msie)b.shadow_container=e("<div />",{"class":"ui-widget-shadow ui-corner-all ui-pnotify-shadow"}).prependTo(b);b.container=e("<div />",{"class":"ui-widget ui-widget-content ui-corner-all ui-pnotify-container "+(a.pnotify_type=="error"?"ui-state-error":"ui-state-highlight")}).appendTo(b);
b.pnotify_version="1.0.1";b.pnotify=function(d){var f=a;if(typeof d=="string")a.pnotify_text=d;else a=e.extend({},a,d);b.opts=a;if(a.pnotify_shadow!=f.pnotify_shadow)if(a.pnotify_shadow&&!e.browser.msie)b.shadow_container=e("<div />",{"class":"ui-widget-shadow ui-pnotify-shadow"}).prependTo(b);else b.children(".ui-pnotify-shadow").remove();if(a.pnotify_addclass===false)b.removeClass(f.pnotify_addclass);else a.pnotify_addclass!==f.pnotify_addclass&&b.removeClass(f.pnotify_addclass).addClass(a.pnotify_addclass);
if(a.pnotify_title===false)b.title_container.hide("fast");else a.pnotify_title!==f.pnotify_title&&b.title_container.html(a.pnotify_title).show(200);if(a.pnotify_text===false)b.text_container.hide("fast");else if(a.pnotify_text!==f.pnotify_text){if(a.pnotify_insert_brs)a.pnotify_text=a.pnotify_text.replace(/\n/g,"<br />");b.text_container.html(a.pnotify_text).show(200)}b.pnotify_history=a.pnotify_history;a.pnotify_type!=f.pnotify_type&&b.container.toggleClass("ui-state-error ui-state-highlight");if(a.pnotify_notice_icon!=
f.pnotify_notice_icon&&a.pnotify_type=="notice"||a.pnotify_error_icon!=f.pnotify_error_icon&&a.pnotify_type=="error"||a.pnotify_type!=f.pnotify_type){b.container.find("div.ui-pnotify-icon").remove();if(a.pnotify_error_icon&&a.pnotify_type=="error"||a.pnotify_notice_icon)e("<div />",{"class":"ui-pnotify-icon"}).append(e("<span />",{"class":a.pnotify_type=="error"?a.pnotify_error_icon:a.pnotify_notice_icon})).prependTo(b.container)}a.pnotify_width!==f.pnotify_width&&b.animate({width:a.pnotify_width});
a.pnotify_min_height!==f.pnotify_min_height&&b.container.animate({minHeight:a.pnotify_min_height});a.pnotify_opacity!==f.pnotify_opacity&&b.fadeTo(a.pnotify_animate_speed,a.pnotify_opacity);if(a.pnotify_hide)f.pnotify_hide||b.pnotify_queue_remove();else b.pnotify_cancel_remove();b.pnotify_queue_position();return b};b.pnotify_queue_position=function(){m&&clearTimeout(m);m=setTimeout(e.pnotify_position_all,10)};b.pnotify_display=function(){b.parent().length||b.appendTo(k);if(a.pnotify_before_open)if(a.pnotify_before_open(b)===
false)return;b.pnotify_queue_position();if(a.pnotify_animation=="fade"||a.pnotify_animation.effect_in=="fade")b.show().fadeTo(0,0).hide();else a.pnotify_opacity!=1&&b.show().fadeTo(0,a.pnotify_opacity).hide();b.animate_in(function(){a.pnotify_after_open&&a.pnotify_after_open(b);b.pnotify_queue_position();a.pnotify_hide&&b.pnotify_queue_remove()})};b.pnotify_remove=function(){if(b.timer){window.clearTimeout(b.timer);b.timer=null}if(a.pnotify_before_close)if(a.pnotify_before_close(b)===false)return;
b.animate_out(function(){if(a.pnotify_after_close)if(a.pnotify_after_close(b)===false)return;b.pnotify_queue_position();a.pnotify_remove&&b.detach()})};b.animate_in=function(d){c="in";var f;f=typeof a.pnotify_animation.effect_in!="undefined"?a.pnotify_animation.effect_in:a.pnotify_animation;if(f=="none"){b.show();d()}else if(f=="show")b.show(a.pnotify_animate_speed,d);else if(f=="fade")b.show().fadeTo(a.pnotify_animate_speed,a.pnotify_opacity,d);else if(f=="slide")b.slideDown(a.pnotify_animate_speed,
d);else if(typeof f=="function")f("in",d,b);else b.effect&&b.effect(f,{},a.pnotify_animate_speed,d)};b.animate_out=function(d){c="out";var f;f=typeof a.pnotify_animation.effect_out!="undefined"?a.pnotify_animation.effect_out:a.pnotify_animation;if(f=="none"){b.hide();d()}else if(f=="show")b.hide(a.pnotify_animate_speed,d);else if(f=="fade")b.fadeOut(a.pnotify_animate_speed,d);else if(f=="slide")b.slideUp(a.pnotify_animate_speed,d);else if(typeof f=="function")f("out",d,b);else b.effect&&b.effect(f,
{},a.pnotify_animate_speed,d)};b.pnotify_cancel_remove=function(){b.timer&&window.clearTimeout(b.timer)};b.pnotify_queue_remove=function(){b.pnotify_cancel_remove();b.timer=window.setTimeout(function(){b.pnotify_remove()},isNaN(a.pnotify_delay)?0:a.pnotify_delay)};b.closer=e("<div />",{"class":"ui-pnotify-closer",css:{cursor:"pointer",display:"none"},click:function(){b.pnotify_remove();b.closer.hide()}}).append(e("<span />",{"class":"ui-icon ui-icon-circle-close"})).appendTo(b.container);if(a.pnotify_error_icon&&
a.pnotify_type=="error"||a.pnotify_notice_icon)e("<div />",{"class":"ui-pnotify-icon"}).append(e("<span />",{"class":a.pnotify_type=="error"?a.pnotify_error_icon:a.pnotify_notice_icon})).appendTo(b.container);b.title_container=e("<div />",{"class":"ui-pnotify-title",html:a.pnotify_title}).appendTo(b.container);a.pnotify_title===false&&b.title_container.hide();if(a.pnotify_insert_brs&&typeof a.pnotify_text=="string")a.pnotify_text=a.pnotify_text.replace(/\n/g,"<br />");b.text_container=e("<div />",
{"class":"ui-pnotify-text",html:a.pnotify_text}).appendTo(b.container);a.pnotify_text===false&&b.text_container.hide();typeof a.pnotify_width=="string"&&b.css("width",a.pnotify_width);typeof a.pnotify_min_height=="string"&&b.container.css("min-height",a.pnotify_min_height);b.pnotify_history=a.pnotify_history;var h=k.data("pnotify");if(h==null||typeof h!="object")h=[];h=a.pnotify_stack.push=="top"?e.merge([b],h):e.merge(h,[b]);k.data("pnotify",h);a.pnotify_after_init&&a.pnotify_after_init(b);if(a.pnotify_history){var l=
k.data("pnotify_history");if(typeof l=="undefined"){l=e("<div />",{"class":"ui-pnotify-history-container ui-state-default ui-corner-bottom",mouseleave:function(){l.animate({top:"-"+q+"px"},{duration:100,queue:false})}}).append(e("<div />",{"class":"ui-pnotify-history-header",text:"Redisplay"})).append(e("<button />",{"class":"ui-pnotify-history-all ui-state-default ui-corner-all",text:"All",mouseenter:function(){e(this).addClass("ui-state-hover")},mouseleave:function(){e(this).removeClass("ui-state-hover")},
click:function(){e.each(h,function(){this.pnotify_history&&this.pnotify_display&&this.pnotify_display()});return false}})).append(e("<button />",{"class":"ui-pnotify-history-last ui-state-default ui-corner-all",text:"Last",mouseenter:function(){e(this).addClass("ui-state-hover")},mouseleave:function(){e(this).removeClass("ui-state-hover")},click:function(){for(var d=1;!h[h.length-d]||!h[h.length-d].pnotify_history||h[h.length-d].is(":visible");){if(h.length-d===0)return false;d++}d=h[h.length-d];
d.pnotify_display&&d.pnotify_display();return false}})).appendTo(k);q=e("<span />",{"class":"ui-pnotify-history-pulldown ui-icon ui-icon-grip-dotted-horizontal",mouseenter:function(){l.animate({top:"0"},{duration:100,queue:false})}}).appendTo(l).offset().top+2;l.css({top:"-"+q+"px"});k.data("pnotify_history",l)}}a.pnotify_stack.animation=false;b.pnotify_display();return b}});var t=/^on/,u=/^(dbl)?click$|^mouse(move|down|up|over|out|enter|leave)$|^contextmenu$/,v=/^(focus|blur|select|change|reset)$|^key(press|down|up)$/,
w=/^(scroll|resize|(un)?load|abort|error)$/,p=function(g,c){var a;g=g.toLowerCase();if(document.createEvent&&this.dispatchEvent){g=g.replace(t,"");if(g.match(u)){e(this).offset();a=document.createEvent("MouseEvents");a.initMouseEvent(g,c.bubbles,c.cancelable,c.view,c.detail,c.screenX,c.screenY,c.clientX,c.clientY,c.ctrlKey,c.altKey,c.shiftKey,c.metaKey,c.button,c.relatedTarget)}else if(g.match(v)){a=document.createEvent("UIEvents");a.initUIEvent(g,c.bubbles,c.cancelable,c.view,c.detail)}else if(g.match(w)){a=
document.createEvent("HTMLEvents");a.initEvent(g,c.bubbles,c.cancelable)}a&&this.dispatchEvent(a)}else{g.match(t)||(g="on"+g);a=document.createEventObject(c);this.fireEvent(g,a)}};e.pnotify.defaults={pnotify_title:false,pnotify_text:false,pnotify_addclass:"",pnotify_nonblock:false,pnotify_nonblock_opacity:0.2,pnotify_history:true,pnotify_width:"300px",pnotify_min_height:"16px",pnotify_type:"notice",pnotify_notice_icon:"ui-icon ui-icon-info",pnotify_error_icon:"ui-icon ui-icon-alert",pnotify_animation:"fade",
pnotify_animate_speed:"slow",pnotify_opacity:1,pnotify_shadow:false,pnotify_closer:true,pnotify_hide:true,pnotify_delay:8E3,pnotify_mouse_reset:true,pnotify_remove:true,pnotify_insert_brs:true,pnotify_stack:{dir1:"down",dir2:"left",push:"bottom"}}})(jQuery);

/*
 * jQuery scrollintoview() plugin and :scrollable selector filter
 *
 * Version 1.8 (14 Jul 2011)
 * Requires jQuery 1.4 or newer
 *
 * Copyright (c) 2011 Robert Koritnik
 * Licensed under the terms of the MIT license
 * http://www.opensource.org/licenses/mit-license.php
 */
(function(f){var c={vertical:{x:false,y:true},horizontal:{x:true,y:false},both:{x:true,y:true},x:{x:true,y:false},y:{x:false,y:true}};var b={duration:"fast",direction:"both"};var e=/^(?:html)$/i;var g=function(k,j){j=j||(document.defaultView&&document.defaultView.getComputedStyle?document.defaultView.getComputedStyle(k,null):k.currentStyle);var i=document.defaultView&&document.defaultView.getComputedStyle?true:false;var h={top:(parseFloat(i?j.borderTopWidth:f.css(k,"borderTopWidth"))||0),left:(parseFloat(i?j.borderLeftWidth:f.css(k,"borderLeftWidth"))||0),bottom:(parseFloat(i?j.borderBottomWidth:f.css(k,"borderBottomWidth"))||0),right:(parseFloat(i?j.borderRightWidth:f.css(k,"borderRightWidth"))||0)};return{top:h.top,left:h.left,bottom:h.bottom,right:h.right,vertical:h.top+h.bottom,horizontal:h.left+h.right}};var d=function(h){var j=f(window);var i=e.test(h[0].nodeName);return{border:i?{top:0,left:0,bottom:0,right:0}:g(h[0]),scroll:{top:(i?j:h).scrollTop(),left:(i?j:h).scrollLeft()},scrollbar:{right:i?0:h.innerWidth()-h[0].clientWidth,bottom:i?0:h.innerHeight()-h[0].clientHeight},rect:(function(){var k=h[0].getBoundingClientRect();return{top:i?0:k.top,left:i?0:k.left,bottom:i?h[0].clientHeight:k.bottom,right:i?h[0].clientWidth:k.right}})()}};f.fn.extend({scrollintoview:function(j){j=f.extend({},b,j);j.direction=c[typeof(j.direction)==="string"&&j.direction.toLowerCase()]||c.both;var n="";if(j.direction.x===true){n="horizontal"}if(j.direction.y===true){n=n?"both":"vertical"}var l=this.eq(0);var i=l.closest(":scrollable("+n+")");if(i.length>0){i=i.eq(0);var m={e:d(l),s:d(i)};var h={top:m.e.rect.top-(m.s.rect.top+m.s.border.top),bottom:m.s.rect.bottom-m.s.border.bottom-m.s.scrollbar.bottom-m.e.rect.bottom,left:m.e.rect.left-(m.s.rect.left+m.s.border.left),right:m.s.rect.right-m.s.border.right-m.s.scrollbar.right-m.e.rect.right};var k={};if(j.direction.y===true){if(h.top<0){k.scrollTop=m.s.scroll.top+h.top}else{if(h.top>0&&h.bottom<0){k.scrollTop=m.s.scroll.top+Math.min(h.top,-h.bottom)}}}if(j.direction.x===true){if(h.left<0){k.scrollLeft=m.s.scroll.left+h.left}else{if(h.left>0&&h.right<0){k.scrollLeft=m.s.scroll.left+Math.min(h.left,-h.right)}}}if(!f.isEmptyObject(k)){if(e.test(i[0].nodeName)){i=f("html,body")}i.animate(k,j.duration).eq(0).queue(function(o){f.isFunction(j.complete)&&j.complete.call(i[0]);o()})}else{f.isFunction(j.complete)&&j.complete.call(i[0])}}return this}});var a={auto:true,scroll:true,visible:false,hidden:false};f.extend(f.expr[":"],{scrollable:function(k,i,n,h){var m=c[typeof(n[3])==="string"&&n[3].toLowerCase()]||c.both;var l=(document.defaultView&&document.defaultView.getComputedStyle?document.defaultView.getComputedStyle(k,null):k.currentStyle);var o={x:a[l.overflowX.toLowerCase()]||false,y:a[l.overflowY.toLowerCase()]||false,isRoot:e.test(k.nodeName)};if(!o.x&&!o.y&&!o.isRoot){return false}var j={height:{scroll:k.scrollHeight,client:k.clientHeight},width:{scroll:k.scrollWidth,client:k.clientWidth},scrollableX:function(){return(o.x||o.isRoot)&&this.width.scroll>this.width.client},scrollableY:function(){return(o.y||o.isRoot)&&this.height.scroll>this.height.client}};return m.y&&j.scrollableY()||m.x&&j.scrollableX()}})})(jQuery);

(function(d){var b=["DOMMouseScroll","mousewheel"];if(d.event.fixHooks){for(var a=b.length;a;){d.event.fixHooks[b[--a]]=d.event.mouseHooks}}d.event.special.mousewheel={setup:function(){if(this.addEventListener){for(var e=b.length;e;){this.addEventListener(b[--e],c,false)}}else{this.onmousewheel=c}},teardown:function(){if(this.removeEventListener){for(var e=b.length;e;){this.removeEventListener(b[--e],c,false)}}else{this.onmousewheel=null}}};d.fn.extend({mousewheel:function(e){return e?this.bind("mousewheel",e):this.trigger("mousewheel")},unmousewheel:function(e){return this.unbind("mousewheel",e)}});function c(j){var h=j||window.event,g=[].slice.call(arguments,1),k=0,i=true,f=0,e=0;j=d.event.fix(h);j.type="mousewheel";if(h.wheelDelta){k=h.wheelDelta/120}if(h.detail){k=-h.detail/3}e=k;if(h.axis!==undefined&&h.axis===h.HORIZONTAL_AXIS){e=0;f=-1*k}if(h.wheelDeltaY!==undefined){e=h.wheelDeltaY/120}if(h.wheelDeltaX!==undefined){f=-1*h.wheelDeltaX/120}g.unshift(j,k,f,e);return(d.event.dispatch||d.event.handle).apply(this,g)}})(jQuery);

/*!
 * hoverIntent r7 // 2013.03.11 // jQuery 1.9.1+
 * http://cherne.net/brian/resources/jquery.hoverIntent.html
 *
 * You may use hoverIntent under the terms of the MIT license.
 * Copyright 2007, 2013 Brian Cherne
 */
(function(e){e.fn.hoverIntent=function(t,n,r){var i={interval:100,sensitivity:7,timeout:0};if(typeof t==="object"){i=e.extend(i,t)}else if(e.isFunction(n)){i=e.extend(i,{over:t,out:n,selector:r})}else{i=e.extend(i,{over:t,out:t,selector:n})}var s,o,u,a;var f=function(e){s=e.pageX;o=e.pageY};var l=function(t,n){n.hoverIntent_t=clearTimeout(n.hoverIntent_t);if(Math.abs(u-s)+Math.abs(a-o)<i.sensitivity){e(n).off("mousemove.hoverIntent",f);n.hoverIntent_s=1;return i.over.apply(n,[t])}else{u=s;a=o;n.hoverIntent_t=setTimeout(function(){l(t,n)},i.interval)}};var c=function(e,t){t.hoverIntent_t=clearTimeout(t.hoverIntent_t);t.hoverIntent_s=0;return i.out.apply(t,[e])};var h=function(t){var n=jQuery.extend({},t);var r=this;if(r.hoverIntent_t){r.hoverIntent_t=clearTimeout(r.hoverIntent_t)}if(t.type=="mouseenter"){u=n.pageX;a=n.pageY;e(r).on("mousemove.hoverIntent",f);if(r.hoverIntent_s!=1){r.hoverIntent_t=setTimeout(function(){l(n,r)},i.interval)}}else{e(r).off("mousemove.hoverIntent",f);if(r.hoverIntent_s==1){r.hoverIntent_t=setTimeout(function(){c(n,r)},i.timeout)}}};return this.on({"mouseenter.hoverIntent":h,"mouseleave.hoverIntent":h},i.selector)}})(jQuery)

/**
 * A Javascript object to encode and/or decode html characters
 * @Author R Reid
 * source: http://www.strictly-software.com/htmlencode
 * Licence: GPL
 *
 * Revision:
 *  2011-07-14, Jacques-Yves Bleau:
 *       - fixed conversion error with capitalized accentuated characters
 *       + converted arr1 and arr2 to object property to remove redundancy
 * 2020-02-10, Matt B:
 *       - fixed firefox memory issue by not replacing the same html entity 2000 times.  Do one global html entity replace for each one found.
 */
var Encoder={EncodeType:"entity",isEmpty:function(a){if(a){return((a===null)||a.length==0||/^\s+$/.test(a))}else{return true}},arr1:new Array("&nbsp;","&iexcl;","&cent;","&pound;","&curren;","&yen;","&brvbar;","&sect;","&uml;","&copy;","&ordf;","&laquo;","&not;","&shy;","&reg;","&macr;","&deg;","&plusmn;","&sup2;","&sup3;","&acute;","&micro;","&para;","&middot;","&cedil;","&sup1;","&ordm;","&raquo;","&frac14;","&frac12;","&frac34;","&iquest;","&Agrave;","&Aacute;","&Acirc;","&Atilde;","&Auml;","&Aring;","&Aelig;","&Ccedil;","&Egrave;","&Eacute;","&Ecirc;","&Euml;","&Igrave;","&Iacute;","&Icirc;","&Iuml;","&ETH;","&Ntilde;","&Ograve;","&Oacute;","&Ocirc;","&Otilde;","&Ouml;","&times;","&Oslash;","&Ugrave;","&Uacute;","&Ucirc;","&Uuml;","&Yacute;","&THORN;","&szlig;","&agrave;","&aacute;","&acirc;","&atilde;","&auml;","&aring;","&aelig;","&ccedil;","&egrave;","&eacute;","&ecirc;","&euml;","&igrave;","&iacute;","&icirc;","&iuml;","&eth;","&ntilde;","&ograve;","&oacute;","&ocirc;","&otilde;","&ouml;","&divide;","&Oslash;","&ugrave;","&uacute;","&ucirc;","&uuml;","&yacute;","&thorn;","&yuml;","&quot;","&lt;","&gt;","&oelig;","&oelig;","&scaron;","&scaron;","&yuml;","&circ;","&tilde;","&ensp;","&emsp;","&thinsp;","&zwnj;","&zwj;","&lrm;","&rlm;","&ndash;","&mdash;","&lsquo;","&rsquo;","&sbquo;","&ldquo;","&rdquo;","&bdquo;","&dagger;","&dagger;","&permil;","&lsaquo;","&rsaquo;","&euro;","&fnof;","&alpha;","&beta;","&gamma;","&delta;","&epsilon;","&zeta;","&eta;","&theta;","&iota;","&kappa;","&lambda;","&mu;","&nu;","&xi;","&omicron;","&pi;","&rho;","&sigma;","&tau;","&upsilon;","&phi;","&chi;","&psi;","&omega;","&alpha;","&beta;","&gamma;","&delta;","&epsilon;","&zeta;","&eta;","&theta;","&iota;","&kappa;","&lambda;","&mu;","&nu;","&xi;","&omicron;","&pi;","&rho;","&sigmaf;","&sigma;","&tau;","&upsilon;","&phi;","&chi;","&psi;","&omega;","&thetasym;","&upsih;","&piv;","&bull;","&hellip;","&prime;","&prime;","&oline;","&frasl;","&weierp;","&image;","&real;","&trade;","&alefsym;","&larr;","&uarr;","&rarr;","&darr;","&harr;","&crarr;","&larr;","&uarr;","&rarr;","&darr;","&harr;","&forall;","&part;","&exist;","&empty;","&nabla;","&isin;","&notin;","&ni;","&prod;","&sum;","&minus;","&lowast;","&radic;","&prop;","&infin;","&ang;","&and;","&or;","&cap;","&cup;","&int;","&there4;","&sim;","&cong;","&asymp;","&ne;","&equiv;","&le;","&ge;","&sub;","&sup;","&nsub;","&sube;","&supe;","&oplus;","&otimes;","&perp;","&sdot;","&lceil;","&rceil;","&lfloor;","&rfloor;","&lang;","&rang;","&loz;","&spades;","&clubs;","&hearts;","&diams;","&amp;"),arr2:new Array("&#160;","&#161;","&#162;","&#163;","&#164;","&#165;","&#166;","&#167;","&#168;","&#169;","&#170;","&#171;","&#172;","&#173;","&#174;","&#175;","&#176;","&#177;","&#178;","&#179;","&#180;","&#181;","&#182;","&#183;","&#184;","&#185;","&#186;","&#187;","&#188;","&#189;","&#190;","&#191;","&#192;","&#193;","&#194;","&#195;","&#196;","&#197;","&#198;","&#199;","&#200;","&#201;","&#202;","&#203;","&#204;","&#205;","&#206;","&#207;","&#208;","&#209;","&#210;","&#211;","&#212;","&#213;","&#214;","&#215;","&#216;","&#217;","&#218;","&#219;","&#220;","&#221;","&#222;","&#223;","&#224;","&#225;","&#226;","&#227;","&#228;","&#229;","&#230;","&#231;","&#232;","&#233;","&#234;","&#235;","&#236;","&#237;","&#238;","&#239;","&#240;","&#241;","&#242;","&#243;","&#244;","&#245;","&#246;","&#247;","&#248;","&#249;","&#250;","&#251;","&#252;","&#253;","&#254;","&#255;","&#34;","&#60;","&#62;","&#338;","&#339;","&#352;","&#353;","&#376;","&#710;","&#732;","&#8194;","&#8195;","&#8201;","&#8204;","&#8205;","&#8206;","&#8207;","&#8211;","&#8212;","&#8216;","&#8217;","&#8218;","&#8220;","&#8221;","&#8222;","&#8224;","&#8225;","&#8240;","&#8249;","&#8250;","&#8364;","&#402;","&#913;","&#914;","&#915;","&#916;","&#917;","&#918;","&#919;","&#920;","&#921;","&#922;","&#923;","&#924;","&#925;","&#926;","&#927;","&#928;","&#929;","&#931;","&#932;","&#933;","&#934;","&#935;","&#936;","&#937;","&#945;","&#946;","&#947;","&#948;","&#949;","&#950;","&#951;","&#952;","&#953;","&#954;","&#955;","&#956;","&#957;","&#958;","&#959;","&#960;","&#961;","&#962;","&#963;","&#964;","&#965;","&#966;","&#967;","&#968;","&#969;","&#977;","&#978;","&#982;","&#8226;","&#8230;","&#8242;","&#8243;","&#8254;","&#8260;","&#8472;","&#8465;","&#8476;","&#8482;","&#8501;","&#8592;","&#8593;","&#8594;","&#8595;","&#8596;","&#8629;","&#8656;","&#8657;","&#8658;","&#8659;","&#8660;","&#8704;","&#8706;","&#8707;","&#8709;","&#8711;","&#8712;","&#8713;","&#8715;","&#8719;","&#8721;","&#8722;","&#8727;","&#8730;","&#8733;","&#8734;","&#8736;","&#8743;","&#8744;","&#8745;","&#8746;","&#8747;","&#8756;","&#8764;","&#8773;","&#8776;","&#8800;","&#8801;","&#8804;","&#8805;","&#8834;","&#8835;","&#8836;","&#8838;","&#8839;","&#8853;","&#8855;","&#8869;","&#8901;","&#8968;","&#8969;","&#8970;","&#8971;","&#9001;","&#9002;","&#9674;","&#9824;","&#9827;","&#9829;","&#9830;","&#38;"),HTML2Numerical:function(a){return this.swapArrayVals(a,this.arr1,this.arr2)},NumericalToHTML:function(a){return this.swapArrayVals(a,this.arr2,this.arr1)},numEncode:function(b){if(this.isEmpty(b)){return""}var d="";for(var a=0;a<b.length;a++){var f=b.charAt(a);if(f<" "||f>"~"){f="&#"+f.charCodeAt()+";"}d+=f}return d},htmlDecode:function(e){var g,b;if(this.isEmpty(e)){return""}e=this.HTML2Numerical(e);var match=e.match(/&#[0-9]{1,5};/g);if(match!=null){var arr=[];$.each(match, function(i, el){if($.inArray(el, arr) === -1) arr.push(el);});for(var a=0;a<arr.length;a++){b=arr[a];g=b.substring(2,b.length-1);var re=new RegExp(b, "g");if(g>=-32768&&g<=65535){e=e.replace(re,String.fromCharCode(g))}else{e=e.replace(re,"")}}}return e},htmlEncode:function(a,b){if(this.isEmpty(a)){return""}b=b||false;if(b){if(this.EncodeType=="numerical"){a=a.replace(/&/g,"&#38;")}else{a=a.replace(/&/g,"&amp;")}}a=this.XSSEncode(a,false);if(this.EncodeType=="numerical"||!b){a=this.HTML2Numerical(a)}a=this.numEncode(a);if(!b){a=a.replace(/&#/g,"##AMPHASH##");if(this.EncodeType=="numerical"){a=a.replace(/&/g,"&#38;")}else{a=a.replace(/&/g,"&amp;")}a=a.replace(/##AMPHASH##/g,"&#")}a=a.replace(/&#\d*([^\d;]|$)/g,"$1");if(!b){a=this.correctEncoding(a)}if(this.EncodeType=="entity"){a=this.NumericalToHTML(a)}return a},XSSEncode:function(b,a){if(!this.isEmpty(b)){a=a||true;if(a){b=b.replace(/\'/g,"&#39;");b=b.replace(/\"/g,"&quot;");b=b.replace(/</g,"&lt;");b=b.replace(/>/g,"&gt;")}else{b=b.replace(/\'/g,"&#39;");b=b.replace(/\"/g,"&#34;");b=b.replace(/</g,"&#60;");b=b.replace(/>/g,"&#62;")}return b}else{return""}},hasEncoded:function(a){if(/&#[0-9]{1,5};/g.test(a)){return true}else{if(/&[A-Z]{2,6};/gi.test(a)){return true}else{return false}}},stripUnicode:function(a){return a.replace(/[^\x20-\x7E]/g,"")},correctEncoding:function(a){return a.replace(/(&amp;)(amp;)+/,"$1")},swapArrayVals:function(f,c,b){if(this.isEmpty(f)){return""}var e;if(c&&b){if(c.length==b.length){for(var a=0,d=c.length;a<d;a++){e=new RegExp(c[a],"g");f=f.replace(e,b[a])}}}return f},inArray:function(d,b){for(var c=0,a=b.length;c<a;c++){if(b[c]===d){return c}}return -1}};

/**
 * add the reallyvisible selector to jquery to detect if an element is hidden via viibility == 'hidden' or display == 'none' either on itself or on an ancestor
 * **/
jQuery.extend(
    jQuery.expr[ ":" ], {
        reallyvisible : function (a) {
            var el = jQuery(a);
            return !(
                   el.is(':hidden') ||
                   el.css('display') == 'none' ||
                   el.parents(':hidden').length ||
                   ( function(){
                        var hidden = false;
                        el.parents().each(function(){
                            if (this.style.visibility == 'hidden' || this.style.display == 'none') {
                                hidden = true;
                                return false;
                            }
                        });
                        return hidden;
                   })()
            );
        }
    }
);
/*-------------------------------------------------------------------------------------------------
 * END jQuery/Plugins
 *-------------------------------------------------------------------------------------------------*/

/*---------------------------------------------------------------------------------------------------
 - Global Variables
 ---------------------------------------------------------------------------------------------------*/
function frameworkLoader(){
    if (typeof(loadFramework) != 'undefined') {
        loadFramework();
    } else {
        hideLoadingMessages();
    }
}
$(frameworkLoader);
var gV = new Date().toDateString().replace(/ /g,'') + gFWVersion;
var gUnsupported = false;
var vBrwsInfo;
var isDOMReady = false;
var gMessageCount = 0;
var vLastSortCol = 0;
var vLastSortDir = '';
//filled in qsuperlib001.p
var navMenuData = {};
var vBrowseData = [];
var vDataBrowserIndex = [];
var vBrowseDataFixed = [];
var browses = "";
var browseDetailsProc = "";
var gAllowArrows = true;
var gDoValidation = true;
var gDontValidate = {};
var gCalClicked,gCalBlur;
var gLoadedBrowse = false;
var gBrowseReadyState = 0;
var gReturnMsg,gReturnInfo;
var gOpenRow='';
var gAction,gProgram,gWhereTo;
var gOpenDetails = 2;
var gExpandDetails = [];
var gExtraInfo = "";
var gDetailsDone = false;
var gDetailsCounter = 0;
var gShowNumDetails = 0;
var gOrigValues='';
var gEnterField='';
var gKeyPressed=false;
var gDisplayWarning=false,gDisableWarning=false;
var gDetailsOpen='',gShowParent='';
var gAllowBrowseResize=false;
var gSavingDetails=false;
var gIsFramework = false; //set from qsuperlib001.p--used in qjscrdate001.js
var gRowHeight = [];
var gRowCssHeights = {};
var gDispMsg=true;
var gColor,gChangeColor='#d0ffb0';
var gColGroup='',gColGroupFixed='';
var gDoNotClear=false;
var gDisplayColors=false,gHighlightChanges=false;
var gFocus='^';
var gEnterFilter='';
var gOpenAfterAdd='';
var gBack='';
var gDispSortMsg='';
var gUpArrow='wsmarw01.gif',gDownArrow='wsmarw02.gif';
var gExtraTabLogic = true;
var gOffsetTop,gOffsetLeft,gMouseLeft=0;
var gMouseTop=0,gFilterLeft=0,gFilterTop=0;
var gFilter='',gClosedList='',gOpenList='';
var gBrowseScroll;
var gIsRefresh = false;
var gOpenValidateForm=false;
var gDelRow='';
var gLinkNumber=0;
var gNoPopup=false;
var gRefreshAfterDelete=false;
var gCheckFields=false;
var gPassedCheck=false;
var gFromRefreshDetails=false;
var gDimPercent=100;
var gAlwaysFetch=false;
var gKeepLockOpen=false;
var gMessageId=0;
var gFixedRows=false;
var gFixRows= [];
var gExpAll=false;
var gAllowClick=true,gAllowAnotherCapture=true;
var gPerformingSearch=false;
var gReverseSort = [];
var gUseCustomValidation = true;
var gShowLoading=true;
var gSaveAndPrint=false;
var gFavoritesKey='xxx';
var gSuppressMessage=false;
var gTimeoutMessage,gTimeoutLockdiv;
var gQfFade = false;
var gApplyFilter=false;
var gPreventTab=false;
var gSynchronous = true;
var gDoClosingActions = "default";
var gAutoOpenDetails;
var gUpdateFavorites = false;
var gHeadsUp = false;
var gDisplayRecordWarning = true;
var gExtraValidationField = [];
var gExtraValidationLabel = [];
var gIsLoggingOut = false;
var gIdleMinutes = 0, gIdleMax = 0; //used in family access
var gDialogIFrame;
var gIFDTimeout = [];
var gXmlHTTPObjects = [];
var gExtraDateValidationMessage = "";
var gExDtValLabel="",gExDtValField="",gExDtValLowDate="",gExDtValHighDate="";
var gAbortRequests=false,gAbortExtraInfo=false;
var gIsSafari=false,gIsIphone=false,gIsIpad=false,gIsMoz=false,gIsIE=false,gIsIE6=false,gIsIE7=false,gIsIE8=false,gIsIE9=false,gIsIE10=false,gIsIE11=false,gIsEdge=false,gIsMicrosoftEdge=false;gIsChrome=false,gIsBlackBerry=false,gIsOpera=false,gIsMac=false,gIsMobile=false;
var gCodeHandle,gDescHandle,gCodeType,gCodePopup,gCheckDone=true,gCheckFailed=false,gAllowBlur=true,gCodeValue,gCoordY,gCoordX,gExtraHandle;
var gTimeout = 250;
var gWidth,gHeight;
var gOpenRequest=false;
var gAddOn = 0;
var gExtraInfoXmlHttp;
var gUseMenuId='';
var gScrollDiv='';
var gOpening=false;
var gRandom="*init*";
var gEELHeight=200;
var gNewWinEmpBrwsChk=true;
var gPostForm=true;
var gAnimate=true;
var gLoginMessage='';
var gCheckDimensions=true;
var gSkipFinalValidation=false;
var gShowDelay = 800;
var gTtHideDelay = 10000;
var gTooltip = null;
var gTipElement = null;
var gPreventOldTT = false;
var gUpdateAMPM = true; //unused, but must keep since other programs may still reference this
var vAttchFile = [];
var abortNavClose = false;
var $openNavMenu = null;
var vBrwsInfo,brws;
var gHideDelay = 1500;
var gDate='',gDay,gCalendarImageName;
var gTimeoutId = false;
var gCalendar,doAddDay,validDate,gTreeWrap,gTreeWrapTABLE,gTreeOffsetTop;
var gDetailsView = false;
var gExpandDetails = [];
/* Global Object Instances */
var gTimer = {};
var menuInstances = {};
var gCheckEels = {};
var gQVpositions = {"qvTop":null,"qvLeft":null,"pLeft":null,"pTop":null};
var gQVdivs = {"wrap":null,"pointer":null,"body":null, "content":null, "title":null};
var gQVspan = {};
var gButtonHotKeys = {};
var gUseResponseText = false;
var gOpenMultRows = false;
var gSkipHTMLDecode = false;
var gAllowRightCurlyEEL = false;
var gFwBrowseCheckboxes = {};
var gNotifyMessage = {
    stack : {
        addpos2: 0,
        animation : true,
        dir1: "up",
        dir2: "left",
        firstpos1 : 15,
        firstpos2 : 15,
        nextpos1 : 15,
        nextpos2 : 15
    },
    timer : null,
    div : null
}
/*---------------------------------------------------------------------------------------------------
 - Extend Native Objects
 ---------------------------------------------------------------------------------------------------*/
Date.isLeapYear = function(year) {
    if (year % 4 == 0 && ((year % 100 != 0) || (year % 400 == 0))) {
        return true;
    } else {
        return false
    };
}
Date.daysInYear = function(year) {
    if (Date.isLeapYear(year)) {
         return 366;
    } else {
         return 365;
    }
}
Date.prototype.addDays = function(num) {
    var DAY = 1000*60*60*24;
    return new Date((num*DAY)+this.valueOf());
}
/*---------------------------------------------------------------------------------------------------
 - Global Object Classes
 ---------------------------------------------------------------------------------------------------*/
/*********************************
 * object: EventManager          *
 *-------------------------------*
 * manage adding/removing events *
 ********************************/
var EventManager = {
    _registry: null,

    Initialise: function()
    {
        if (!this._registry) {
            this._registry = [];
            // Register the cleanup handler on page unload.
            EventManager.Add(window, "unload", this.CleanUp);
        }
    },

    /**
     * Registers an event and handler with the manager.
     *
     * @param  obj         Object handler will be attached to.
     * @param  type        Name of event handler responds to.
     * @param  fn          Handler function.
     * @param  useCapture  Use event capture. False by default.
     *                     If you don't understand this, ignore it.
     *
     * @return True if handler registered, else false.
     */
    Add: function(obj, type, fn, useCapture)
    {
        // If a string was passed in, it's an id.
        if (typeof obj == "string") {
            obj = document.getElementById(obj);
        }
        if (obj == null || fn == null) {
            return false;
        }
        $(obj).on(type, fn);
        this._registry.push({obj: obj, type: type, fn: fn, useCapture: useCapture});
        return true;

    },
    /**
     * Removes all events attached to an object.
     *
     * @param  objIn         Object handler was attached to.
     * @param  typeIn       Name of event handler responds to (optional).
     * @param  fnIn         Handler function (optional).
     *
     * If only the Object is supplied, then all registered events will be removed.
     * If type or fn are supplied then only events matching the supplies values will be removed.
     */
    Remove: function (objIn, typeIn, fnIn, useCaptureIn){
         $(objIn).off(typeIn, fnIn);
         return false;
    },
    /**
     * Cleans up all the registered event handlers.
     */
    CleanUp: function()
    {
        var o;
        try {
            if (EventManager._registry) {
                for (var i = 0; i < EventManager._registry.length; i++) {
                    $(EventManager._registry[i].obj).unbind();
                }
                EventManager._registry = null;
            }
        } catch(ex){}
    }
};
EventManager.Initialise();

/*******************************
 * object: cBrowserInfo        *
 *-----------------------------*
 * browser detection           *
 *******************************/
function cBrowserInfo() {

   var userAgent    = navigator.userAgent.toLowerCase();
   var appVer       = navigator.appVersion.toLowerCase();

   this.version     = parseInt(navigator.appVersion,10);
   this.subversion  = this.version;
   this.name        = navigator.appName;
   this.browser     = '';
   this.platform    = '';
   this.supported   = false;
   this.isMobile    = false;
   this.mac         = (userAgent.indexOf('mac')!=-1);
   this.chromeOs    = (userAgent.indexOf('cros')!=-1);

   //is it a gecko-based browser
   this.gecko = ((!this.khtml)&&(navigator.product)&&(navigator.product.toLowerCase()=="gecko"));

   //Browsers
   this.ie = false;
   this.firefox = false;
   this.chrome = false;
   this.safari = false;
   this.op = false;
   this.edge = false;
   this.microsoftEdge = false;
   if (userAgent.indexOf("edge") != -1)
       this.edge = true;
   else if (userAgent.indexOf("edg/") != -1)
       this.microsoftEdge = true;
   else {
       this.ie      = ((appVer.indexOf('msie') != -1) && (userAgent.indexOf('opera') == -1)) || (!!userAgent.match(/trident\/7.0;/) || !!userAgent.match(/trident\/8.0;/));
       this.firefox = ((userAgent.indexOf('mozilla/5')!=-1) && (userAgent.indexOf('spoofer')==-1) && (userAgent.indexOf('compatible')==-1) && (userAgent.indexOf('opera')==-1)  && (userAgent.indexOf('webtv')==-1) && (userAgent.indexOf('hotjava')==-1) && ((navigator.vendor=="Firefox")||(userAgent.indexOf('firefox')!=-1)));
       this.chrome  = (userAgent.indexOf('chrome') != -1 || userAgent.indexOf('crios') != -1);
       this.safari  = (!this.chrome && (userAgent.indexOf('safari') != -1));
       this.op      = (userAgent.indexOf('opera') != -1);
   }

   this.operaMini   = false;
   this.chromeframe = (this.chrome && (typeof window.externalHost !== 'undefined')) || (userAgent.indexOf('chromeframe')!=-1);

   //mobile browsers
   this.bb          = (userAgent.indexOf('blackberry')!=-1);
   this.pre         = (userAgent.indexOf(' pre')!=-1 && userAgent.indexOf(' presto')==-1);
   this.android     = (userAgent.indexOf('android')!=-1);
   this.iphone      = (userAgent.indexOf('iphone')!=-1);
   this.ipad        = (userAgent.indexOf('ipad')!=-1);
   this.ipod        = (userAgent.indexOf('ipod')!=-1);
   this.iemobile    = (userAgent.indexOf('iemobile')!=-1 || userAgent.indexOf('windows ce;')!=-1);
   this.operaMini   = (this.op && userAgent.toLowerCase().indexOf('mini/') != -1);

   //touch device
   this.touchDevice = 'ontouchstart' in document.documentElement;

   if (this.chromeframe) {
   	 this.ie = false
  	 this.chrome = true
   }

   if (this.ie){ //IE
       this.gecko = false;
       var iePos;
       if (!!userAgent.match(/trident\/7.0;/) || !!userAgent.match(/trident\/8.0;/)) {
           iePos = userAgent.indexOf('rv:');
           if (iePos = userAgent.indexOf('rv:') < 0) {
               this.version = 11;
           } else {
               this.version = document.documentMode || parseFloat(userAgent.substring(iePos+3,userAgent.indexOf(')',iePos)))
           }
       } else {
           iePos = userAgent.indexOf('msie');
           this.version = document.documentMode || parseFloat(userAgent.substring(iePos+5,userAgent.indexOf(';',iePos)));
       }
       this.browser = 'IE';
       this.brwsInfo = 'Internet Explorer';
       if (this.version > 6) {
           this.supported = true;
       }
   } else if (this.edge) { //Edge
       pos1 = userAgent.indexOf('edge/');
       this.version = parseFloat(userAgent.substring(pos1 + 5, userAgent.indexOf('.', pos1)));
       this.browser = 'Edge';
       this.brwsInfo = 'Edge';
       this.supported = false;
   }  else if (this.microsoftEdge) { //Edge Chromium
       pos1 = userAgent.indexOf('edg/');
       this.version = parseFloat(userAgent.substring(pos1 + 4, userAgent.indexOf('.', pos1)));
       this.browser = 'Microsoft Edge';
       this.brwsInfo = 'Microsoft Edge';
       this.supported = true;
   } else if (this.firefox) { //Firefox
        var is_moz_ver = (navigator.vendorSub)?navigator.vendorSub:0;
        if(!is_moz_ver) {
            is_moz_ver = userAgent.indexOf('firefox/');
            is_moz_ver = userAgent.substring(is_moz_ver+8);
            is_moz_ver = parseFloat(is_moz_ver);
        }
        if(!is_moz_ver) {
            is_moz_ver = userAgent.indexOf('rv:');
            is_moz_ver = userAgent.substring(is_moz_ver+3);
            is_paren   = is_moz_ver.indexOf(')');
            is_moz_ver = is_moz_ver.substring(0,is_paren);
        }
        this.version = parseFloat(is_moz_ver);
        this.browser = 'Moz';
        this.brwsInfo = 'Firefox';
        if (this.version > 2) {
            this.supported = true;
        }
   } else if (this.chrome) { //Chrome
        if (userAgent.indexOf('crios') != -1) {
            this.version = parseFloat(userAgent.substring(userAgent.indexOf('crios/') + 6, userAgent.indexOf('.', userAgent.indexOf('crios/'))));
        } else {
            this.version = parseFloat(userAgent.substring(userAgent.indexOf('chrome/') + 7, userAgent.indexOf('.', userAgent.indexOf('chrome/'))));
        }
        this.supported = true; //preventing "unsupported" message from displaying per John

        if (this.chromeframe) {
	        this.brwsInfo = 'ChromeFrame';
	        this.browser = 'ChromeFrame';
	    }
	    else {
	    	this.brwsInfo = 'Chrome';
        	this.browser = 'Chrome';
        }
   } else if (this.safari) { //Safari
        var pos1, pos2, pos3;
        pos1 = userAgent.indexOf('version/');
        pos2 = userAgent.indexOf('safari/');
        pos3 = userAgent.indexOf('mobile/');

        if (pos1 > 0 && pos2 > 0 && pos3 < 0){
            this.version = parseFloat(userAgent.substring(pos1 + 8, pos2 - 1));
        } else if (pos1 > 0 && pos3 > 0){ //mobile
            if (pos2 > pos1 && pos3 > pos1) {
                if (pos2 < pos3) {
                    this.version = parseFloat(userAgent.substring(pos1 + 8, pos2 - 1));
                }
                else {
                    this.version = parseFloat(userAgent.substring(pos1 + 8, pos3 - 1));
                }
            }
            else if (pos2 > pos1) {
                this.version = parseFloat(userAgent.substring(pos1 + 8, pos2 - 1));
            }
            else {
                this.version = parseFloat(userAgent.substring(pos1 + 8, pos3 - 1));
            }
            this.isMobile   = true;
        } else if (pos1 < 0 && pos2 > 0) { //version < 3
            pos1 = parseFloat(userAgent.substring(pos2 + 7).replace("_adobe", ''));
            if (pos1 < 400) {
                this.version = 1;
            } else {
                this.version = 2;
            }
        }
        if (this.version > 1) {
            this.supported = true;
        }
        this.brwsInfo = 'Safari';
        this.browser = 'Safari';
   } else if (this.op) { //Opera
        if (userAgent.toLowerCase().indexOf('opera mini') != -1)
            this.opv = ( parseFloat( userAgent.substring(userAgent.toLowerCase().indexOf('opera mini')+11)) );
        else
            this.opv = ( parseFloat( userAgent.substring(userAgent.toLowerCase().indexOf('opera')+6)) );

        this.op4 = ( this.op && this.opv >= 7 );
        this.op5 = ( this.op && this.opv >= 7 );
        this.op6 = ( this.op && this.opv >= 7 );
        this.op7 = ( this.op && this.opv >= 7 );
        this.op8 = ( this.op && this.opv >= 8 );
        this.op9 = ( this.op && this.opv >= 9 );

        //Mobile
        this.version = this.opv;
        this.brwsInfo='Opera';
        this.browser = 'Opera';
        if (this.operaMini) {
            this.supported = true;
        } else {
            this.supported = false;
        }
   } else if (this.bb) {
       this.version = 0;
       this.brwsInfo = 'Browser' + ' ' + this.version;
       this.browser = 'Browser' + ' ' + this.version;
       if (this.version < 5) {
           this.supported = false;
       }
       else{
           this.supported = true;
       }
   } else {
       this.version = 0;
       this.brwsInfo='Undetermined';
   }

   if (isNaN(this.version))
       this.version=0;


   //supported OS
   this.win     = ( (userAgent.indexOf("windows")!=-1) || (userAgent.indexOf("16bit")!=-1) || (userAgent.indexOf("win 9x")!=-1) || (userAgent.indexOf("win32")!=-1) );
   this.sun     = (userAgent.indexOf("sunos")!=-1);
   this.linux   = (userAgent.indexOf("inux")!=-1);
   this.freebsd = (userAgent.indexOf("freebsd")!=-1);
   this.bsd     = (userAgent.indexOf("bsd")!=-1);
   this.unix    = ((userAgent.indexOf("x11")!=-1) || this.sun || this.linux || this.bsd || this.freebsd);
   this.os2     = ((userAgent.indexOf("os/2")!=-1) || (navigator.appVersion.indexOf("OS/2")!=-1) || (userAgent.indexOf("ibm-webexplorer")!=-1));
   //mobile OS
   this.webkit = (userAgent.indexOf("webkit") != -1);

   //OS Versions
   //Windows
    this.win95      = false;
    this.winme      = false;
    this.win2k      = false;
    this.winxp      = false;
    this.win2k3     = false;
    this.winvista   = false;
    this.win7       = false;
    this.win8       = false;
    this.win98      = false;
    this.winnt      = false;
    this.win10      = false;
    //mac
    this.mac68k     = false;
    this.macppc     = false;
    this.macclassic = false;
    this.macosx     = false;

    if (this.win) {
        this.platform = 'Win32';
        this.mac = false;

        if (userAgent.indexOf("windows nt 10") != -1) {
            this.win10 = true;
            this.osName='Windows 10';
        } else if (userAgent.indexOf("windows nt 6.3") != -1) {
            this.win8 = true;
            this.osName='Windows 8.1';
        } else if (userAgent.indexOf("windows nt 6.2") != -1) {
            this.win8 = true;
            this.osName='Windows 8';
        } else if (userAgent.indexOf("windows nt 6.1") != -1) {
            this.win7 = true;
            this.osName='Windows 7';
        } else if (userAgent.indexOf("windows nt 6.0") != -1) {
            this.winvista = true;
            this.osName='Windows Vista';
        } else if ((userAgent.indexOf("windows nt 5.1")!=-1) || (userAgent.indexOf("windows xp")!=-1)) {
            this.winxp = true;
            this.osName='Windows XP';
        } else if ((userAgent.indexOf("windows nt 5.2")!=-1)) {
            this.win2k3 = true;
            this.osName='Windows Server 2003';
        } else if ((userAgent.indexOf("windows nt 5.0")!=-1) || (userAgent.indexOf("windows 2000")!=-1)) {
            this.win2k = true;
            this.osName='Windows 2000';
        } else if ((userAgent.indexOf("win 9x 4.90")!=-1)) {
            this.winme = true;
            this.osName='Windows Millennium (ME)';
        } else if ((userAgent.indexOf("win98")!=-1) || (userAgent.indexOf("windows 98")!=-1)) {
            this.win98 = true;
            this.osName='Windows 98';
        } else if ((userAgent.indexOf("winnt")!=-1) || (userAgent.indexOf("windows nt")!=-1)) {
            this.winnt = true;
            this.osName='Windows NT';
        } else if ((userAgent.indexOf("win95")!=-1) || (userAgent.indexOf("windows 95")!=-1)) {
            this.win95 = true;
            this.osName='Windows 95';
        } else if (this.iemobile) {
            this.isMobile=true;
            this.osName='Windows Mobile';
        } else {
            this.osName='Undetermined';
        }
    } else if (this.mac) {
        this.platform = 'MacIntel';
        if ((userAgent.indexOf("68k")!=-1) || (userAgent.indexOf("68000")!=-1)) {
            this.mac68k = true;
        } else if ((userAgent.indexOf("ppc")!=-1) || (userAgent.indexOf("powerpc")!=-1)) {
            this.macppc  = true;
        }
        if (this.ipod) {
            this.platform = "iPod";
            this.isMobile = true;
            this.osName = 'Apple iPod';
            try {
                var vIndex = userAgent.indexOf("iphone os");
                var vSub = userAgent.substring(vIndex + 10, 999);
                var vIndex2 = vSub.indexOf(" ");
                vSub = vSub.substring(0, vIndex2);
                this.osName += " " + vSub.replace(/_/g, ".");
            } catch (er) {}
        } else if (this.iphone) {
            this.platform = "iPhone";
            this.isMobile = true;
            this.osName = 'Apple iPhone';
            try {
                var vIndex = userAgent.indexOf("iphone os");
                var vSub = userAgent.substring(vIndex + 10, 999);
                var vIndex2 = vSub.indexOf(" ");
                vSub = vSub.substring(0, vIndex2);
                this.osName += " " + vSub.replace(/_/g, ".");
            } catch (er) {}
        } else if (this.ipad) {
            this.platform = "iPad";
            this.isMobile = false;
            this.osName = 'Apple iPad';
            try {
                var vIndex = userAgent.indexOf("cpu os");
                var vSub = userAgent.substring(vIndex + 7, 999);
                var vIndex2 = vSub.indexOf(" ");
                vSub = vSub.substring(0, vIndex2);
                this.osName += " " + vSub.replace(/_/g, ".");
            } catch (er) {}
        } else if (userAgent.indexOf('mac os x 10')!=-1){
           var strIndex1;
           var strIndex2;
           var strA = "";
           var strB = "";
           var osVersion = "";

           strIndex1 = userAgent.indexOf('mac os x 10')+9;
           strA = userAgent.substring(strIndex1);
           strIndex2 = strA.indexOf(";");
           strB = userAgent.substring(strIndex1, strIndex1 + strIndex2);
           osVersion = strB.replace(/_/g, ".");
           this.osName='Mac OS X ' + osVersion;
       } else if ((userAgent.indexOf("mac os x")!=-1) || (this.ie && (this.version >= 5.2))) {
            this.macosx = true;
            this.macclassic = false;
            this.osName='Mac OS X';
        } else {
            this.macclassic = true;
            this.macosx = false;
            this.osName='Mac Pre-OS X';
        }
    } else if (this.bb || this.operaMini) {
        this.isMobile=true;
        this.platform = 'BlackBerry';
        this.osName='BlackBerry';
        this.bb=true;
    } else if (this.pre) {
        this.isMobile=true;
        this.platform = 'Palm';
        this.osName='Palm Pre';
    } else if (this.android) {
        this.isMobile=true;
        this.platform = 'Android';
        this.osName='Android';
    } else if (this.chromeOs) {
        this.platform = 'Chrome OS';
        this.osName='Chrome OS';

    } else {
        this.platform = 'Undetermined';
        this.osName='Undetermined';
    }

    this.subversion = this.version;
    this.version = Math.floor(this.version);

    if (this.isMobile == false) {
        this.brwsInfo += " " + this.subversion;
    } else if (this.operaMini == false) {
        this.brwsInfo += " Mobile " + this.subversion;
    } else {
        this.brwsInfo += " Mini " + this.subversion;
    }
}
detectBrowser();

// +---------------------------------------------------------------+
// | DO NOT REMOVE THIS                                            |
// +---------------------------------------------------------------+
// | DynamicTree                                                   |
// | Author: Cezary Tomczak [www.gosu.pl]                          |
// | Free for any use as long as all copyright messages are intact |
// +---------------------------------------------------------------+
// | Last updated: 2004-11-17                                      |
// +---------------------------------------------------------------+
function DynamicTree(id) {
   this.foldersAsLinks = false;
    this.path = "images/";
    this.img = {
        "branch": "icon_branch",
        "doc": "icon_doc",
        "folder": "icon_folder",
        "folderOpen": "icon_folderOpen",
        "leaf": "icon_leaf",
        "leafEnd": "icon_leafEnd",
        "node": "icon_node",
        "nodeStart": "icon_nodeStart",
        "nodeEnd": "icon_nodeEnd",
        "nodeOpen": "icon_nodeOpen",
        "nodeOpenStart": "icon_nodeOpenStart",
        "redX": "icon_redX",
        "dev": "icon_dev",
        "tutorial": "icon_tutorial",
        "nodeOpenEnd": "icon_nodeOpenEnd" };

    this.cookiePath = "";
    this.cookieDomain = "";

    this.init = function() {
        /* Check whether array contains given string */
        if (!Array.prototype.contains) {
            Array.prototype.contains = function(s) {
                for (var i = 0; i < this.length; ++i) {
                    if (this[i] === s) { return true; }
                }
                return false;
            };
        }

        /* Remove elements with such value (mutates) */
        if (!Array.prototype.removeByValue) {
            Array.prototype.removeByValue = function(value) {
                var i, indexes = [];
                for (i = 0; i < this.length; ++i) {
                    if (this[i] === value) {
                        indexes.push(i);
                    }
                }
                for (i = indexes.length - 1; i >= 0; --i) {
                    this.splice(indexes[i], 1);
                }
            };
        }

        /* Remove elements judged 'false' by the passed function (mutates) */
        if (!Array.prototype.filter) {
            Array.prototype.filter = function(func) {
                var i, indexes = [];
                for (i = 0; i < this.length; ++i) {
                    if (!func(this[i])) {
                        indexes.push(i);
                    }
                }
                for (i = indexes.length - 1; i >= 0; --i) {
                    this.splice(indexes[i], 1);
                }
            };
        }

        /* Get the last element from the array */
        if (!Array.prototype.getLast) {
            Array.prototype.getLast = function() {
                return this[this.length-1];
            };
        }

        /* Get the first element from the array */
        if (!Array.prototype.getFirst) {
            Array.prototype.getFirst = function() {
                return this[0];
            };
        }

        /* Strip whitespace from the beginning and end of a string */
        if (!String.prototype.trim) {
            String.prototype.trim = function() {
                return this.replace(/^\s*|\s*$/g, "");
            };
        }

        /* Replace ? tokens with variables passed as arguments in a string */
        String.prototype.format = function() {
            if (!arguments.length) { throw "String.format() failed, no arguments passed, this = "+this; }
            var tokens = this.split("?");
            if (arguments.length != (tokens.length - 1)) { throw "String.format() failed, tokens != arguments, this = "+this; }
            var s = tokens[0];
            for (var i = 0; i < arguments.length; ++i) {
                s += (arguments[i] + tokens[i + 1]);
            }
            return s;
        };
        this.parse(document.getElementById(this.id).childNodes, this.tree, 1);
        this.loadState();
        addEvent(window, "unload", function(e) { self.saveState(); })
        this.updateHtml();
    };
    this.parse = function(nodes, tree) {
        for (var i = 0; i < nodes.length; i++) {
            if (nodes[i].nodeType == 1) {
                if (!nodes[i].className) { continue; }
                if (!nodes[i].id) {
                    nodes[i].id = this.id + "-" + (++this.count);
                }
                var node = new Node();
                node.id = nodes[i].id;
                if (nodes[i].firstChild) {
                    // whitespace characters before Anchor, check for: doc, folder, test on all browsers
                    //if (nodes[i].className == "doc" && nodes[i].firstChild.nodeType != 1) { nodes[i].removeChild(nodes[i].firstChild); }
                    if (nodes[i].firstChild.tagName == "A") {
                        var a = nodes[i].firstChild;
                        if (a.firstChild) {
                            node.text = a.firstChild.nodeValue.trim();
                        }
                        if (a.href) {
                            node.href = a.href;
                        }
                        if (a.title) {
                            node.title = a.title;
                        }
                        if (a.target) {
                            node.target = a.target;
                        }
                        if (a.getAttribute("tooltip") && a.getAttribute("tooltip") != "") {
                            a.tooltip = a.getAttribute("tooltip");
                            node.tooltip = a.tooltip;
                        }
                    } else {
                        node.text = nodes[i].firstChild.nodeValue.trim();
                    }
                }
                node.parentNode = tree;
                node.childNodes = (nodes[i].className == "folder" ? [] : null);
                node.isDoc      = (nodes[i].className == "doc");
                node.isFolder   = (nodes[i].className == "folder");
                node.isRedX     = (nodes[i].className == "redX");
                node.isDev      = (nodes[i].className == "dev");
                node.isTutorial = (nodes[i].className == "tutorial");

                tree.childNodes.push(node);
                this.allNodes[node.id] = node;
            }
            if (nodes[i].nodeType == 1 && nodes[i].childNodes) {
                this.parse(nodes[i].childNodes, tree.childNodes.getLast());
            }
        }
    };
    this.nodeClick = function(id) {
        var el = document.getElementById(id+"-section");
        var node = document.getElementById(id+"-node");
        var icon = document.getElementById(id+"-icon");

        if (!el) {
           return;
        }

         if (el.style.display == "block") {

            //Only remove newly closed folders from Administrative Setup Procedures folder from the EAP Folder Array
            if (id.substring(0,9) == 'tree-ASP/') {
               //Remove the EAP folder from the EAP Folder Array
               removeFolder(id);
            }
            else if (id.substring(0,7) == 'tree-SM') {
               //Remove the SM folder from the SM Folder Array
               removeFolder(id);
            }
            if (typeof($) == "function" && !gIsIE7) {
                $(el).slideUp();
            } else {
                el.style.display = "none";
            }

            if (this.allNodes[id].isLast()) {
                 node.className = this.img.nodeEnd;
            } else if (this.allNodes[id].isFirst()) {
                node.className = this.img.nodeStart;
            } else {
                node.className = this.img.node;
            }
            icon.className = this.img.folder;
            this.opened.removeByValue(id);
        } else {
            //Only add newly opened folders from Administrative Setup Procedures folder to the EAP Folder Array
            if (id.substring(0,9) == 'tree-ASP/') {
               //Add the EAP folder to the EAP Folder Array
               addFolder(id);
            } else if (id.substring(0,7) == 'tree-SM') {
               //Add the SM folder to the SM Folder Array
               addFolder(id);
            }

            if (typeof($) == "function" && !gIsIE7) {
                $(el).slideDown();
            } else {
                el.style.display = "block";
            }

            if (this.allNodes[id].isLast()) {
                node.className = this.img.nodeOpenEnd;
            } else if (this.allNodes[id].isFirst()) {
                node.className = this.img.nodeOpenStart;
            } else {
                node.className = this.img.nodeOpen;
            }
            icon.className = this.img.folderOpen;
            this.opened.push(id);
        }
        /* fix ie bug - images not showing */
        if (node.outerHTML) {
            node.outerHTML = node.outerHTML;
        }
        if (icon.outerHTML) {
            icon.outerHTML = icon.outerHTML;
        }
    };

   //Only used in Educator Access Plus right now - Remove the newly closed folder from the Open Folders Array
   function removeFolder(id)
   {
      //Check if we are in Educator Access Plus - if not, skip this function entirely
      if (document.folderstate != undefined) {
         var FolderArray;
         var vOpenFolders = document.folderstate.openFolders.value;

         var srchNdx = 0;  // srchNdx will keep track of where in the whole line
                           // of oldStr are we searching.
         var newOpenFolders = "";  // newStr will hold the altered version of oldStr.

         // As long as there are strings to replace, this loop will run.
         while (vOpenFolders.indexOf(',',srchNdx) != -1) {
            // Put it all the unaltered text from one findStr to the next findStr into newStr.
            newOpenFolders += vOpenFolders.substring(srchNdx,vOpenFolders.indexOf(',',srchNdx));

            // Instead of putting the old string, put in the new string instead.
            newOpenFolders += '|';

            // Now jump to the next chunk of text till the next findStr.
            srchNdx = (vOpenFolders.indexOf(',',srchNdx) + ','.length);
         }
         // Put whatever's left into newStr.
         newOpenFolders += vOpenFolders.substring(srchNdx,vOpenFolders.length);

         FolderArray = newOpenFolders.split("|");
         if ( FolderArray == '') {
            //do nothing
         } else if ( FolderArray == ',') {
            //do nothing
            FolderArray = "";
         } else {
            for(var y=0; y < FolderArray.length; y++) {
               if (FolderArray[y] == id) {
                  //found this id in the string - remove it
                  FolderArray.splice(y,1);
               }
            }
         }
         //assign the new Open Folder Array
         document.folderstate.openFolders.value = FolderArray;
      }
    }

    //Only used in Educator Access Plus right now - Add the newly opened folder to the Open Folders Array
    function addFolder(id)
    {
       //Check if we are in Educator Access Plus - if not, skip this function entirely
       if (document.folderstate != undefined) {
         var FolderArray;
         var vOpenFolders = document.folderstate.openFolders.value;

         var vAdd = true;

         FolderArray = vOpenFolders.split("|");
         if (FolderArray == '') {
            FolderArray += id + "|";
         } else if ( FolderArray == ',') {
            FolderArray = "";
         } else {
            for(var y=0;y < FolderArray.length;y++) {
               if (FolderArray[y] == id) {
                  //found this id in the string - do not add it again
                  vAdd = false;
               }
            }
            if (vAdd) {
               //we did not find it - check commas
               FolderArray = vOpenFolders.split(",");
               for(var y=0; y < FolderArray.length; y++) {
                  if (FolderArray[y] == id) {
                     //found this id in the string - do not add it again
                     vAdd = false;
                  }
               }
            }
            if (vAdd) {
               FolderArray += id + "|";
            }
         }
         //assign the new Open Folder Array
         document.folderstate.openFolders.value = FolderArray;
      }
   }

   this.toHtml = function() {
        var s = "";
        var nodes = this.tree.childNodes;
        for (var i = 0; i < nodes.length; i++) {
            s += nodes[i].toHtml();
        }
        return s;
    };
    this.updateHtml = function() {
        document.getElementById(this.id).innerHTML = this.toHtml();
    };

    //Open all folder 2 levels deep
    this.loadState = function() {
       var opened = "";   /*all 1st level folders to be opened*/
       var subopened = "";   /*all 2nd level folders to be opened*/

       var all = document.getElementById(this.id).childNodes;

        //open all folders on first level
        for(var i=0;i < all.length;i++) {
            if(all[i].className == "folder") {
                if (document.getElementById("openLevel1")) {
                   if (document.getElementById("openLevel1").value=='yes') {
                      /*append folder to opened variable*/
                      opened += all[i].id + "|";

                      /*FireFox check - need to populate so we know to check for subfolders*/
                      subopened += all[i].id + "|";
                   }
                } else {
                   /*append folder to opened variable*/
                   opened += all[i].id + "|";

                   /*FireFox check - need to populate so we know to check for subfolders*/
                   subopened += all[i].id + "|";
                }
            }

            /*Check if the subfolder is populated (Firefox REQUIRES this check, IE does not)*/
            if (subopened) {
               /*Retrieve all the 1st level's subfolders*/
               var allOptions = document.getElementById(all[i].id).childNodes;

               //open all folders on 2nd level
               for(var n=0;n < allOptions.length;n++) {
                  if(allOptions[n].className == "folder") {
                     if (document.getElementById("openLevel2")) {
                        if (document.getElementById("openLevel2").value=='yes') {
                           /*add the 2nd level subfolder to the opened variable*/
                           opened += allOptions[n].id + "|";
                        }
                     } else {
                        /*add the 2nd level subfolder to the opened variable*/
                        opened += allOptions[n].id + "|";
                     }
                  }
               }
            }
            /*clear out the subfolder variable to do the check again for the next 1st level folder*/
            subopened = "";
        }

        /*Open all 1st and 2nd level folders*/
        if (opened) {
            this.opened = opened.split("|");
            this.opened.filter (
                function(id) {
                    return self.allNodes[id] && self.allNodes[id].isFolder && self.allNodes[id].childNodes.length;
                }
            );
        }
    };

    this.saveState = function() {
        if (this.opened.length) {
            this.cookie.set("opened", this.opened.join("|"), 3600*24*30, this.cookiePath, this.cookieDomain);
        } else {
            this.clearState();
        }
    };
    this.clearState = function() {
        this.cookie.del("opened");
    };

    function Node(id, text, parentNode, childNodes, isDoc, isFolder, isRedX, isDev, isTutorial) {
        this.id = id;
        this.text = text;
        this.parentNode = parentNode;
        this.childNodes = childNodes;
        this.isDoc = isDoc;
        this.isFolder = isFolder;
        this.isRedX = isRedX;
        this.isDev = isDev;
        this.isTutorial = isTutorial;
        this.href = "";
        this.title = "";
        this.target = "";
        this.tooltip = "";

        this.isLast = function() {
            if (this.parentNode) {
                return this.parentNode.childNodes.getLast().id == this.id;
            }
            throw "DynamicTree.Node.isLast() failed, this func cannot be called for the root element";
        };
        this.isFirst = function() {
            if (this.parentNode) {
                return this.parentNode.childNodes[0].id == this.id;
            }
            throw "DynamicTree.Node.isFirst() failed, this func cannot be called for the root element";
        };
        this.toHtml = function() {

            var s = '<div class="?" id="?">'.format((this.isFolder ? "folder" : "doc"), this.id);

            if (this.isFolder) {
                var nodeIcon;
                if (this.title == "description") {
                  s += '<div class="?">&nbsp;</div>'.format((this.isLast() ? self.img.leafEnd : self.img.branch));
                  s += this.text;
               } else {
                   if (this.childNodes.length) {
                       nodeIcon = (
                                       self.opened.contains(this.id) ?
                                       (this.isLast() ? self.img.nodeOpenEnd : (this.isFirst() ? self.img.nodeOpenStart : self.img.nodeOpen))
                                       :
                                       (this.isLast() ? self.img.nodeEnd     : (this.isFirst() ? self.img.nodeStart     : self.img.node))
                                  );
                   } else {
                       nodeIcon = (this.isLast() ? self.img.leafEnd : self.img.leaf);
                   }
                   var icon = ((self.opened.contains(this.id) && this.childNodes.length) ? self.img.folderOpen : self.img.folder);
                   if (this.childNodes.length) { s += '<a href="javascript:void(0)" onclick="?.nodeClick(\'?\')">'.format(self.id, this.id); }
                   s += '<div id="?-node" class="?">&nbsp;</div>'.format(this.id, nodeIcon);
                   if (this.childNodes.length) { s += '</a>'; }
                   s += '<div id="?-icon" class="?" onclick="?.nodeClick(\'?\')">&nbsp;</div>'.format(this.id, icon, self.id, this.id);

                   if (this.href.indexOf("doNothing") > 0) {
                      this.href = 'javascript:?.nodeClick(\'?\')'.format(self.id,this.id);
                      s += '<a href="?"???>?</a>'.format(this.href, (this.title ? ' title="?"'.format(this.title) : ""), (this.tooltip ? ' tooltip="?"'.format(this.tooltip) : ""), (this.target ? ' target="?"'.format(this.target) : ""), this.text);
                   } else if (self.foldersAsLinks) {
                      s += '<a href="?"???>?</a>'.format(this.href, (this.title ? ' title="?"'.format(this.title) : ""), (this.tooltip ? ' tooltip="?"'.format(this.tooltip) : ""), (this.target ? ' target="?"'.format(this.target) : ""), this.text);
                   } else {
                     this.href = 'javascript:?.nodeClick(\'?\')'.format(self.id,this.id);
                     s += '<a href="?"??? tabindex="-1" style="text-decoration:none">?</a>'.format(this.href, (this.title ? ' title="?"'.format(this.title) : ""), (this.tooltip ? ' tooltip="?"'.format(this.tooltip) : ""), (this.target ? ' target="?"'.format(this.target) : ""), this.text);
                   }

                   if (this.childNodes.length) {
                       s += '<div class="section?" id="?-section"'.format((this.isLast() ? " last" : ""), this.id);
                       if (self.opened.contains(this.id)) {
                           s += '  style="display: block;"'; }
                       s += '>';
                       for (var i = 0; i < this.childNodes.length; i++) {
                           s += this.childNodes[i].toHtml();
                       }
                       s += '</div>';
                   }
               }
            }
            if (this.isDoc || this.isRedX || this.isDev || this.isTutorial) {
               if (this.target=="none")  {
                  this.target="";
                  if (this.isDev) {
                     s += '<div class="?">&nbsp;</div><div class="?" onclick="?.setActive(\'?\');this.blur();remJs(\'?\');">&nbsp;</div>'.format((this.isLast() ? self.img.leafEnd : self.img.leaf), self.img.dev,self.id, this.id, escape(this.href));
                  } else if (this.isRedX) {
                     s += '<div class="?">&nbsp;</div><div class="?" onclick="?.setActive(\'?\');this.blur();remJs(\'?\');">&nbsp;</div>'.format((this.isLast() ? self.img.leafEnd : self.img.leaf), self.img.redX,self.id, this.id, escape(this.href));
                  } else if (this.isTutorial) {
                     s += '<div class="?">&nbsp;</div><div class="?" onclick="?.setActive(\'?\');this.blur();remJs(\'?\');">&nbsp;</div>'.format((this.isLast() ? self.img.leafEnd : self.img.leaf), self.img.tutorial,self.id, this.id, escape(this.href));
                  } else {
                     s += '<div class="?">&nbsp;</div><div class="?" onclick="?.setActive(\'?\');this.blur();remJs(\'?\');">&nbsp;</div>'.format((this.isLast() ? self.img.leafEnd : self.img.leaf), self.img.doc,self.id, this.id, escape(this.href));
                  }
                  //Altered to make no cursor change upon mouseover and no action upon click
                  s += '<a class="link-disabled" style="text-decoration:none; color:gray;" id="?-link" href="Javascript:void(0);">?'.format(this.id, this.text);
                  s += '<span>?</span></a>'.format(this.title);
               }
               else if (this.target=="span")
               {
                  this.target="";
                  if (this.isDev) {
                     s += '<div class="?">&nbsp;</div><div class="?" onclick="?.setActive(\'?\');this.blur();remJs(\'?\');">&nbsp;</div>'.format((this.isLast() ? self.img.leafEnd : self.img.leaf), self.img.dev,self.id, this.id, escape(this.href));
                  } else if (this.isRedX) {
                     s += '<div class="?">&nbsp;</div><div class="?" onclick="?.setActive(\'?\');this.blur();remJs(\'?\');">&nbsp;</div>'.format((this.isLast() ? self.img.leafEnd : self.img.leaf), self.img.redX,self.id, this.id, escape(this.href));
                  } else if (this.isTutorial) {
                     s += '<div class="?">&nbsp;</div><div class="?" onclick="?.setActive(\'?\');this.blur();remJs(\'?\');">&nbsp;</div>'.format((this.isLast() ? self.img.leafEnd : self.img.leaf), self.img.tutorial,self.id, this.id, escape(this.href));
                  } else {
                     s += '<div class="?">&nbsp;</div><div class="?" onclick="?.setActive(\'?\');this.blur();remJs(\'?\');">&nbsp;</div>'.format((this.isLast() ? self.img.leafEnd : self.img.leaf), self.img.doc,self.id, this.id, escape(this.href));
                  }
                  s += '<a class="link" onclick="?.setActive(\'?\');this.blur();" id="?-link" href="?"?>?'.format(self.id, this.id, this.id, this.href, (this.target ? ' target="?"'.format(this.target) : ""), this.text);
                  s += '<span>?</span></a>'.format(this.title);
               } else {
                  s += '<div class="?">&nbsp;</div>'.format((this.isLast() ? self.img.leafEnd : self.img.leaf));
                  s += '<a class="link" onclick="?.setActive(\'?\');this.blur();" id="?-link" href="?"???>'.format(self.id, this.id, this.id, this.href, (this.target ? ' target="?"'.format(this.target) : ""), (this.title ? ' title="?"'.format(this.title) : ""), (this.tooltip ? ' tooltip="?"'.format(this.tooltip) : "")  );
                  if (this.isDev) {
                     s += '<div class="?">&nbsp;</div>'.format(self.img.dev);
                  } else if (this.isRedX) {
                     s += '<div class="?">&nbsp;</div>'.format(self.img.redX);
                  } else if (this.isTutorial) {
                     s += '<div class="?">&nbsp;</div>'.format(self.img.tutorial);
                  } else {
                     s += '<div class="?">&nbsp;</div>'.format(self.img.doc);
                  }
                  s += '<span>?</span></a>'.format(this.text);
               }
            }
            s += '</div>';
            return s;
        };
    }

    function Cookie() {
        this.get = function(name) {
            var cookies = document.cookie.split(";");
            for (var i = 0; i < cookies.length; ++i) {
                var a = cookies[i].split("=");
                if (a.length == 2) {
                    a[0] = a[0].trim();
                    a[1] = a[1].trim();
                    if (a[0] == name) {
                        return unescape(a[1]);
                    }
                }
            }
            return "";
        };
        this.set = function(name, value, seconds, path, domain, secure) {
            var cookie = (name + "=" + escape(value));
            if (seconds) {
                var date = new Date(new Date().getTime()+seconds*1000);
                cookie += ("; expires="+date.toGMTString());
            }
            cookie += (path    ? "; path="+path : "");
            cookie += (domain  ? "; domain="+domain : "");
            cookie += (secure  ? "; secure" : "");
            document.cookie = cookie;
        };
        this.del = function(name) {
            document.cookie = name + "=; expires=Thu, 01-Jan-70 00:00:01 GMT";
        };
    }

    this.open = function(id) {
        var node = this.allNodes[id];
        if (node && node.isFolder) {
            if (!this.opened.contains(id)) {
                this.nodeClick(id);
            }
        }
    }

    this.openTo = function(id) {
        var node = this.allNodes[id];
        while (node) {
            this.open(node.id);
            node = node.parentNode;
        }
    }

    this.closeAll = function() {
        for (var i = this.opened.length-1; i >= 0; --i) {
            this.nodeClick(this.opened[i]);
        }
    }

    this.setActive = function(id) {
        var node = this.allNodes[id];
        if (document.getElementById(this.active+"-link")) {
            document.getElementById(this.active+"-link").className = "link";
            this.active = "";
        }
        if (node) {
            if (document.getElementById(id+"-link")) {
                document.getElementById(id+"-link").className = "link-active";
                this.active = id;
            }
        }
    }

    var self = this;
    this.id = id;
    this.tree = new Node("tree", "", null, [], false, true, false, false);
    this.allNodes = {}; // id => object
    this.opened = []; // opened folders
    this.active = ""; // active node, text clicked
    this.cookie = new Cookie();
    this.imgObjects = [];
    this.count = 0;
}
/***************************************
 * object: MenuObject                  *
 *-------------------------------------*
 *   Defines a hidden drop-down menu   *
 ***************************************/
function MenuObject(type, params){
    if (!type) {
        return false;
    }
    if (params == null || typeof(params) != "object") {
        var params = {};
    }
    this.type = type;
    this.delay = 250;
    this.menu = document.getElementById('menu_' + type);
	this.state = 'closed';
    this.timer = [];
    this.autoHide = true;
    this.onShow;
    this.onHide;
    this.onKeepOpen;
    this.opener;
    if (typeof(params.delay) == "number") {
        this.delay = params.delay;
    }
    if (typeof(params.autoHide) == "boolean") {
        this.autoHide = params.autoHide;
    }
    if (typeof(params.onHide) == "function") {
        this.onHide = params.onHide;
    }
    if (typeof(params.onShow) == "function") {
        this.onShow = params.onShow;
    }
    if (typeof(params.onKeepOpen) == "function") {
        this.onKeepOpen = params.onKeepOpen;
    }
    if (gIsIpad) {
        this.autoHide = false;
    }

    var _this = this;

    this.toggle = function (){
        if (!_this.menu) {
            return;
        }
        if ($(_this.menu).is(':visible')) {
            _this.hide();
        } else {
            _this.show();
        }
    }

    this.show = function (){
        if (!_this.menu) {
            return;
        }
        window.clearTimeout(_this.timer);
        if ($(_this.menu).is(':visible')) {
           return;
        }
        _this.timer = window.setTimeout(function(){
            $(_this.menu).fadeIn(null, function(){
    			_this.state = 'open';
                if (gIsIE7) {
                    $('hr', _this.menu).css('width', ($(_this.menu).width() - 15) + "px");
                }
                if (typeof(_this.onShow) == "function") {
                    _this.onShow();
                }
                $(this).find('a,select,input').filter(':visible').eq(0).focus();
                _this.menu.setAttribute('aria-expanded', 'true');
    		});
        }, 10);
    }

    this.hide = function (){
        if (!_this.menu) {
            return;
        }
        if ($(_this.menu).is(':not(:visible)')) {
            return;
        }
        window.clearTimeout(_this.timer);
        _this.timer = window.setTimeout(function(){
            _this.state = 'closed';
            $(_this.menu).fadeOut(null, function(){
                if (typeof(_this.onHide) == "function") {
                    _this.onHide();
                }
                _this.menu.setAttribute('aria-expanded', 'false');
            });
        }, _this.delay + 200);
    }

	this.keepOpen = function (){
        if (!_this.menu) {
            return;
        }
        if ($(_this.menu).is(':not(:visible)')) {
            return;
        }
        window.clearTimeout(_this.timer);
        if (typeof(_this.onKeepOpen) == "function") {
            _this.onKeepOpen();
        }
    }
}
/**************************************
 * object: XmlHttp                    *
 *------------------------------------*
 * Create and manage XMLHTTP Requests *
 **************************************/
var XmlHttp = {
    prefix : null,
    _this : this,
    create : function () {
        try {
            if (window.XMLHttpRequest) {
                var req = new XMLHttpRequest();
                req.nativeSend = req.send;
                req.send = this.newSend;
                var fn = function () {
                    req.readyState = 4;
                    if (typeof req.onreadystatechange == "function") {
                        req.onreadystatechange();
                    }
                }

                // some versions of Moz do not support the readyState property
                // and the onreadystate event so we patch it!
                if (req.readyState == null) {
                    req.readyState = 1;
                    addEvent(req, "load", fn, false);
                }
                gXmlHTTPObjects.push(req);
                return req;
            }
            if (window.ActiveXObject) {
                var vXmlHTTPObjects = new ActiveXObject(this.getXmlHttpPrefix() + ".XmlHttp");
                gXmlHTTPObjects.push(vXmlHTTPObjects);
                return vXmlHTTPObjects;
            }
        } catch (ex) {}
        //no support for XMLHTTP objects
        throw new Error("The action you specified cannot be completed (error #2).");
    },
    getXmlHttpPrefix : function () {
        if (this.prefix) {
            return this.prefix;
        }

        var prefixes = ["MSXML2", "Microsoft", "MSXML", "MSXML3"];
        var o;
        for (var i = 0; i < prefixes.length; i++) {
            try {
                // try to create the objects
                o = new ActiveXObject(prefixes[i] + ".XmlHttp");
                return this.prefix = prefixes[i];
            } catch (ex) {};
        }
        //no installed XML parser
        throw new Error("The action you specified cannot be completed (error #1).");
    },
    newSend : function(pParams){
         if (typeof pParams != 'string') {
             var pParams = '';
         }
         if (pParams.length > 0) {
             pParams += "&";
         }
         pParams += "fwtimestamp=" + new Date().getTime();
         return this.nativeSend(pParams);
    }
}
/**************************************
 * object: XmlDocument                *
 *------------------------------------*
 * Create and load XML Documents      *
 **************************************/
var XmlDocument = {
    create : function () {
        try {
            if (document.implementation && document.implementation.createDocument) {
                var doc = document.implementation.createDocument("", "", null);

                if (doc.readyState == null) {
                    doc.readyState = 1;
                    addEvent(doc, "load", function () {
                    doc.readyState = 4;
                    if (typeof doc.onreadystatechange == "function")
                        doc.onreadystatechange();
                    }, false);
                }
                return doc;
            }
            if (window.ActiveXObject) {
                return new ActiveXObject(getDomDocumentPrefix() + ".DomDocument");
            }
        } catch (ex) {}
        throw new Error("Your browser does not support XmlDocument objects");
    }
}
if (window.DOMParser && window.XMLSerializer && window.Node && Node.prototype && Node.prototype.__defineGetter__) {
    Document.prototype.loadXML = function (s) {
        var doc2 = (new DOMParser()).parseFromString(s, "text/xml");
        while (this.hasChildNodes()) {
            this.removeChild(this.lastChild);
        }
        for (var i = 0; i < doc2.childNodes.length; i++) {
            this.appendChild(this.importNode(doc2.childNodes[i], true));
        }
    };
    Document.prototype.__defineGetter__("xml", function () {return (new XMLSerializer()).serializeToString(this);});
}

/*******************************
 * object: gUsrIdle            *
 *-----------------------------*
 * defines the user idle logic *
 *******************************/
var gUsrIdle = {
    idleSeconds : Date.now(),
    freq : 150000,
    timer : [],
    clearIdle : function (){
        this.idleSeconds = Date.now();
    },
    trackIdleTime : function () {
       window.clearTimeout(gUsrIdle.timer);
       var mySession = XmlHttp.create();
       if (mySession) {
          mySession.open("POST",'qsuprhttp000.w',true);
          mySession.onreadystatechange = function () {
            if (gAbortRequests) {
                return;
            }
             if (mySession.readyState == 4 && mySession.status == 200) {
                if (!mySession.responseXML) {
                    return;
                }
                myItems = mySession.responseXML.getElementsByTagName("validation");
                for (i=0; i < myItems.length; i++) {
                   success = getElementTextNS("", "successflag", myItems[i], 0);
                   gReturnMsg = getElementTextNS("", "validationmsg", myItems[i], 0);
                   gReturnInfo = getElementTextNS("", "xtrainfo", myItems[i], 0);
                }
                switch(gReturnInfo){
                   case '0':
                      if ($('#msgBodyCol:contains("expire soon")').length>0) {
                          closeMessage(true);
                      }
                      break;
                   case '1':
                   case '1a':
                   case '1b':
                   case '1c':
                      closeAllWindows();
                      window.resizeTo(500,250);
                      getCoord(400,75);
                      window.moveTo(gCoordX,gCoordY);
                      if (document.detailform) {
                         document.detailform.action = "qloggedout001.w?nameid=" + document.getElementById("nameid").value + "&dwd=" + document.getElementById("dwd").value + "&reason=" + gReturnInfo;
                         document.detailform.submit();
                      } else {
                         window.location.replace("qloggedout001.w?nameid=" + document.getElementById("nameid").value + "&dwd=" + document.getElementById("dwd").value) + "&reason=" + gReturnInfo;
                      }                      
                      break;
                   case '2':
                      if (document.getElementById("msgBtn1")) {
                         message("Your session will expire soon due to inactivity.<br><br>If you wish to stay logged in, click OK.", "Session Inactivity", null, null, null, "OK", "gUsrIdle.clearIdle();gUsrIdle.trackIdleTime();");
                      }
                      break;
                } //switch
             } //request ready
          }  //readystate
          var vParams = "requestAction=mySession" + buildFormData(true) + "&myIdleSeconds=" + ((Date.now() - gUsrIdle.idleSeconds) / 1000);
          mySession.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
          if (gIsMoz || gIsIE) {
              mySession.setRequestHeader("Connection", "close");
              mySession.setRequestHeader("Content-length", vParams.length);
          }
          mySession.send(vParams);
       } //mySession
       gUsrIdle.timer=window.setTimeout(gUsrIdle.trackIdleTime, gUsrIdle.freq);
    } //trackIdleTime
};
/********************************
 * object: fwSky                *
 *------------------------------*
 *   Browse's Export to Excel   *
 *******************************/
 var fwSky = {
    browse : {
		exportFormat : '',
		exportExcel  : function (){
			if (fwSky.browse.exportFormat == ''){
				openNewWindow(document.getElementById('CurrentProgram').value,400,125,0,'export');
			} else {
				var vMessage = "<br /><span style='font-weight:bold;'>Export Format:</span><br /><br />";

				var cChecked = (fwSky.browse.exportFormat == 'csv') ? 'checked' : '';
				vMessage += "<span style='padding-right:10px;'>" +
							"<input type='radio' class='' name='ExCOpt' id='ExCOptCSV' onchange='if(this.checked) fwSky.browse.exportFormat=this.value;' value='csv' " + cChecked + " />" +
							"<label tooltip='' for='ExCOptCSV' >CSV/Microsoft Office 2000</label>"      +
							"</span>";

				var cChecked = (fwSky.browse.exportFormat == 'ms') ? 'checked' : '';
				vMessage += "<span style='padding-right:10px;'>" +
							"<input type='radio' class='' name='ExCOpt' id='ExCOptMS' onchange='if(this.checked) fwSky.browse.exportFormat=this.value;' value='ms' " + cChecked + " />" +
							"<label tooltip='' for='ExCOptMS' >Microsoft Office 2002+</label>"          +
							"</span>";

				var cChecked = (fwSky.browse.exportFormat == 'oo') ? 'checked' : '';
				vMessage += "<span style='padding-right:10px;'>" +
							"<input type='radio' class='' name='ExCOpt' id='ExCOptOO' onchange='if(this.checked) fwSky.browse.exportFormat=this.value;' value='oo' " + cChecked + " />" +
							"<label tooltip='' for='ExCOptOO' >Open Office</label>"                     +
							"</span>";

				vMessage += "<br /><br />" +
							"** Try CSV if you are having problems with the file opening in Excel or Open Office **";

				message(vMessage, "Convert to Excel", 0, 500, 125,
						"Export", "openIframeDialog('" + document.getElementById('CurrentProgram').value + "',400,125,0,'export');",
						"Back", '','', '');
			}
		}
	}
};
/********************************
 * object: vQPSetup             *
 *------------------------------*
 *      Quick Print Logic       *
 *******************************/
var vQPSetup = {
    Fav : {},
	Reports : {},
    callFav : function(favId){

        this.SelectedFavorite = favId;

        var el = document.getElementById("rQPReport" + this.Fav[favId].RptProg);

        document.getElementById("rQPReport" + this.Fav[favId].RptProg).checked = true;

        this.toggleQPReport(el,"", function(){

            var selRpt = vQPSetup.selectedReport.value;

            if (vQPSetup.Fav[vQPSetup.SelectedFavorite].QPFUseCP) {
                vQPSetup.addQuickPrint(vQPSetup.Reports[selRpt].ReportName+' - '+document.getElementById('rQPTemplate').options[document.getElementById('rQPTemplate').selectedIndex].text+'&cQPRT='+escape(vQPSetup.Reports[selRpt].RptProg),
                                       vQPSetup.Reports[selRpt].RptProg,
                                       vQPSetup.Reports[selRpt].Params[document.getElementById('rQPTemplate').value]);
            }
            else{
                vQPSetup.toQueue(vQPSetup.Reports[selRpt].ReportName,
                                 vQPSetup.Reports[selRpt].RptProg,
                                 vQPSetup.Fav[vQPSetup.SelectedFavorite].QPFParams,
                                 '',
                                 '',
                                 vQPSetup.Reports[selRpt].Type);
            }
        });
    },
    makeFavorite : function (){
        if(!validateRequired('rQPTemplate','Report Template'))return;
        var cList = $('input[name=rQPReport]').map(function() {
                        return this.value;
                    }).get().join(',');
        this.saveSelection();
        openNewWindow('quickfavorites.w?' + "hNewFavorite=" + $( "#rQPTemplate" ).val() + "&list=" + cList, 575, 400, 0, 'add');
    },
    editFavorites : function (){
        var cList = $('input[name=rQPReport]').map(function() {
                        return this.value;
                    }).get().join(',');
        openNewWindow('quickfavorites.w?list=' + cList, 575, 400, 0, 'add');
    },
	addQuickPrint : function(cReportName,cProgram,cParams){
		if(!cParams)cParams='';
		var xhrAddQP = XmlHttp.create();
		if (xhrAddQP){
			xhrAddQP.open('POST','quickhttp000.w',true);
			xhrAddQP.onreadystatechange = function(){
				if (gAbortRequests) {
					return;
				}
				if (xhrAddQP.readyState==4 && xhrAddQP.status==200){
					xDoc     = xhrAddQP.responseXML.getElementsByTagName('validation');
					xSuccess = getElementTextNS('', 'successflag', xDoc[0], 0);
					xMsg     = getElementTextNS('', 'validationmsg', xDoc[0], 0).replace(/\^/gi, '<br \>');

					if(xSuccess.toLowerCase()=='yes'){
                        if ($('#quickPrintDiv').is(':visible')) { toggleQPLink(); }
						message('<b>' + xMsg + '</b>','Centralized Printing',2000,0,40);
                    }
					else{
                        if (!$('#quickPrintDiv').is(':visible')) { toggleQPLink(); }
                        message(xMsg,'Centralized Printing',0,0,0,"Settings","vQPSetup.QuickPrintSettings('" + cProgram + "');","Back","");
                    }
				}
			}
			var vParams = 'requestAction=quickPrint' + buildFormData(true) + '&qpReportName=' + cReportName + '&qpReportProgram=' + cProgram + '&qpParams=' + cParams;
			xhrAddQP.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
			if (gIsMoz || gIsIE) {
				xhrAddQP.setRequestHeader("Connection", "close");
				xhrAddQP.setRequestHeader("Content-length", vParams.length);
			}
			xhrAddQP.send(vParams);
		}  // xhrAddQP
	},  //addQuickPrint
	cancelCheckQueue : function(){window.clearTimeout(this.checkQueueTimer)},
	processReturn: function(responseText,pRefreshScreen){
		var vOutputLine;
		var pqLnk;
		var xResult;
		var btnA, btnB, btnC;

		try {
            xResult = eval(responseText);
        } catch (ex) {
            if (gIsIE)
                this.checkQueueTimer=window.setTimeout(function(){vQPSetup.checkQueue(vQPSetup.currentReport,pRefreshScreen)}, 1300);
            else
                this.checkQueueTimer=window.setTimeout(function(){vQPSetup.checkQueue(vQPSetup.currentReport,pRefreshScreen)}, 1600);
        }

        btnA = 'My Print Queue';
        btnB = 'Back';
        btnC = 'View Report';

        function callPrintMessage(vOutputLine, pqLnk, btnB_action) {
            if ($('#duserid').val() == '-1') {  //Don't show 'My Print Queue' button for non-user
                printMessage(vOutputLine, pqLnk, btnB, btnB_action, '', '', pRefreshScreen);
            } else {
                printMessage(vOutputLine, pqLnk, btnA, 'openMyPrintQueue();', btnB, btnB_action, pRefreshScreen);
            }
        }

		if (xResult.ErrorMsg){
			  pqLnk = 'Error';
			  vOutputLine = '<span style="color:#b6b6b6;">';
			  vOutputLine += xResult.msg.replace(/\^/gi, '<br \>');
			  vOutputLine += '</span>';
              callPrintMessage(vOutputLine, pqLnk, '');
		} // if ErrorMsg
		else{
			this.currentReport=xResult.rowid;
			if (xResult.status=='Completed'){
				  pqLnk = 'Request Complete';
				  vOutputLine = '<span style="color:#b6b6b6;">';
				  vOutputLine += "<a href='javascript:eval(prepareHref($(\"#printMsgBtn1\").attr(\"href\")))' style='color:white; text-decoration:underline;'><b>" + xResult.desc + "</b></a> has finished processing.";
				  vOutputLine += '</span>';

				  if(xResult.open.indexOf('https:') != -1 || xResult.open.indexOf('qdirconfig002.p') != -1){ /*replace(msgview with msgview2*/
					  btnC.replace("Report","Review");
					  btnC.replace("msgview","msgview2");
				  }

                  if (xResult.openSpecial && xResult.openSpecial.indexOf('isExcel') > 0) {
                      closeMessage(false, 'dPrintMessage');
                      btnC = 'Download Export File';
                      var vtmpResult = xResult.openSpecial.replace(/\%27/g,"\\%27");
                      printMessage(vOutputLine, pqLnk, btnC, vtmpResult, btnB, '',pRefreshScreen);
                  } else if (xResult.openSpecial && xResult.openSpecial.indexOf('qprocbrws000') > 0) {
                      closeMessage(false, 'dPrintMessage');
                      if(xResult.openSpecial.indexOf('hProcListAbrt') > 0)
                          btnC = 'View Processing List (Partial List)';
                      else
                          btnC = 'View Processing List';
                      printMessage(vOutputLine, pqLnk, btnC, xResult.openSpecial, btnB, '',pRefreshScreen);
                  } else if (xResult.openSpecial && xResult.openSpecial.length > 0) {
                      closeMessage(false, 'dPrintMessage');
                      eval(xResult.openSpecial);
                  } else {
                      if(document.getElementById("hAutoOpenPref").value.toLowerCase()=='yes' && xResult.type=='pdf'){
                          closeMessage(false, 'dPrintMessage');
                          eval('var gCodePopupXX='+xResult.open);
                          if (!gCodePopupXX) {
                              printMessage(vOutputLine, pqLnk, btnC, xResult.open, btnB, '',pRefreshScreen);
                          }
                      }
                      else{
                          printMessage(vOutputLine, pqLnk, btnC, xResult.open, btnB, '',pRefreshScreen);
                      }
                  }

                  if (window.afterQueueComplete) {
                      afterQueueComplete();
                  }
			}
			else if (xResult.status=='Queued'){
				  pqLnk = 'Request Queued';
				  vOutputLine = '<span style="color:#b6b6b6;">';
				  vOutputLine += '<table><tbody><tr><td width="70px" class="qploading" style="padding-left:10px; vertical-align:text-top;">&nbsp;</td>';
				  vOutputLine += '<td style="vertical-align:top;">' + xResult.msg.replace(/\^/gi, '<br \>') + '</td></tr></tbody></table>';
				  vOutputLine += '</span>';
                  callPrintMessage(vOutputLine, pqLnk, 'vQPSetup.cancelCheckQueue();');

				  if (gIsIE)
					  this.checkQueueTimer=window.setTimeout(function(){vQPSetup.checkQueue(vQPSetup.currentReport,pRefreshScreen)}, 1300);
				  else
					  this.checkQueueTimer=window.setTimeout(function(){vQPSetup.checkQueue(vQPSetup.currentReport,pRefreshScreen)}, 1600);
			}
			else if (xResult.status=='Running'){
				  pqLnk = 'Processing Request';
				  vOutputLine = '<span style="color:#b6b6b6;">';
				  vOutputLine += '<table><tbody><tr><td width="70px" class="qploading" style="padding-left:10px; vertical-align:text-top;">&nbsp;</td>';
				  vOutputLine += '<td style="vertical-align:top;">' + xResult.msg.replace(/\^/gi, '<br \>') + '</td></tr></tbody></table>';
				  vOutputLine += '</span>';
                  callPrintMessage(vOutputLine, pqLnk, 'vQPSetup.cancelCheckQueue();');

				  if (gIsIE)
					  this.checkQueueTimer=window.setTimeout(function(){vQPSetup.checkQueue(vQPSetup.currentReport,pRefreshScreen)}, 1300);
				  else
					  this.checkQueueTimer=window.setTimeout(function(){vQPSetup.checkQueue(vQPSetup.currentReport,pRefreshScreen)}, 1600);
			}
			else { // Error | Deleted
				  vOutputLine = '<span style="color:#b6b6b6;">';
				  vOutputLine += xResult.msg.replace(/\^/gi, '<br \>');
				  vOutputLine += '</span>';
                  callPrintMessage(vOutputLine, pqLnk, '');
			}
		}
	},
	checkQueue : function(gRowId,pRefreshScreen, pNewDiv){
         if (!pNewDiv) {
             var pNewDiv = false;
         }
		this.currentReport=gRowId;
		this.cancelCheckQueue();
		var xhrCheckQ = XmlHttp.create();
		if (xhrCheckQ){
			xhrCheckQ.open('POST','quickhttp000.w',true);
			xhrCheckQ.onreadystatechange=function(){
				if (gAbortRequests) {
					return;
				}
				if (xhrCheckQ.readyState==4 && xhrCheckQ.status == 200){
                    if ($('#dPrintMessage').is(':visible') || pNewDiv == true) {
                        vQPSetup.processReturn(xhrCheckQ.responseText,pRefreshScreen);
                    }
				}
			}
			var vParams = 'requestAction=checkQueue&checkQueue=' + this.currentReport + buildFormData(true);
			xhrCheckQ.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
			if (gIsMoz || gIsIE) {
				xhrCheckQ.setRequestHeader("Connection", "close");
				xhrCheckQ.setRequestHeader("Content-length", vParams.length);
			}
			xhrCheckQ.send(vParams);
		}  // xhrAddQP
	},
	toQueue : function(pDesc,pProgram,pParams,pPath,pInfo,pType,pClose,pSrpplmIn,pPriority,pRefreshScreen,pOpenMyPQ,pPQPass){
		var vShowDialog = true;

        if (pClose && pClose == 'NOSHOW')
        	vShowDialog = false;
        else if (pClose && (pClose == true || pClose == 'closeParent2')) {
			try {
				if (window.opener && !opener.closed && window.opener.vQPSetup && window.opener.vQPSetup.toQueue){
					if (pClose == 'closeParent2')
                    	pClose = true;
                    else
                        pClose = false;

					window.opener.vQPSetup.toQueue(pDesc,pProgram,pParams,pPath,pInfo,pType,pClose,pSrpplmIn,pPriority,pRefreshScreen,pOpenMyPQ);  //pclose set to false
					self.close();
					return;
				}
			} catch (ex) {}
		}

        if(!pOpenMyPQ)pOpenMyPQ=false;
		if(!pType)pType=''; //need to make sure the type is reset to blanks
		if(!pSrpplmIn)pSrpplmIn='';
		if(!pPriority)pPriority='';
        if(!pPQPass)pPQPass='';

		//if it wasn't added, continue ...
		document.detailform.pDesc.value     = pDesc;
		document.detailform.pProgram.value  = pProgram;
		document.detailform.pParams.value   = pParams;
		document.detailform.pPath.value     = pPath;
		document.detailform.pInfo.value     = pInfo;
		document.detailform.pType.value     = pType;
		document.detailform.pSrpplmIn.value = pSrpplmIn;
		document.detailform.pPriority.value = pPriority;

        if (pPQPass!='') {
            if (!$('#pPQPass').length)
                $(document.detailform).append("<input type='hidden' id='pPQPass' name='pPQPass'/>");
            $('#pPQPass').val((pPQPass));
        }

			var xhrAddQ = XmlHttp.create();
			if (xhrAddQ){
				xhrAddQ.open('POST','quickhttp000.w',true);
				xhrAddQ.onreadystatechange = function(){
					if (gAbortRequests) {
						return;
					}
					if (xhrAddQ.readyState==4 && xhrAddQ.status==200){
                        if (typeof vQPSetup.returnRowId === 'function') {   //If program has added a returnRowId callback, then pass pq rowid to it
                            var resultObj = eval(xhrAddQ.responseText);
                            if (resultObj.rowid) {
                                vQPSetup.returnRowId(resultObj.rowid, pDesc, pProgram, pParams);
                            }
                        }

                        if(pOpenMyPQ){
                             outputHiddenField("openMyPQ", "true");
                             openMyPrintQueue();
                        }
                        else if (!$('#dPrintMessage').is(':visible') && vShowDialog == true) {
                            vQPSetup.processReturn(xhrAddQ.responseText,pRefreshScreen);
                        }
					} //state 4/200
				} //onreadystatechange
				var vParams = 'requestAction=toQueue' + buildFormData(true);
				xhrAddQ.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
				if (gIsMoz || gIsIE) {
					xhrAddQ.setRequestHeader("Connection", "close");
					xhrAddQ.setRequestHeader("Content-length", vParams.length);
				}
				xhrAddQ.send(vParams);
			}  // xhrAddQP
	},  //addQuickPrint
	toggleQPReport : function(el,rid, pCallback){
		if (el)
			this.selectedReport=el;
		if(this.selectedReport){
			document.getElementById('rQPTemplate').options.length = 0;
			if(!rid) rid='';
			var xhrQuick = XmlHttp.create();
			if(xhrQuick){
				xhrQuick.open('POST','qsuprhttp001.w',true);
				xhrQuick.onreadystatechange=function(){
					if (gAbortRequests) {
						return;
					}
					if (xhrQuick.readyState==4&&xhrQuick.status==200){
                        document.getElementById('rQPTemplate').options.length = 0;
                        sTemplates = eval(xhrQuick.responseText);
						for (var i=0;i<sTemplates.length;i++){
							document.getElementById('rQPTemplate').options[document.getElementById('rQPTemplate').options.length] = new Option(sTemplates[i].desc, sTemplates[i].rowid);
							vQPSetup.Reports[vQPSetup.selectedReport.value].Params[sTemplates[i].rowid]=sTemplates[i].parameters;
							if(sTemplates[i].selected){document.getElementById('rQPTemplate').value=sTemplates[i].rowid};
						}
                        if (typeof pCallback === 'function') {
                            pCallback();
                        }
					}
				}
				var vParams = 'requestAction=quickReport' + buildFormData(true) + '&quickTemplatePrgmName=' + this.Reports[this.selectedReport.value].TemplatePrgName + '&quickTemplatePrgm=' + this.Reports[this.selectedReport.value].TemplatePrg + '&quickMenuId=' + this.Reports[this.selectedReport.value].MenuId + '&quickReportVal=' + this.Reports[this.selectedReport.value].RptPrgName + '&rid=' + rid;
				xhrQuick.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
				if (gIsMoz || gIsIE) {
					xhrQuick.setRequestHeader("Connection", "close");
					xhrQuick.setRequestHeader("Content-length", vParams.length);
				}
				xhrQuick.send(vParams);
			}
            fwToggleField('bDefaultQuickPrint,bQuickPrint', this.Reports[this.selectedReport.value].Type.toLowerCase()=='pdf');
		} // if vQPSetup.selectedReport
	}, //toggleQPReport
	saveSelection : function(){
		var xhrQuickSave = XmlHttp.create();
		if (xhrQuickSave){
			xhrQuickSave.open('POST','qsuprhttp001.w',true);
			xhrQuickSave.onreadystatechange=function(){
				if (gAbortRequests) {
					return;
				}
				if (xhrQuickSave.readyState==4&&xhrQuickSave.status==200){}
			}
			var vParams = 'requestAction=quickReportSave' + buildFormData(true) + '&quickTemplatePrgm=' + this.Reports[this.selectedReport.value].TemplatePrg + '&quickReportVal=' + this.Reports[this.selectedReport.value].RptPrgName + '&quickTemplate=' + document.getElementById('rQPTemplate').value;
			xhrQuickSave.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
			if (gIsMoz || gIsIE) {
				xhrQuickSave.setRequestHeader("Connection", "close");
				xhrQuickSave.setRequestHeader("Content-length", vParams.length);
			}
			xhrQuickSave.send(vParams);
		}
	},
	Run : function(){
		this.saveSelection();
		if(!validateRequired('rQPTemplate','Report Template'))return;
		this.toQueue(this.Reports[this.selectedReport.value].ReportName,this.Reports[this.selectedReport.value].RptProg,this.Reports[this.selectedReport.value].Params[document.getElementById('rQPTemplate').value],'','',this.Reports[this.selectedReport.value].Type);
        toggleQPLink();
	},
	QuickPrintSettings : function(rpt){

        if (document.getElementById('hCurrentTab') && document.getElementById('hCurrentTab').value!='')
            g=document.getElementById('CurrentProgram').value + '.' + document.getElementById('hCurrentTab').value;
        else
            g=document.getElementById('CurrentProgram').value;
        gDisplayRecordWarning = false;

        if (rpt == null)
            openNewWindow('qprntbrws007.w?npc=' + escape(this.Reports[this.selectedReport.value].RptProg+g), 1013, 671, 0, 'edit');
        else
            openNewWindow('qprntbrws007.w?npc=' + escape(rpt+g), 1013, 671, 0, 'edit');
	},
	QuickPrint : function(){
		this.saveSelection();
		if(!validateRequired('rQPTemplate','Report Template')) return;
		this.addQuickPrint(this.Reports[this.selectedReport.value].ReportName+' - '+document.getElementById('rQPTemplate').options[document.getElementById('rQPTemplate').selectedIndex].text+'&cQPRT='+escape(this.Reports[this.selectedReport.value].RptProg),this.Reports[this.selectedReport.value].RptProg,this.Reports[this.selectedReport.value].Params[document.getElementById('rQPTemplate').value]);
	},
	openTemplate : function(){
		openNewWindow('qrprtbrws001.w?fromQP=yes&repo=' + document.getElementById('rQPTemplate').value +
													   '&BrwsTitle='        + this.Reports[this.selectedReport.value].ReportName +
													   '&RptPrgName='       + this.Reports[this.selectedReport.value].RptPrgName +
													   '&RptProg='          + this.Reports[this.selectedReport.value].RptProg +
													   '&MaintProg='        + this.Reports[this.selectedReport.value].MaintProgram +
                                                       '&hMainAction='      + 'print' +
													   '&MaintProgHgt='     + this.Reports[this.selectedReport.value].MaintProgHgt +
													   '&MaintProgWdt='     + this.Reports[this.selectedReport.value].MaintProgWdt +
													   '&RptAction='        + this.Reports[this.selectedReport.value].Extra +
													   '&TmpltProg='        + this.Reports[this.selectedReport.value].TemplatePrg +
													   '&hTemplateParam1='  + ((document.getElementById('hQPParam_' + this.Reports[this.selectedReport.value].TemplatePrgName + '_1'))  ? document.getElementById('hQPParam_' + this.Reports[this.selectedReport.value].TemplatePrgName + '_1').value  : '') +
													   '&hTemplateParam2='  + ((document.getElementById('hQPParam_' + this.Reports[this.selectedReport.value].TemplatePrgName + '_2'))  ? document.getElementById('hQPParam_' + this.Reports[this.selectedReport.value].TemplatePrgName + '_2').value  : '') +
													   '&hTemplateParam3='  + ((document.getElementById('hQPParam_' + this.Reports[this.selectedReport.value].TemplatePrgName + '_3'))  ? document.getElementById('hQPParam_' + this.Reports[this.selectedReport.value].TemplatePrgName + '_3').value  : '') +
													   '&hTemplateParam4='  + ((document.getElementById('hQPParam_' + this.Reports[this.selectedReport.value].TemplatePrgName + '_4'))  ? document.getElementById('hQPParam_' + this.Reports[this.selectedReport.value].TemplatePrgName + '_4').value  : '') +
													   '&hTemplateParam5='  + ((document.getElementById('hQPParam_' + this.Reports[this.selectedReport.value].TemplatePrgName + '_5'))  ? document.getElementById('hQPParam_' + this.Reports[this.selectedReport.value].TemplatePrgName + '_5').value  : '') +
													   '&hTemplateParam6='  + ((document.getElementById('hQPParam_' + this.Reports[this.selectedReport.value].TemplatePrgName + '_6'))  ? document.getElementById('hQPParam_' + this.Reports[this.selectedReport.value].TemplatePrgName + '_6').value  : '') +
													   '&hTemplateParam7='  + ((document.getElementById('hQPParam_' + this.Reports[this.selectedReport.value].TemplatePrgName + '_7'))  ? document.getElementById('hQPParam_' + this.Reports[this.selectedReport.value].TemplatePrgName + '_7').value  : '') +
													   '&hTemplateParam8='  + ((document.getElementById('hQPParam_' + this.Reports[this.selectedReport.value].TemplatePrgName + '_8'))  ? document.getElementById('hQPParam_' + this.Reports[this.selectedReport.value].TemplatePrgName + '_8').value  : '') +
													   '&hTemplateParam9='  + ((document.getElementById('hQPParam_' + this.Reports[this.selectedReport.value].TemplatePrgName + '_9'))  ? document.getElementById('hQPParam_' + this.Reports[this.selectedReport.value].TemplatePrgName + '_9').value  : '') +
													   '&hTemplateParam10=' + ((document.getElementById('hQPParam_' + this.Reports[this.selectedReport.value].TemplatePrgName + '_10')) ? document.getElementById('hQPParam_' + this.Reports[this.selectedReport.value].TemplatePrgName + '_10').value : ''),725,485,0,'Select');
	}
}
/****************************
 * object: Calendar         *
 *--------------------------*
 * defines a popup Calendar *
 ****************************/
function Calendar(){
    gCalendar = this;
    this.daysOfWeek = new Array("Su","Mo","Tu","We","Th","Fr","Sa");
    this.months = new Array("January","February","March","April","May","June","July","August","September","October","November","December");
    this.daysInMonth = new Array(31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31);
    this.containerLayer = document.getElementById('container');
    if (this.containerLayer) {
        this.containerLayer.style.zIndex = 301;
    }
    if (canFindBuffer()) {
        this.bufferLayer = document.getElementById('buffer');
        this.bufferLayer.style.zIndex = 300;
    }
	this.getFirstDOM = function(){
	   var vDate = new Date();
		vDate.setDate(1);
		vDate.setMonth(this.month);
		vDate.setFullYear(this.year);
		return vDate.getDay();
	}
	this.getDaysInMonth = function (){
	   if (this.month!=1) {
		   return this.daysInMonth[this.month];
	   } else {
		  // is it a leap year
		   if (Date.isLeapYear(this.year)) {
			   return 29;
		   } else {
			   return 28;
		   }
	   }
	}
	this.buildString = function(){
	  var tmpStr = '<form onSubmit="this.year.blur();return false;"><table width="100%" border="0" cellspacing="0" cellpadding="0" class="calBorderColor"><tr><td valign="top"><table border="0" cellspacing="0" cellpadding="0" width="100%" class="calBgColor">';
	  tmpStr += '<tr>';
	  tmpStr += '<td width="60%" class="monthYear" align="left">';
	  if (this.hasDropDown){
		tmpStr += '<select class="month" name="month" onchange="gCalendar.selectChange();">';
		for (var i=0;i<this.months.length;i++){
		  tmpStr += '<option value="' + i + '"'
		  if (i == this.month) {
			  tmpStr += ' selected';
		  }
		  tmpStr += '>' + this.months[i] + '</option>';
		}
		tmpStr += '</select>';
	  } else {
		  tmpStr += '<table border="0" cellspacing="0" cellpadding="0"><tr><td class="monthYear"><a class="incdec" name="' + gCalendarImageName + '" href="javascript:void(0)" onclick="gCalendar.changeMonth(-1);">&nbsp;&nbsp;&lt;</a></td><td class="monthYear" width="100%" align="center">' + this.months[this.month] + '</td><td class="monthYear"><a class="incdec" name="' + gCalendarImageName + '" href="javascript:void(0)" onclick="gCalendar.changeMonth(+1);">&gt;&nbsp;&nbsp;</a></td></tr></table>';
	  }
	  tmpStr += '</td>';
	  tmpStr += '<td width="40%" align="right" class="monthYear">';

	  if (this.hasDropDown){
		tmpStr += '<input class="year" type="text" size="';
		tmpStr += 4;
	  tmpStr += '" name="year" maxlength="4" onBlur="gCalendar.inputChange();" value="' + this.year + '">';
	  } else {
		tmpStr += '<table border="0" cellspacing="0" cellpadding="0"><tr><td class="monthYear"><a class="incdec" name="' + gCalendarImageName + '" href="javascript:void(0)" onclick="gCalendar.changeYear(-1);">&nbsp;&lt;</a></td><td class="monthYear" width="100%" align="center">' + this.year + '</td><td class="monthYear"><a class="incdec" name="' + gCalendarImageName + '" href="javascript:void(0)" onclick="gCalendar.changeYear(+1);">&gt;&nbsp;</a></td></tr></table>'
	  }
	  tmpStr += '</tr>';
	  tmpStr += '</table>';
	  var iCount = 1;

	  var iFirstDOM = (7+this.getFirstDOM()-0)%7;
	  var iDaysInMonth = this.getDaysInMonth();

	  tmpStr += '<table width="100%" border="0" cellspacing="0" cellpadding="0" class="calBgColor">';
	  tmpStr += '<tr>';
		for (var i=0;i<7;i++){
		  tmpStr += '<td align="center" class="calDaysColor">' + this.daysOfWeek[(0+i)%7] + '</td>';
		}
	  tmpStr += '</tr>';
	  var tmpFrom = parseInt('' + this.dateFromYear + this.dateFromMonth + this.dateFromDay,10);
	  var tmpTo = parseInt('' + this.dateToYear + this.dateToMonth + this.dateToDay,10);
	  var tmpCompare;
	  for (var j=1;j<=6;j++){
		 tmpStr += '<tr>';
		 for (var i=1;i<=7;i++){
		   tmpStr += '<td width="14.29%" align="center" '
		   if ( (7*(j-1) + i)>=iFirstDOM+1  && iCount <= iDaysInMonth){
			 if (iCount==this.day && this.year==this.oYear && this.month==this.oMonth) {
				 tmpStr += 'class="calHighlightColor"';
			 } else {
				if (i==7-0 || i==((7-0)%7)+1){
					tmpStr += 'class="calWeekend"';
				} else {
					tmpStr += 'class="cal"';
				}
			 }
			 tmpStr += '>';
		   tmpCompare = parseInt('' + this.year + padZero(this.month) + padZero(iCount),10);
			 if ((tmpCompare >= tmpFrom && tmpCompare <= tmpTo)|| gIsSafari){
			   tmpStr += '<a class="cal" href="javascript:void(0)" onclick="gCalendar.clickDay(' + iCount + ');">' + iCount + '</a>';
			 } else {
			   tmpStr += '<span class="disabled">' + iCount + '</span>';
			 }
			 iCount++;
		   } else {
			 if  (i==7-0 || i==((7-0)%7)+1) {
				 tmpStr += 'class="calWeekend"';
			 } else {
				 tmpStr +='class="cal"';
			 }
			 tmpStr += '>&nbsp;';
		   }
		   tmpStr += '</td>';
		 }
		 tmpStr += '</tr>';
	  }
	  tmpStr += '<tr><td colspan="1" class="calWeekend" width="14.29%">&nbsp;</td><td colspan="5" align="center" class="cal"><a class="cal" href="javascript:void(0)" onclick="gCalendar.today();">Today</a></td><td colspan="1" class="calWeekend" width="14.29%">&nbsp;</td></tr>';
	  tmpStr += '</table></td></tr></table></form>';
	  return tmpStr;
	}
	this.selectChange = function(){
	   this.month = !gIsIE?this.containerLayer.ownerDocument.forms[0].month.selectedIndex:this.containerLayer.document.forms[0].month.selectedIndex;
	   this.writeString(this.buildString());
	}
	this.inputChange = function(){
	   var tmp = !gIsIE?this.containerLayer.ownerDocument.forms[0].year:this.containerLayer.document.forms[0].year;
	   if (tmp.value >=1900 || tmp.value <=2100){
		  this.year = tmp.value;
		  this.writeString(this.buildString());
	   } else {
		   tmp.value = this.year;
	   }
	}
	this.changeYear = function(incr){
	   (incr==1)?this.year++:this.year--;
	   this.writeString(this.buildString());
	}
	this.changeMonth = function(incr){
	   if (this.month == 11 && incr == 1){
		  this.month = 0;
		  this.year++;
	   } else {
		  if (this.month==0 && incr == -1){
			 this.month = 11;
			 this.year--;
		  } else {
			  (incr==1)?this.month++:this.month--;
		  }

		}
		this.writeString(this.buildString());
	}
	this.clickDay = function(day){
	   var rTemp = this.target.split(".");
	   var tmp = document.forms[rTemp[0]][rTemp[1]]
	   var dform = tmp.form;

	   tmp.value = this.formatDateAsString(day,this.month,this.year);
	   validateCalDate(gDate, gDay);

	   try {
		   document.getElementById(gDate).focus();
	   } catch(er) {}

	   if (this.additional != "") {
		   eval(this.additional);
	   }

	   this.containerLayer.style.visibility='hidden';
       this.containerLayer.style.display='none';

	   if (canFindBuffer()) {
		  this.bufferLayer.style.visibility='hidden';
		  this.bufferLayer.style.display='none';
	   }

	   if (window.clickDayCustom) {
		   clickDayCustom(gDate, tmp.value);
	   }
	}
	this.today = function(){
	   var rTemp = this.target.split(".");
	   var tmp = document.forms[rTemp[0]][rTemp[1]];
	   var dform = tmp.form;
	   var dNew = new Date();

	   tmp.value = (dNew.getMonth() + 1) + "/" + dNew.getDate() + "/" + dNew.getFullYear();
	   validateCalDate(gDate, gDay);

	   try {
		   document.getElementById(gDate).focus();
	   } catch(er) {}

	   if (this.additional != "") {
		   eval(this.additional);
	   }

	   this.containerLayer.style.visibility='hidden';
       this.containerLayer.style.display='none';

	   if (canFindBuffer()) {
		  this.bufferLayer.style.visibility='hidden';
		  this.bufferLayer.style.display='none';
	   }

	   if (window.todayCustom) {
		   todayCustom(gDate, tmp.value);
	   }
	}
	this.formatDateAsString = function(day, month, year){
	   var delim = eval('/\\' + this.dateDelim + '/g');
	   switch (this.dateFormat.replace(delim,"")){
		  case 'ddmmmyyyy': return padZero(day) + this.dateDelim + this.months[month].substr(0,3) + this.dateDelim + year;
		  case 'ddmmyyyy': return padZero(day) + this.dateDelim + padZero(month+1) + this.dateDelim + year;
		  case 'mmddyyyy': return padZero((month+1)) + this.dateDelim + padZero(day) + this.dateDelim + year;
		  case 'yyyymmdd': return year + this.dateDelim + padZero(month+1) + this.dateDelim + padZero(day);
		  default: message('The value entered is not a valid date.');
	   }
	}
	this.writeString = function(str){
	  this.containerLayer.innerHTML = str;
	}
	this.show = function(e, target, bHasDropDown, dateFormat, pCount, pXtra, dateFrom, dateTo){
       if (gCalClicked && gCalBlur && gCalClicked != gCalBlur) {
           gDoValidation = true;
           gCalClicked = false;
           if (!validateCalDate(gCalBlur,gCalBlur + 'day')) {
               gCalBlur = false;
               return;
           }
           gCalBlur = false;
       }
	   var tmp = document.getElementById(gDate);
	   if (gDate!='' && tmp && tmp.disabled == true) {
		   return;
	   }
	   if (window.event){
		   var e = window.event;
	   }
	   var windowSize, obj;

	   gCalendarImageName = target.substring((target.lastIndexOf('.',target)+1),(target.length)) + 'Calendar';
	   this.dateFrom = dateFrom || new Date(1900,0,1);
	   this.dateFromDay = padZero(this.dateFrom.getDate());
	   this.dateFromMonth = padZero(this.dateFrom.getMonth());
	   this.dateFromYear = this.dateFrom.getFullYear();
	   this.dateTo = dateTo || new Date(3000,0,1);
	   this.dateToDay = padZero(this.dateTo.getDate());
	   this.dateToMonth = padZero(this.dateTo.getMonth());
	   this.dateToYear = this.dateTo.getFullYear();
	   this.hasDropDown = bHasDropDown;
	   this.dateFormat = dateFormat || 'dd-mmm-yyyy';
	   this.comboCount = pCount;
	   this.linkElement = getElementForEvent(e);

	   while (pXtra.indexOf(String.fromCharCode(21)) > -1){
		  pXtra = pXtra.replace(String.fromCharCode(21),'"')
	   }

	   this.additional = pXtra;
	   switch (this.dateFormat){
		 case 'dd-mmm-yyyy':
		 case 'dd-mm-yyyy':
		 case 'yyyy-mm-dd':
		   this.dateDelim = '-';
		break;
		 case 'dd/mm/yyyy':
		 case 'mm/dd/yyyy':
		 case 'dd/mmm/yyyy':
		   this.dateDelim = '/';
		break;
	   }

	   if (this.containerLayer.style.visibility=='visible'){
		  this.containerLayer.style.visibility='hidden';
          this.containerLayer.style.display='none';

		  if (canFindBuffer()) {
			 this.bufferLayer.style.visibility='hidden';
			 this.bufferLayer.style.display='none';
		  }
		   return;
		}

       windowSize = getWindowSize();

       windowSize.height -= 10 + $(this.linkElement).offset().top;

	   this.target = target;
	   var rTemp = this.target.split(".");
	   var tmp = document.forms[rTemp[0]][rTemp[1]]

	   if (tmp && tmp.value && tmp.value.split(this.dateDelim).length==3 && tmp.value.indexOf('d')==-1){
		  var atmp = tmp.value.split(this.dateDelim)
		   switch (this.dateFormat){
			 case 'dd-mmm-yyyy':
			  case 'dd/mmm/yyyy':
				 for (var i=0;i<this.months.length;i++){
				   if (atmp[1].toLowerCase()==this.months[i].substr(0,3).toLowerCase()){
					 this.month = this.oMonth = i;
					 break;
				   }
				 }
				 this.day = parseInt(atmp[0],10);
				 this.year = this.oYear = parseInt(atmp[2],10);
				 break;
			  case 'dd/mm/yyyy':
			  case 'dd-mm-yyyy':
				 this.month = this.oMonth = parseInt(atmp[1]-1,10);
				 this.day = parseInt(atmp[0],10);
				 this.year = this.oYear = parseInt(atmp[2],10);
				 break;
			 case 'mm/dd/yyyy':
			  case 'mm-dd-yyyy':
				 this.month = this.oMonth = parseInt(atmp[0]-1,10);
				 this.day = parseInt(atmp[1],10);
				 this.year = this.oYear = parseInt(atmp[2],10);
				 break;
			  case 'yyyy-mm-dd':
				 this.month = this.oMonth = parseInt(atmp[1]-1,10);
				 this.day = parseInt(atmp[2],10);
				 this.year = this.oYear = parseInt(atmp[0],10);
				 break;
		   }

		  if (isNaN(this.month) || isNaN(this.day) || isNaN(this.year) || this.month > 11 || this.day > 31) {
			 var vDate = new Date();
			 this.year = this.oYear = vDate.getFullYear();
			 this.month = this.oMonth = vDate.getMonth();
			 this.day = this.oDay = vDate.getDate();
		  }
	   } else {
		  var vDate = new Date();
		  this.year = this.oYear = vDate.getFullYear();
		  this.month = this.oMonth = vDate.getMonth();
		  this.day = this.oDay = vDate.getDate();
	   }

	   this.writeString(this.buildString());

	   var linkOffset = $(this.linkElement).offset();
	   var linkSize = getSize(this.linkElement);
       if (windowSize.height > 150) {
           this.containerLayer.style.top = (linkOffset.top + 1) + "px";
       } else {
           this.containerLayer.style.top = (linkOffset.top + linkSize.height - getAutoSize(this.containerLayer,"height")) + "px";
           if (parseInt(this.containerLayer.style.top, 10) < 0) {
               this.containerLayer.style.top = "2px";
           }
       }
       if (linkOffset.left + linkSize.width > windowSize.width - 165) {
           this.containerLayer.style.left = (linkOffset.left - 152) + "px";
       } else {
           this.containerLayer.style.left = (linkOffset.left + linkSize.width + 2) + "px";
       }

	   if (canFindBuffer()) {
		  this.bufferLayer.style.zIndex=300;
		  this.bufferLayer.style.visibility='visible';
		  this.bufferLayer.style.display='block';
		  this.bufferLayer.style.height='150px';
		  this.bufferLayer.style.width='150px';
	   }
	   this.containerLayer.style.visibility='visible';
       this.containerLayer.style.display='';
	   this.containerLayer.style.zIndex = 301;
	}
	this.hide = function() {
       if (gCalClicked && gCalBlur) {
           $('#' + gCalBlur).trigger('blur');
       }
       gCalClicked = false;
       gCalBlur = false;

	   this.containerLayer.style.visibility='hidden';
       this.containerLayer.style.display='none';

	   if (canFindBuffer()) {
		  this.bufferLayer.style.visibility='hidden';
		  this.bufferLayer.style.display='none';
	   }
	}
}
/*******************************************************
 * object: cDomObject                                  *
 *-----------------------------------------------------*
 * dont't use, only here for backwards compatability   *
 *******************************************************/
var cDomObject = {
	getWidth : function(element){
		return $(element).width();
	},
	getHeight : function(element){
		return $(element).height();
	}
};
/*******************************************************
 * object: fwMath                                      *
 *-----------------------------------------------------*
 * Math functions should go in fwMath                  *
 *******************************************************/
var fwMath = {
  round: function (value, precision) {
    var power = Math.pow(10, precision || 0);
    return Math.round(value * power) / power;
  },
  toFixed: function (value, precision) {
    return this.round(value, precision).toFixed(precision);
  },
  getDecimal : function (pNumber) {
    var pNumber = pNumber || 0;
    pNumber = parseFloat(pNumber.toString().replace(/[^-\d.]/g,''));
    if (isNaN(pNumber)) {
        pNumber = 0;
    }
    return pNumber;
  }
};
/*******************************************************
 * object: fwFormat                                    *
 *-----------------------------------------------------*
 * Formatting fuctions should go in fwFormat           *
 *******************************************************/
var fwFormat = {
  date: function (pDate, pFormat) {
    if (!pFormat) {
        pFormat = 'MM/dd/yyyy';
    }
    return $.format.date(pDate, pFormat);
  }
};
/*---------------------------------------------------------------------------------------------------
 - Functions
 ---------------------------------------------------------------------------------------------------*/
function addEvent(obj, type, fn, useCapture){
   EventManager.Add(obj, type, fn, useCapture);
}
function removeEvent(obj, type, fn){
   EventManager.Remove(obj, type, fn);
}
function addCssFile(pFile) {
    if (isDOMReady) {
        $("<link>").attr({
          rel:  "stylesheet",
          type: "text/css",
          href: '/webspeed/' + pFile + '.css?v=' + gV
        }).appendTo("head");
    } else {
        document.write('<link rel="STYLESHEET" type="text/css" href="/webspeed/' + pFile + '.css?v=' + gV + '" />');
    }
}
function addJsFile(pFile) {
    if (isDOMReady) {
        $.ajaxSetup({async: false});
        $.getScript('/webspeed/' + pFile + '?v=' + gV);
        $.ajaxSetup({async: true});
    } else {
        document.write('<script type="text/javascript" src="/webspeed/' + pFile + '?v=' + gV + '"></scr' + 'ipt>');
    }

}
function hasAttribute(el, attrString){
    if (!el || !attrString) {
        return false;
    }
    var hasAttr = $(el).attr(attrString);
    if (hasAttr == undefined || hasAttr == false || hasAttr == null) {
        return false;
    } else {
        return true;
    }
}
function removeInlineEvent(pField, pEvent){
    if (pEvent == 'onblur') {
        document.getElementById(pField).onblur = '';
    }
    else if (pEvent == 'onchange') {
        document.getElementById(pField).onchange = '';
    }
}
function captureScreen(pFunc) {
    if (gAllowAnotherCapture !== true) {
        return;
    }

    gAllowAnotherCapture = false;

    hideMessage();
    var pageHTML = "";
    var htmlPiece, htmlLength, pieceCounter, tempHtml;
    var chunkSize = 15000;
    var baseTag, headTag, tempElements;
    var url, root_url, e_url, p, p2, tempData, vCount, orientation;
    var scrolledDivs = [];
    var ckeditorData = {};
    var orientation = 'P';

    if (window.gScreenOrientation) {
        orientation = window.gScreenOrientation;
    }
    if (orientation != 'L') {
        orientation = 'P';
    }
    var vAbort = false;
    $('.fcChart').each(function(){
        var div = $(this);
        var vImageData = div.attr('data-img');
        var vDataRequest = div.attr('data-request');
        if (!div.attr('data-img')) {
            vAbort = true;
            if (!vDataRequest) {
                showMessage("Preparing Charts...");
                div.attr('data-request', 'true');
                getChartImgData(div.attr('data-id'), function(pId, pData){
                    hideMessage();
                    div.attr('data-img', pData);
                    captureScreen(pFunc);
                });
            }
        }
    });
    if (vAbort) {
        return;
    }

    $('div.skyTipWrap').hide();
    $(':scrollable').each(function(){
        var div = $(this);
        var topScroll = div.scrollTop();
        var leftScroll = div.scrollLeft();
        if (topScroll > 0 || leftScroll > 0) {
            if (this.id == '') {
                vCount = 0;
                while (true) {
                    if (!document.getElementById("scrollDiv_" + vCount)) {
                        this.id = 'scrollDiv_' + vCount;
                        break;
                    }
                    vCount++;
                }
            }
            scrolledDivs.push({
                'id':this.id
                ,'top':topScroll
                ,'left':leftScroll
            })
        }
    });

    pieceCounter = 1;
    htmlPiece = document.getElementById('hPrintScreen' + pieceCounter);
    while (htmlPiece) {
        $(htmlPiece).remove();
        pieceCounter++;
        htmlPiece = document.getElementById('hPrintScreen' + pieceCounter);
    }
    if (gIsIE) {
        $('script').attr('src','/webspeed/empty.js');
    }
    tempHtml = document.getElementsByTagName("html");
    if (tempHtml.length === 0) {
        message('There was a problem printing this screen.');
        return;
    }
    tempHtml = tempHtml[0].cloneNode(true);
    tempElements = document.getElementsByTagName('select');
    for (var i = tempElements.length - 1; i >= 0; i--) {
        $('option', tempElements[i]).each(function(j){
            if (j == tempElements[i].selectedIndex) {
                this.setAttribute("selected", "selected");
                this.selected = true;
            } else {
                this.removeAttribute("selected");
                this.selected = false;
            }
        });
    }

    tempElements = tempHtml.getElementsByTagName('script');
    for (var i = tempElements.length - 1; i >= 0; i--) {
        $(tempElements[i]).remove();
    }
    tempElements = tempHtml.getElementsByTagName('input');
    for (var i = tempElements.length - 1; i >= 0; i--) {
        tempElements[i].setAttribute('value', document.getElementsByTagName('input')[i].value);
        tempData = document.getElementsByTagName('input')[i].getAttribute('type');
        if (tempData == 'checkbox' || tempData == 'radio') {
            if (document.getElementsByTagName('input')[i].checked) {
                tempElements[i].checked = true;
                tempElements[i].setAttribute("checked", "checked");
            } else {
                tempElements[i].removeAttribute("checked");
                tempElements[i].checked = false;
            }
        }
    }
    tempElements = tempHtml.getElementsByTagName('textarea');
    for (var i = tempElements.length - 1; i >= 0; i--) {
        tempData = document.getElementsByTagName('textarea')[i].value;
        tempElements[i].setAttribute('value', tempData);
        if (typeof tempElements[i].innerHTML != 'undefined') {
            tempElements[i].innerHTML = tempData;
        } else {
            tempElements[i].innerText = tempData;
        }
    }

    tempElements = tempHtml.getElementsByTagName('select');
    for (var i = tempElements.length - 1; i >= 0; i--) {
        for (var j = tempElements[i].options.length - 1; j >= 0; j--) {
            if (document.getElementsByTagName('select')[i].options[j].selected) {
                tempElements[i].options[j].selected = true;
                tempElements[i].options[j].setAttribute("selected","selected");
            } else {
                tempElements[i].options[j].selected = false;
                tempElements[i].options[j].removeAttribute("selected");
            }
        }
    }

    $('.fcChart', tempHtml).each(function(){
        this.innerHTML = '<img src="' + this.getAttribute("data-img") + '" style="page-break-inside:avoid" />';
        this.setAttribute("data-img", "");
    });

    $('.ui-pnotify', tempHtml).hide();

    if (typeof(CKEDITOR) == 'object' && typeof(CKEDITOR.instances) == 'object') {
        for (var i in CKEDITOR.instances) {
            tempData = $('#cke_contents_' + i + ' iframe' , tempHtml).get(0);
            if (!tempData) {
                tempData = $('#cke_' + i + ' iframe' , tempHtml).get(0);
            }
            if (tempData) {
                tempData.setAttribute("name", "frame_" + i);
                tempData.setAttribute("id", "frame_" + i);
                tempData = $('iframe' , CKEDITOR.instances[i].container.$).get(0);
                if (tempData) {
                    tempData.setAttribute("name", "frame_" + i);
                    tempData.setAttribute("id", "frame_" + i);
                    tempData.name = "frame_" + i;
                    tempData.id = "frame_" + i;
                    if (tempData.contentDocument) {
                        ckeditorData[i] = "<html>" + tempData.contentDocument.getElementsByTagName("html")[0].innerHTML.replace(/\n/g, "").replace(/'/g, "\\'") + "</html>";
                    } else if (window.frames["frame_" + i]) {
                        ckeditorData[i] = "<html>" + window.frames["frame_" + i].document.getElementsByTagName("html")[0].innerHTML.replace(/\n/g, "").replace(/'/g, "\\'") + "</html>";
                    }
                }
            }
        }
    }

    $('#lockDiv', tempHtml).remove();

    headTag = tempHtml.getElementsByTagName("head");
    if (headTag.length < 1) {
        headTag = tempHtml.getElementsByTagName("body");
        if (headTag.length < 1) {
             message('There was a problem printing this screen.');
            return;
        }
    }
    headTag = headTag[0];
    baseTag = document.createElement('base');

    url = document.location.toString();
    e_url = '';
    p = 0;
    p2 = 0;
    p = url.indexOf("//");
    e_url = url.substring(p + 2);
    p2 = e_url.indexOf("/");
    root_url = url.substring(0, p + p2 + 3);
    baseTag.setAttribute('href', root_url);
    headTag.appendChild(baseTag);

    $('#link_browseFilters', tempHtml).hide();

    pageHTML = tempHtml.innerHTML.replace(/href="\/webspeed/gim, "href=\"" + root_url + "webspeed");

    pageHTML += "<script type='text/javascript'>" +
        "function scrollQuickFilter(){}" +
        "function scrollBrowseHeaders(){}" +
        "function closeQuickView(){}" +
        "function documentKeyPressed(){}" +
        "var legends = document.getElementsByTagName('legend');" +
        "var tmp;" +
        "for (var i = legends.length - 1; i >= 0; i--) {" +
            "tmp = document.createElement('span');" +
            "tmp.className = 'legend';" +
            "tmp.innerHTML = legends[i].innerHTML;" +
            "tmp.id = legends[i].id;" +
            "legends[i].parentNode.insertBefore(tmp, legends[i]);" +
            "legends[i].parentNode.removeChild(legends[i]);" +
            "document.body.className = document.body.className;" +
        "}";

        pageHTML += "window.onload = function(){";
            for (var i in ckeditorData) {
                pageHTML += "tmp = (document.getElementById('cke_contents_" + i + "') || document.getElementById('cke_" + i + "')).getElementsByTagName('iframe')[0];";
                pageHTML += "if (tmp) {";
                    pageHTML += "if (tmp.contentDocument) {";
                        pageHTML += "tmp.contentDocument.write('" + ckeditorData[i] + "')";
                    pageHTML += "} else if(window.frames['frame_" + i + "']) {";
                            pageHTML += "window.frames['frame_" + i + "'].document.write('" + ckeditorData[i] + "')";
                    pageHTML += "}";
                pageHTML += "}";
            }
            if (scrolledDivs.length > 0) {
                for (var i = 0; i < scrolledDivs.length; i++) {
                    pageHTML += "document.getElementById('" + scrolledDivs[i].id + "').scrollTop = " + scrolledDivs[i].top + ";";
                    pageHTML += "document.getElementById('" + scrolledDivs[i].id + "').scrollLeft = " + scrolledDivs[i].left + ";";
                }
            }
            if (document.getElementById(browses + 'BodyFixed')) {
                pageHTML += "document.getElementById('" + browses + "BodyFixed').scrollTop = " + document.getElementById(browses + 'BodyFixed').scrollTop + ";";
            }
            if (document.getElementById(browses + 'Header')) {
                pageHTML += "document.getElementById('" + browses + "Header').scrollLeft = " + document.getElementById(browses + 'Header').scrollLeft + ";";
            }
        pageHTML += "}";
    pageHTML += "</script>";


    pageHTML += "<style type='text/css'>" +
        "#controlBarRight a.toolLink {padding-top:0;}" +
        "#entitySelect {height:14px;}" +
        "#link_help {height:17px!important;}" +
        "input[type='radio'],input[type='checkbox'] {height:14px!important;width:14px!important;}" +
        "select[size='1'] {height:18px!important}";

    pageHTML += "</style>";

    tempHtml = null;
    htmlLength = pageHTML.length;
    pieceCounter = 0;
    $(baseTag).remove();
    do {
        pieceCounter++;
        htmlPiece = document.createElement('input');
        htmlPiece.type = 'hidden';
        htmlPiece.id = 'hPrintScreen' + pieceCounter;
        htmlPiece.name = htmlPiece.id;
        htmlPiece.value = pageHTML.substr(chunkSize * (pieceCounter - 1), chunkSize);
        if (document.detailform) {
            document.detailform.appendChild(htmlPiece);
        } else {
            document.body.appendChild(htmlPiece);
        }
    } while ( chunkSize * (pieceCounter - 1) < htmlLength );

    tempElements = document.getElementById('hPageTitle');
    if (!tempElements) {
        tempElements = document.createElement('input');
        tempElements.type = 'hidden';
        tempElements.id = 'hPageTitle';
        tempElements.name = tempElements.id;
        document.detailform.appendChild(tempElements);
    }
    tempElements.value = document.title;

    tempElements = document.getElementById('hUrl');
    if (!tempElements) {
        tempElements = document.createElement('input');
        tempElements.type = 'hidden';
        tempElements.id = 'hUrl';
        tempElements.name = tempElements.id;
        document.detailform.appendChild(tempElements);
    }
    tempElements.value = window.location.href;

    if (typeof(pFunc) === 'function') {
        pFunc();
        return;
    }

    var gPrintScreenXmlHttp = XmlHttp.create();
    if (gPrintScreenXmlHttp) {
        changeCursor();
        showMessage('Saving screen...');
        gPrintScreenXmlHttp.open("POST",'qprintscreenhttp001.w',true);
        gPrintScreenXmlHttp.onreadystatechange = function() {
            if (gAbortRequests) {
                removeCaptureFields();
                hideMessage();
                return;
            }
            if (gPrintScreenXmlHttp.readyState==4) {
                if (gPrintScreenXmlHttp.status==200) {
                    var myItems, mySuccess, myMessage, myInfo;
                    removeCaptureFields();
                    hideMessage();
                    myItems = gPrintScreenXmlHttp.responseXML.getElementsByTagName("validation");
                    for (i = 0; i < myItems.length; i++) {
                       mySuccess = getElementTextNS("", "successflag", myItems[i], 0);
                       myMessage = getElementTextNS("", "validationmsg", myItems[i], 0);
                       myInfo = getElementTextNS("", "xtrainfo", myItems[i], 0);
                    }
                    if (mySuccess == "YES" && myMessage.length > 0) {
                        addToQueue('Print Screen - ' + document.title, 'common/qprintscreen.p', myMessage + ";" + orientation, '', '', 'PDF');
                    } else if (myMessage != ""){
                        message(myMessage);
                    } else {
                        message("There was a problem printing this screen.<br />Please try again later.");
                    }
                }
            }
        }
        var vParams = "requestAction=printScreen" + buildFormData(true);
        gPrintScreenXmlHttp.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        if (gIsMoz || gIsIE) {
            gPrintScreenXmlHttp.setRequestHeader("Connection", "close");
            gPrintScreenXmlHttp.setRequestHeader("Content-length", vParams.length);
        }
        gPrintScreenXmlHttp.send(vParams);
    }
}
function removeCaptureFields(){
    var pieceCounter = 1,
        htmlPiece = document.getElementById('hPrintScreen' + pieceCounter);
    while (htmlPiece) {
        $(htmlPiece).remove();
        pieceCounter++;
        htmlPiece = document.getElementById('hPrintScreen' + pieceCounter);
    }
    setTimeout(function() {gAllowAnotherCapture=true;}, 3000);
}
function replaceEvent(pField, pEvent, pAddFunc, pRemoveFunc){
    removeEvent(document.getElementById(pField), pEvent.substring(2, pEvent.length), eval(pRemoveFunc));
    addEvent(document.getElementById(pField), pEvent.substring(2, pEvent.length), eval(pAddFunc));
}
function processButton(pAction,pNextProc,pPassedParams,pChangePassedParams,pKeepCase) {
   /*If new window is being opened, try this again later*/
   if (gOpening == true) {
       window.setTimeout(function(){processButton(pAction,pNextProc,pPassedParams,pChangePassedParams);}, 250);
       return;
   }

   var hApplyingFilter = document.getElementById("hApplyingFilter");
   var bContinue, tempEl;
   var LinkNames, LinkPrograms;
   gDoClosingActions = "no";

   if ($('#IsMobile').val() == 'true' && gLinkNumber == 1 && pNextProc == 'mobile.w') {
       $('#MobileId').val('');
   }

   if (pAction == 'applyFilter' && hApplyingFilter) {
      hApplyingFilter.value = 'true';
      pAction = document.detailform.vMaintOption.value;
   }

   bContinue = true;
   if (gDisplayRecordWarning==true && gPerformingSearch==false && (pAction.toLowerCase().indexOf("edit")>-1 || pAction.toLowerCase().indexOf("delete")>-1 || pAction.toLowerCase().indexOf("view")>-1)) {
      if (document.detailform.currentrecord.value == "") {
         bContinue = false;
         unChangeCursor();
         if (pAction.toLowerCase().indexOf("delete") > -1){
            message("Please select a record to delete.");
         } else {
             message("Please select a record to " + pAction + ".");
         }
      }
   }
   /* if the page is going to be navigated away from, prevent new windows from being opened */
   if (bContinue) {
       window.preventNewWindows = true;
   }

   if (bContinue && pAction != "select" && pAction != "close") {
      changeCursor();
      showMessage('Please wait...', null, null, function(){
          displayLockDiv();
          LinkPrograms = document.getElementById("LinkPrograms");
          LinkNames = document.getElementById("LinkNames");

          /*Special code for links to work properly when going back to EA+*/
          if (LinkPrograms && LinkPrograms.value != '' && LinkNames && LinkNames.value != '' && gLinkNumber > 0) {
             var vProgramElements = LinkPrograms.value.split(",");
             var vNameElements = LinkNames.value.split(",");
             var vTempLinkPrograms = '';
             var vTempLinkNames = '';
             var vProgramCount;

             for (vProgramCount=0; vProgramCount<gLinkNumber; vProgramCount++) {
                if ((vProgramElements[vProgramCount] == pNextProc && vProgramCount < (gLinkNumber - 1)) || (vProgramElements[vProgramCount] != pNextProc && vProgramElements[vProgramCount] != '')) {
                   if (vTempLinkPrograms == '') {
                      vTempLinkPrograms = vProgramElements[vProgramCount];
                      vTempLinkNames = vNameElements[vProgramCount];
                   } else {
                      vTempLinkPrograms += "," + vProgramElements[vProgramCount];
                      vTempLinkNames += "," + vNameElements[vProgramCount];
                   }
                } else {
                    break;
                }
             }
             LinkPrograms.value = vTempLinkPrograms;
             LinkNames.value = vTempLinkNames;
          }

          if (pPassedParams && pPassedParams != '') {
            document.detailform.passedparams.value = pPassedParams;
          } else {
             if (document.detailform.currentrecord.value != "" && (!pChangePassedParams || pChangePassedParams == 'true')) {
                 document.detailform.passedparams.value=document.detailform.currentrecord.value;
             }
          }

          if (pChangePassedParams && pChangePassedParams == 'false') {
              document.detailform.currentrecord.value=document.detailform.passedparams.value;
          }

          if (document.getElementById("HomePageMenuID") && gUseMenuId!='') {
              document.detailform.HomePageMenuID.value=gUseMenuId;
              gUseMenuId='';
          }

          if (document.detailform.FromRecent) {
              document.detailform.FromRecent.value = 'true';
          } else {
              $(document.detailform).append("<input type='hidden' id='FromRecent' name='FromRecent' value='true' />");
          }
          document.detailform.vMaintOption.value = pAction;
          document.detailform.action = pKeepCase ? pNextProc : pNextProc.toLowerCase();
          document.detailform.submit();
      });

   } else {
      if (pAction == "select") {
         var sCode, sDesc, cTR;
         if (document.detailform.currentrecord.value == "") {
            unChangeCursor();
            message("Please select a record to return.");
         } else {
           cTR = document.getElementById(document.detailform.currentrecord.value);
           if (cTR) {
              sCode = cTR.cells[0].innerHTML; //fix for columns with browse details or colors, etc
              sDesc = cTR.cells[1].innerHTML; //fix for columns with browse colors, etc
              opener.eval(pNextProc)(sCode, sDesc);
              self.close();
           }
         }
      }
      if (pAction == "close")
         self.close();
   }
}
function changeSet(pBrowse,pWhich,pReposition,pCurrentRecord,pChangeMaintOption) {
    var RepositionTo, hRepositioning;
   if (browses == '') {
       browses = pBrowse;
   }

   if (window.beforeChangeSet) {
      var vResult = beforeChangeSet();
      if (vResult == false){
          return;
      }
   }

   if (pChangeMaintOption == null){
       pChangeMaintOption = true;
   }

   changeCursor();
   showMessage('Please wait...', null, null, function(){
       displayLockDiv();

       RepositionTo = document.getElementById("RepositionTo");
       hRepositioning = document.getElementById("hRepositioning");

       document.getElementById(browses + "SelectRow").value=pWhich;
       document.detailform.action = document.getElementById("CurrentProgram").value.toLowerCase();

       if (document.getElementById('hRefreshFilters')) {
           document.getElementById('hRefreshFilters').value = 'false';
       } else {
           $(document.detailform).append("<input type='hidden' id='hRefreshFilters' name='hRefreshFilters' value='false' />");
       }


       if (RepositionTo && pReposition) {
           RepositionTo.value = pReposition;
       }

       if (hRepositioning) {
           hRepositioning.value = pCurrentRecord;
       }

       if (pCurrentRecord) {
          document.getElementById('currentrecord').value=pCurrentRecord;

          //Temp table browses
          if (pChangeMaintOption == true) {
              document.getElementById('vMaintOption').value = pWhich;
          }
       }
       document.detailform.submit();
   });
}
//Skycoder
function getUserSecLevel() {
    if (document.getElementById("UserSecLevel"))
        return parseInt(document.getElementById("UserSecLevel").value, 10);
    else
        return 0;
}
//Skycoder
function changeFieldLabel(pId,pOldLabel,pNewLabel) {
    if (pNewLabel.indexOf(":")==-1 && pOldLabel.indexOf(":") > -1)
        pNewLabel += ":";

    if (document.getElementById(pId)){
        document.getElementById(pId).style.whiteSpace = 'normal';
        document.getElementById(pId).innerHTML = document.getElementById(pId).innerHTML.replace(pOldLabel, pNewLabel);
    }
}
//Skycoder
function runOnServer(pProgram, pAction){
    validateForm(pAction, pProgram, '', '', '');
}
//Skycoder
function checkTitle(pTitle){
    var e = $('#pageTitle span').eq(0);
    var vMatch = e.text() == pTitle;
    if (!vMatch) {
        vMatch = e.find('span').eq(0).text() == pTitle;
    }
    return vMatch;
}
function validateForm(pAction,pProgram,pWhereTo,pExtraInfo,pPassedParams) {
   var vQuestion, vTempEl, vCurrentrecordEl;
   if (gOpenValidateForm) {
       return;
   }

   if (pPassedParams && pPassedParams != ""){
       document.detailform.currentrecord.value = pPassedParams;
   } else if (document.detailform.currentrecord.value == "" && pAction.toLowerCase().indexOf("delete") > -1) {
      unChangeCursor();
      message("Please select a record to delete.");
      return;
   }
   for (var i = 0; i < gExtraValidationField.length; i++) {
       if (gExtraValidationField[i] != "" && typeof(gExtraValidationField[i]) != "undefined") {
           if (document.getElementById(gExtraValidationField[i])) {
               if (document.getElementById(gExtraValidationField[i]).style.display != 'none' && document.getElementById(gExtraValidationField[i]).style.visibility != 'hidden') {
                   if (document.getElementById(gExtraValidationField[i]).value == "") {
                       unChangeCursor();
                       message($('#' + gExtraValidationLabel[i]).text().replace('*', '').replace(':','') + " is a required field.");
                       return;
                   }
               }
           }
       }
   }



   if (gExDtValField != "" && gExDtValLowDate != "" && gExDtValHighDate != "") {
       continueValidateDateOnSave(gExDtValField,gExDtValLowDate,gExDtValHighDate);
       if (gExtraDateValidationMessage != '') {
           unChangeCursor();
           message(gExtraDateValidationMessage);
           gExtraDateValidationMessage = "";
           return;
       }
   }

    if (window.prepareCKEditorData) {
        prepareCKEditorData(false);
    }

   gAction = pAction;
   gProgram = pProgram;
   gWhereTo = pWhereTo;

   if (pExtraInfo) {
       gExtraInfo = pExtraInfo;
   } else {
       gExtraInfo = "";
   }

   if (pAction.toLowerCase().indexOf("delete")>-1) {
      if (window.customDeleteMessage) {
        vQuestion = customDeleteMessage();
      } else {
         vQuestion = 'Are you sure you wish to delete this record?';
         if (pExtraInfo) {
            vQuestion = vQuestion.replace('?', ' (' + pExtraInfo + ')?');
         } else {
             vCurrentrecordEl = document.getElementById("currentrecord");
             if (vCurrentrecordEl) {
                vTempEl = document.getElementById(vCurrentrecordEl.value);
             }
             if (vTempEl && vTempEl.getAttribute("delinfo")) {
                vQuestion = vQuestion.replace('?', ' (' + vTempEl.getAttribute("delinfo") + ')?');
             }
         }
      }
      if (vQuestion != '') {
          message(vQuestion,'Confirm Delete',0,0,0,"Yes","window.setTimeout(delayValidateForm, gTimeout);","No","unChangeCursor();");
      } else {
          if (gDoClosingActions == "yes") {
              continueValidateForm();
          } else {
              window.setTimeout(delayValidateForm, gTimeout);
          }

      }
   } else {
        if (gDoClosingActions == "yes") {
            continueValidateForm();
        } else {
            window.setTimeout(delayValidateForm, gTimeout);
        }
   }
}
function continueValidateForm() {
   if (gOpenValidateForm) {
       return;
   }
   var messageShown = false;

   if (gProgram != '') {
      gOpenValidateForm=true;

      if (gSuppressMessage == false) {
          changeCursor();
          messageShown = true;
          showMessage('Please wait...');
      } else {
          gSuppressMessage = false;
      }

      var gValidationXmlHttp = XmlHttp.create();
      if (gValidationXmlHttp) {
          gValidationXmlHttp.open("POST",gProgram,gSynchronous);
          gValidationXmlHttp.onreadystatechange = function () {
            if (gAbortRequests) {
                return;
            }
            var myItems, i, j, success, vDetails, vWhereTo, vCurrent, vRecCount, vRowid, vCurrentBrowse, RefreshMode, vCurrentValue, vNewList, vError;
            if (gValidationXmlHttp.readyState==4) {
               if (gValidationXmlHttp.status==200) {
                  gOpenValidateForm=false;
                  if (messageShown) {
                      hideMessage();
                  }

                 //Use if XML returned will contain chr(21), etc which is not valid XML, thus use the reponseText instead of responseXML
                 if (gUseResponseText==true) {
                     var vExp1 = new RegExp(String.fromCharCode(21), "gi");
                     var vExp2 = new RegExp(String.fromCharCode(22), "gi");
                     var vExp3 = new RegExp(String.fromCharCode(23), "gi");
                     var vExp4 = new RegExp(String.fromCharCode(24), "gi");
                     var vExp5 = new RegExp(String.fromCharCode(25), "gi");
                     var vXML;

                     vXML = gValidationXmlHttp.responseText;
                     vXML = vXML.replace(vExp1,"%15");
                     vXML = vXML.replace(vExp2,"%16");
                     vXML = vXML.replace(vExp3,"%17");
                     vXML = vXML.replace(vExp4,"%18");
                     vXML = vXML.replace(vExp5,"%19");

                     try {
                         var parser = new DOMParser();
                         myItems = parser.parseFromString(vXML, "application/xml").getElementsByTagName("validation");
                     }
                     catch(er) {
                         myItems = new ActiveXObject( "Microsoft.XMLDOM" );
                         myItems.async = "false";
                         myItems.loadXML(vXML);
                         myItems = myItems.getElementsByTagName("validation");
                     }
                     gUseResponseText = false;
                 }
                 else if (gValidationXmlHttp.responseXML) {
                      myItems = gValidationXmlHttp.responseXML.getElementsByTagName("validation");
                 }
                 else{
                    if (gValidationXmlHttp.responseText.indexOf("Generated by Webspeed") > -1) {
                       vError = "The HTTP program could not be found.";
                    }
                    if (!gValidationXmlHttp.responseText) {
                        vError = 'action';
                    }
                    else if (gValidationXmlHttp.responseText.indexOf("Generated by Webspeed") < 0 && gValidationXmlHttp.responseText.indexOf("Unable to run Web object") > -1) {
                        vError = 'The procedure called by the action is not defined.';
                    }
                    else if (gValidationXmlHttp.responseText.indexOf("Msngr: the specified service name does not exist or has a bad format") > - 1) {
                        vError = 'The connection to the database may have been lost.';
                    }
                    if (vError != '') {
                        message('The action you specified could not be completed, please try again.', '', 0,0,0,'Ok','','Details','errorDetails("' + vError + '");');
                        return;
                    }
                 }
                 if (!gValidationXmlHttp.responseText) {
                     vError = 'action';
                 }
                 else if (gValidationXmlHttp.responseText.indexOf("Generated by Webspeed") > -1) {
                    vError = 'The HTTP program could not be found.';
                 }
                 else if (gValidationXmlHttp.responseText.indexOf("Generated by Webspeed") < 0 && gValidationXmlHttp.responseText.indexOf("Unable to run Web object") > -1) {
                     vError = 'The procedure called by the action is not defined.';
                 }
                 else if (gValidationXmlHttp.responseText.indexOf("Msngr: the specified service name does not exist or has a bad format") > - 1) {
                     vError = 'The connection to the database may have been lost.';
                 }

                 if (myItems.length == 0) {
                    message('The action you specified could not be completed, please try again.', '', 0,0,0,'Ok','','Details','errorDetails("' + vError + '");');
                    return;
                 }

                  for (i=0; i < myItems.length; i++) {
                     success = getElementTextNS("", "successflag", myItems[i], 0);
                     gReturnMsg = getElementTextNS("", "validationmsg", myItems[i], 0);
                     gReturnInfo = getElementTextNS("", "xtrainfo", myItems[i], 0);
                     if (success.indexOf("PROMPT")>-1) {
                        gOnConfirm = getElementTextNS("", "onconfirm", myItems[i], 0);
                        message(gReturnMsg, '', 0, 0, 0, 'OK', gOnConfirm, 'Cancel', '');
                     } else if (success.indexOf("NO") > -1) {
                        if (window.failedValidation) {
                           failedValidation(myItems);
                           return;
                        }
                        formatMessage();
                        if (rightTrim(gReturnMsg)!= "") {
                            message(gReturnMsg);
                        }
                     } else {
                        if (gWhereTo.toUpperCase() == "CLOSE" && gExtraInfo == "") {
                           try {
                               RefreshMode = opener.document.getElementById("RefreshMode");
                               if (RefreshMode) {
                                   RefreshMode = RefreshMode.value;
                               }
                              if (window.opener && !opener.closed && RefreshMode == "") {
                                  opener.document.detailform.RefreshMode.value = document.detailform.vMaintOption.value.toLowerCase();
                              }
                           } catch (ex) {}
                        }

                        if (gWhereTo.toLowerCase() == 'donothing' && gAction == 'removeFilter') {
                           if ($('#sFilterSelect').val() == $('#sFilterList').val()) {
                               document.getElementById('sFilterSelect').selectedIndex = 0;
                               if (!document.getElementById("hRefreshFilters")) {
                                   $(document.detailform).append("<input type='hidden' id='hRefreshFilters' name='hRefreshFilters' value='true' />");
                               } else {
                                   document.getElementById("hRefreshFilters").value = "true";
                               }
                               refreshParent();
                               return;
                           }
                           getFilterList();
                           hideMessage();
                           return;
                        }

                        if (gWhereTo.toLowerCase() == 'donothing' && gAction == 'removeChart') {
                           getChartList();
                           return;
                        }

                        if (gWhereTo.toLowerCase() == 'signout' && gAction == 'signout') {
                           finishSignout();
                           return;
                        }

                        if (window.afterValidation && gAction != 'saveColumnWidth' && gAction != 'removeFilter') {
                            afterValidation();
                        }

                        if (window.afterValidationAlt && gAction != 'saveColumnWidth' && gAction != 'removeFilter') {
                            afterValidationAlt();
                        }

                        if (gWhereTo.toLowerCase() == 'donothing') {
                            return;
                        } else if (gWhereTo.toLowerCase() == 'validatefilter') {
                            validateFilter();
                            return;
                        }

                        if (window.customValidation && gAction != 'removeFilter' && gAction != 'saveColumnWidth' && gUseCustomValidation == true) {
                           customValidation(myItems);
                           return;
                        }
                        gUseCustomValidation = true;

                        if (document.detailform.currentrecord.value != "" && gLoadedBrowse == false){
                            document.detailform.passedparams.value=document.detailform.currentrecord.value;
                        }

                        vWhereTo = gWhereTo.toUpperCase().split('.');
                        vCurrent = document.getElementById("CurrentProgram").value.toUpperCase().split('.');

                        //This is needed for programmers that call RefreshDetails when deleting a browse detail when they really want to refresh the entire page
                        if (gFromRefreshDetails == true) {
                           gFromRefreshDetails = false;
                           if (gWhereTo.toUpperCase().indexOf('.W') >= 0) {
                               vCurrent='x';
                           }
                        }

                        /*Deleting browse record*/
                        if ((gAction.toUpperCase().indexOf('DEL')>-1 || gAction.toUpperCase().indexOf('REMOVE')>-1) && vWhereTo[0] == vCurrent[0] && gDelRow != '' && gRefreshAfterDelete == false) {
                           vRecCount = parseInt(document.getElementById("dRecCount").innerHTML,10) - 1;
                           $(document.getElementById("dRecCount")).html(vRecCount);

                           for (var i=0; i<vDataBrowserIndex[vLastSortCol].length; i++) {
                              if (vDataBrowserIndex[vLastSortCol][i]==gDelRow) {
                                 vRowid='';

                                 /*find next record*/
                                 for (var j = i + 1 ; j < vDataBrowserIndex[vLastSortCol].length; j++) {
                                    if (vBrowseData[vDataBrowserIndex[vLastSortCol][j]] != '') {
                                       vRowid=getRowId(vBrowseData[vDataBrowserIndex[vLastSortCol][j]]);
                                       document.detailform.currentrecord.value=vRowid;
                                       gDoNotClear = true;
                                       j=9999;
                                    }
                                 }

                                 /*find previous record*/
                                 if (vRowid == '') {
                                    for (var j= i - 1; j > 0; j--) {
                                       if (vBrowseData[vDataBrowserIndex[vLastSortCol][j]] != '') {
                                          vRowid=getRowId(vBrowseData[vDataBrowserIndex[vLastSortCol][j]]);
                                          document.detailform.currentrecord.value=vRowid;
                                          gDoNotClear = true;
                                          j = -1;
                                       }
                                    }
                                 }
                                 i = 9999;
                              }
                           }

                           vBrowseData[gDelRow] = '';
                           if (document.getElementById(browses + 'BodyFixed')) {
                               vBrowseDataFixed[gDelRow] = '';
                           }
                           if (vLastSortDir == 'A'){
                               vLastSortDir='D';
                           } else {
                               vLastSortDir='A';
                           }
                           continueSortColumn(browses,document.getElementById("vSelectedColumn").value);
                        } else if (gWhereTo.toUpperCase() == "CLOSE" && (gExtraInfo == "" || gExtraInfo.toUpperCase() == "NOREFRESH")) {
                           try {
                              if (window.opener && !opener.closed && opener.document.getElementById("passedparams")) {
                                 if (gExtraInfo.toUpperCase() != "NOREFRESH") {
                                    if (gReturnMsg != '') {
                                       opener.document.detailform.passedparams.value=gReturnMsg;

                                       if (gReturnInfo != ''){
                                           opener.document.detailform.currentrecord.value=gReturnInfo;
                                       } else {
                                           opener.document.detailform.currentrecord.value=gReturnMsg;
                                       }
                                    } else {//needed after editing if the programmer didn't specify a row to reposition to and the user had done a lookup
                                       try {
                                          vCurrentBrowse=document.getElementById("currentbrowse").value;
                                          opener.document.getElementById(vCurrentBrowse + "SelectRow").value=opener.document.detailform.currentrecord.value;
                                       } catch (ex) {}
                                    }

                                    if (gOpenAfterAdd != '') {
                                       opener.document.detailform.OpenRow.value=opener.document.detailform.currentrecord.value;
                                       opener.document.detailform.OpenDetails.value=gOpenAfterAdd;
                                    }

                                    if (gSaveAndPrint == true)
                                        opener.document.detailform.hSaveAndPrint.value='true';

                                    opener.refreshParent();
                                 }
                              }
                           } catch (ex) {}

                          changeCursor();
                          closePopup();

                        } else if (gWhereTo.indexOf('.w') > -1){
                           if (gReturnMsg != '') {
                              document.detailform.passedparams.value = gReturnMsg;
                              if (gReturnInfo != '') {
                                  document.detailform.currentrecord.value = gReturnInfo;
                              } else {
                                  document.detailform.currentrecord.value = gReturnMsg;
                              }
                           }
                           processButton(document.detailform.vMaintOption.value, gWhereTo);
                        } else if(gWhereTo.toUpperCase() == "" && gExtraInfo == ""){
                            return;
                        } else {
                           //This is how browse details are refreshed without posting the page
                           vCurrentValue=document.detailform.OpenRow.value;

                           try {
                              //this indicates that the parent browse should be refreshed
                              if (gWhereTo.toUpperCase() == "CLOSE" || gExtraInfo != "") {
                                 if (vCurrentValue == '' || !opener.document.getElementById(vCurrentValue)) {
                                    vCurrentValue = opener.document.getElementById("currentrecord").value;
                                 }
                                 if (vCurrentValue == '') { //no record to refresh, just close the window
                                     self.close();
                                     return;
                                 }
                              } else { //this indicates that the current browse should be refreshed
                                 if (vCurrentValue == '' || !document.getElementById(vCurrentValue)) {
                                     vCurrentValue = document.getElementById("currentrecord").value;
                                 }
                              }
                           } catch (ex) {}

                           vDetails = [];
                           if (gExtraInfo != "") {
                              changeCursor();
                              showMessage('Please wait...');
                              opener.buildOpenClosed();
                              vDetails = gExtraInfo.split(",");

                              if (vCurrentValue != '' && opener.document.getElementById(vCurrentValue + "0div")) {
                                 if (!opener.document.getElementById(vCurrentValue + "1detail")) {
                                     opener.getbrowseDetail('',0);
                                 }
                                 try {
                                    vNewList = '';
                                    for (var i = 0; i < vDetails.length; i++) {
                                       if (opener.document.getElementById(vCurrentValue + vDetails[i] + "div") && opener.document.getElementById(vCurrentValue + vDetails[i] + "div").innerHTML != '') {
                                          if (opener.document.getElementById(vCurrentValue + vDetails[i] + "img").className == 'bd_open') {
                                             if (vNewList == '') {
                                                 vNewList += vDetails[i];
                                             } else {
                                                 vNewList += "," + vDetails[i];
                                             }
                                          } else {
                                             $(opener.document.getElementById(vCurrentValue + vDetails[i] + "div")).html('');
                                          }
                                       }
                                    }
                                    vDetails = vNewList.split(",");
                                 } catch(er) {
                                    vDetails = gExtraInfo.split(",");
                                 }

                                 if (vDetails[0] == '') {
                                    self.close();
                                    return;
                                 }

                                 opener.buildOpenClosed();

                                 opener.refreshDetailsDelay(vDetails.length,'*INIT*');

                                 for (var i = 0; i < vDetails.length; i++) {
                                    if (opener.document.getElementById(vCurrentValue + vDetails[i] + "detail")) {
                                        opener.getbrowseDetail('',vDetails[i]);
                                    }
                                 }
                                 hideMessage();

                                 closePopup();
                              }
                           } else { //this is for delete links inside of browse details
                              buildOpenClosed();
                              vDetails = gWhereTo.split(",");

                              refreshDetailsDelay(vDetails.length,'*INIT*');

                              for (var i = 0; i < vDetails.length; i++) {
                                 if (document.getElementById(vCurrentValue + vDetails[i] + "detail")) {
                                     getbrowseDetail('',vDetails[i]);
                                 }
                              }
                           }
                        }
                     }
                  }
               } else {
                   if (messageShown) {
                       hideMessage();
                   }
                   try {
                       if (parseInt(gValidationXmlHttp.status, 10)!=0)
                           message('There was an error (' + gValidationXmlHttp.status + ') processing your request.\nPlease try again.');
                   } catch(er) {}
               }
            }
         }
      }
      gValidationXmlHttp.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
      gValidationXmlHttp.send("requestAction=" + gAction + buildFormData());
   } else {
      if (document.detailform.currentrecord.value != "") {
          document.detailform.passedparams.value=document.detailform.currentrecord.value;
      }
      if (gAction != "") {
          processButton(gAction, gWhereTo);
      } else {
          processButton(document.detailform.vMaintOption.value, gWhereTo);
      }
   }
}
function openIframeDialog(pOpen,pWidth,pHeight,pResizable,pMode,pMenuBar,pIndepWin,pToolbar,pTitle) {
    if (!pResizable) {
        window.gIFDResize = false;
    } else {
        window.gIFDResize = true;
    }
    window.clearTimeout(gIFDTimeout);
    var iFrameDialog = document.getElementById('iFrameDialog');
    var myIframe, innerWrap, header, footer, closeLink, titleElement, titleText,
        loadingIcon, windowSize, loadingHTML, jsTime, waitIcon, waitMessage, frameDocument,
        oldTarget, oldAction, oldMode, filterDiv;
    if (gIFDTimeout.length > 0) {
        window.clearTimeout(gIFDTimeout);
        myIframe = iFrameDialog.getElementsByTagName("iframe");
        if (myIframe.length > 0) {
            myIframe[0].src = 'blank.html';
            $(myIframe[0]).remove();
        }
    } else if (!iFrameDialog){
        iFrameDialog = document.createElement('div');
        document.body.appendChild(iFrameDialog);
    }
    $(iFrameDialog).html("");

    windowSize = getWindowSize();
    jsTime = new Date().getTime();

    if (pHeight + 120 > windowSize.height) {
        pHeight = windowSize.height - 120;
    }
    if (pWidth + 60 > windowSize.width) {
        pWidth = windowSize.width - 60;
    }

    myIframe = document.createElement('iframe');
    innerWrap = document.createElement('div');
    header  = document.createElement('div');
    closeLink = document.createElement('a');
    footer  = document.createElement('div');
    loadingIcon = document.createElement('div');
    titleElement = document.createElement('div');

    iFrameDialog.id = 'iFrameDialog';

    if (parseInt(pWidth, 10) == 0 && parseInt(pHeight, 10) == 0)
        iFrameDialog.style.display = 'none';
    else if (parseInt(pWidth, 10)>0)
        iFrameDialog.style.width = (pWidth + 10) + "px";

    innerWrap.id = 'ifdInnerWrap';
    header.id = 'ifdHeader';

    switch (pMode) {
        case "export" :
            waitMessage = "Exporting...";
            switch (fwSky.browse.exportFormat) {
                case "ms" :
                    waitIcon = "/webspeed/export-excel.png";
                    titleText = "Export To Excel";
                    break;
                case "csv" :
                    waitIcon = "/webspeed/export-csv.png";
                    titleText = "Export To CSV";
                    break;
                case "oo" :
                    waitIcon = "/webspeed/export-openoffice.png";
                    titleText = "Export To Open Office";
                    break;
            }
            break;
        case "chart" :
            waitMessage = "Loading Chart...";
            titleText = "View Chart";
            break;
        case "print" :
            waitMessage = "Exporting For Print...";
            titleText = "Print Browse Data";
            break;
    }

    if (!titleText && pTitle) {
        titleText = pTitle;
    }
    if (!waitIcon) {
        waitIcon = "/webspeed/dialog-wait.png";
    }
    if (!waitMessage) {
        waitMessage = "Loading...";
    }

    titleElement.innerHTML = titleText || "&nbsp;";
    titleElement.id = 'ifdTitle';
    closeLink.id = 'ifdCloseLink';
    closeLink.innerHTML = 'X';
    closeLink.href = 'javascript:void(0)';

    footer.id = 'ifdFooter';
    footer.style.position = 'relative';
    footer.style.height = '19px';
    footer.className = 'themeDark';
    footer.style.borderTop = '1px solid #AAAAAA';

    loadingIcon.id = 'ifdLoadingIcon';
    loadingIcon.innerHTML = '&nbsp;';
    loadingIcon.style.position = 'absolute';
    loadingIcon.style.top = '2px';
    loadingIcon.style.left = '50%';
    loadingIcon.style.marginLeft = '-64px';
    loadingIcon.style.width = '128px';
    loadingIcon.style.height = '15px';

    myIframe.src = 'blank.html';

    if (parseInt(pHeight, 10))
        myIframe.style.height = pHeight + "px";

    myIframe.style.width = "100%";
    myIframe.setAttribute('frameBorder','0');
    myIframe.id = 'ifdIframe_' + jsTime;
    myIframe.name = 'ifdIframe_' + jsTime;
    myIframe.title = titleText;

    displayLockDiv();

    if (parseInt(pWidth, 10) > 0 || parseInt(pHeight, 10) > 0) {
        document.getElementById('lockDiv').style.backgroundColor = '#000000';
        setOpacity('lockDiv', 75);
    }

    iFrameDialog.appendChild(innerWrap);
    innerWrap.appendChild(header);
    innerWrap.appendChild(myIframe);
    innerWrap.appendChild(footer);
    header.appendChild(titleElement);
    header.appendChild(closeLink);
    footer.appendChild(loadingIcon);
    loadingIcon.style.background = 'url(/webspeed/loading-icon.gif) top left no-repeat';

    if (parseInt(pWidth, 10) > 0 || parseInt(pHeight, 10) > 0)
        iFrameDialog.style.display = '';
    else
        iFrameDialog.style.display = 'none';

    centerFilter("iFrameDialog");

    addEvent(titleElement, 'mousedown', function(evt){
        if (!evt) {var evt = window.event;}
        startMove(evt,"iFrameDialog", true);
    });

    if (gIsSafari || gIsChrome) {
        var loadImage = new Image();
        loadImage.src = waitIcon;
    }

    loadingHTML = "<table width='100%' height='100%'><tbody><tr valign='center'><td width='" + (pWidth > 500 ? '20%' : '100px') + "' align='center' style='background: url(" + waitIcon + ") no-repeat 60% 55%;'>&nbsp;</td><td align='center'><h1 style='color: rgb(47, 47, 47); font-family: Verdana,Geneva,sans-serif; font-style: italic; font-size: 16pt;'>" + waitMessage + "</h1><div style='margin-top: 10px; font-size: 14pt; font-family: Verdana,Geneva,sans-serif;'>Please wait.</div></td></tr></tbody></table>"

    if (myIframe.contentWindow) {
        myIframe.contentWindow.name = 'ifdIframe_' + jsTime;
        frameDocument = window.frames['ifdIframe_' + jsTime].document;
    } else {
        frameDocument = myIframe.contentDocument;
    }
    if (frameDocument) {
        frameDocument.write(loadingHTML);
    }

    oldTarget = document.detailform.target;
    oldAction = document.detailform.action;

    if (window.document.detailform.vMaintOption) {
        oldMode = window.document.detailform.vMaintOption.value;
        window.document.detailform.vMaintOption.value = pMode;
    }

    gDialogIFrame = myIframe;
    document.detailform.target = 'ifdIframe_' + jsTime;
    document.detailform.action = pOpen;
    document.detailform.submit();
    if (myIframe.attachEvent) {
        myIframe.attachEvent("onload", ifdDoneLoading);
    } else {
        addEvent(myIframe, 'load', ifdDoneLoading);
    }
    document.detailform.vMaintOption.value = oldMode;
    document.detailform.target = oldTarget;
    document.detailform.action = oldAction;
    addEvent(closeLink, 'click', closeIframeDialog);
    //prevent contextmenu in iFrame
    if (frameDocument) {
        addEvent(frameDocument, "contextmenu", function(evt){
            if (!evt) {
                var evt = window.event;
            }
            cancelEvent(evt);
            return false;
        });
    }
}
function setIframeDialogSize(){
    var iFrameDialog = document.getElementById('iFrameDialog');
    if (!iFrameDialog) {
        return;
    }
    var windowSize = getWindowSize();
    var frameDocument;
    iFrameDialog.style.width = (windowSize.width - 60) + "px";
    iFrameDialog.style.height = (windowSize.height - 120) + "px";
    $('iframe', iFrameDialog).css('height', iFrameDialog.style.height);
}
function closeIframeDialog(){
    var iFrameDialog = document.getElementById('iFrameDialog');
    if (!iFrameDialog) {
        return false;
    }
    iFrameDialog.style.display = 'none';
    hideLockDiv();
    setOpacity('lockDiv', 0);
    document.getElementById('lockDiv').style.bagckgroundColor = '#FFFFFF';
    gDialogIFrame = null;
    /*
    gIFDTimeout = window.setTimeout(function(){
        var iFrameDialog = document.getElementById('iFrameDialog');
        if (iFrameDialog) {
            var myIframe = iFrameDialog.getElementsByTagName("iframe");
            if (myIframe.length > 0) {
                myIframe[0].src = 'blank.html';
                $(myIframe[0]).remove();
            }
            $(iFrameDialog).html("");
        }
    }, 2000);
    */
}
function ifdDoneLoading(){
    var LoadingIcon = document.getElementById('ifdLoadingIcon');
    if (!LoadingIcon) {
        return false;
    }
    LoadingIcon.style.display = 'none';
    if (gDialogIFrame) {
        var frameDocument, backButton;
        if (window.frames && window.frames[gDialogIFrame.name] && window.frames[gDialogIFrame.name].document) {
            frameDocument = window.frames[gDialogIFrame.name].document;
        } else {
            frameDocument = gDialogIFrame.contentDocument;
        }
        //prevent contect menu in iFrame
        if (frameDocument) {
            addEvent(frameDocument, "contextmenu", function(evt){
                if (!evt) {
                    var evt = window.event;
                }
                cancelEvent(evt);
                return false;
            });
            //remove back buttons from iframe documents
            backButton = frameDocument.getElementById('bBack');
            if (backButton) {
                backButton.style.visibility = 'hidden';
            }
            backButton = frameDocument.getElementById('bCancel');
            if (backButton) {
                backButton.style.visibility = 'hidden';
            }
        }
    }
}
function startMove(e, elID){
    addEvent(gIsIE8 ? document : window, "mousemove", watchMove);
    addEvent(gIsIE8 ? document : window, "mouseup", finishMove);
    if (typeof(gMoveObj) == "undefined") {
        window.gMoveObj = {};
    }
    gMoveObj.el = document.getElementById(elID);
    if (!gMoveObj.el) {
        gMoveObj = {};
        clearSelections();
        return;
    }
    document.body.style.cursor = 'move';
    var screenDiv = document.getElementById('screenDiv');
     if (elID == 'iFrameDialog' && !screenDiv) {
        screenDiv = document.createElement('div');
        screenDiv.id = 'screenDiv';
        screenDiv.style.top = 0;
        screenDiv.style.left = 0;
        screenDiv.style.zIndex = 9999;
        screenDiv.style.position = 'absolute';
        screenDiv.style.height = getElementHeight(gMoveObj.el) + "px";
        screenDiv.style.width = getElementWidth(gMoveObj.el) + "px";
        gMoveObj.el.appendChild(screenDiv);
    }

    var docSize = getDocumentSize();
    var elementSize = getSize(gMoveObj.el);
    var position = $(gMoveObj.el).offset();
    gMoveObj.baseX = e.clientX - position.left;
    gMoveObj.baseY = e.clientY - position.top;
    gMoveObj.el.style.top = (e.clientY - gMoveObj.baseY + getScrollY()) + "px";
    gMoveObj.el.style.left = (e.clientX - gMoveObj.baseX + getScrollX()) + "px";
    gMoveObj.el.style.margin = "0";
    gMoveObj.maxY = docSize.height - elementSize.height;
    gMoveObj.maxX = docSize.width - elementSize.width;

    if (elID == "iFrameDialog" && (gIsMoz || gIsSafari)) {
        gMoveObj.maxY -= 15;
        gMoveObj.maxX -= 15;
    }

    gMoveObj.maxY -= 2;
    gMoveObj.maxX -= 2;

    clearSelections();
}
function watchMove(e){
    var newX = (e.clientX - gMoveObj.baseX + getScrollX());
    var newY = (e.clientY - gMoveObj.baseY + getScrollY());
    if (newX < 0) {
        newX = 0;
    } else if (newX > gMoveObj.maxX) {
        newX = gMoveObj.maxX;
    }
    if (newY < 0) {
        newY = 0;
    } else if (newY > gMoveObj.maxY) {
        newY = gMoveObj.maxY;
    }
    gMoveObj.el.style.top = newY + "px";
    gMoveObj.el.style.left = newX + "px";
    clearSelections();
}
function finishMove(e){
    removeEvent(gIsIE8 ? document : window, "mousemove", watchMove);
    removeEvent(gIsIE8 ? document : window, "mouseup", finishMove);
    if (document.getElementById('screenDiv')) {
        $('#screenDiv').remove();
    }
    document.body.style.cursor = '';
    gMoveObj = {}
    clearSelections();
}
function errorDetails(pError){
    if (pError != '' && pError != 'undefined') {
        if (pError == 'action') {
            message('1. The action is not defined in the HTTP program.\n\n' +
                    '<i>-OR-</i>\n\n' +
                    '2. The procedure called by the action does not contain RUN CreateValidationDocument.' +
                    ' (The database may have been updated without the validation document.)');
        }
        else{
            message(pError);
        }
    }
    else {
        message('1. The <b>action</b> specified is <b>not defined</b> in the HTTP program.\n\n' +
                '2. The <b>procedure</b> defined for the <b>action</b> does <b>not exist</b>.\n\n' +
                '3. The <b>procedure called</b> for the action does <b>not contain\n &nbsp;&nbsp;&nbsp;&nbsp;CreateValidationDocument</b>.\n\n' +
                '4. The <b>HTTP program</b> could <b>not be found</b>.\n\n' +
                '5. The database may not be connected.');
    }

}
function return_password(pPasswordOK) {
    if (pPasswordOK == "no")
       message('You may not print this report because it contains Food Service Information.');
    else
        window.setTimeout(runPrint,500);
}
function runPrint() {
    var vSetCpChar, vSetUserId, vSetRecId, vSetWhereFrom, vSetWhereTo, hCpParams, vAttachParams;

    if (opener.document.getElementById('hUseCpTable') && opener.document.getElementById('hUseCpTable').value.toUpperCase() == "YES") {
       vSetCpChar    = true;
       vSetUserId    = true;
       vSetRecId     = true;
       vSetWhereFrom = true;
       vSetWhereTo   = true;

       if (opener.document.getElementById("hCpParams").value != "") {
          hCpParams = opener.document.getElementById("hCpParams").value.split(String.fromCharCode(22));
          for (var i=0; i < hCpParams.length; i++) {
             switch(hCpParams[i].split(String.fromCharCode(21))[0].toUpperCase()) {
                case "CP-CHAR":
                   vSetCpChar = false;
                   break;
                case "USER-ID":
                   vSetUserId = false;
                   break;
                case "CP-RECID":
                   vSetRecId = false;
                   break;
                case "WHERE-FROM":
                   vSetWhereFrom = false;
                   break;
                case "WHERE-TO":
                   vSetWhereTo = false;
                   break;
             }
             setCPField(hCpParams[i].split(String.fromCharCode(21))[0],hCpParams[i].split(String.fromCharCode(21))[1]);
          }
       }

       if (vSetCpChar) {
           setCPField("CP-CHAR","WEB");
       }
       if (vSetUserId) {
          setCPField("USER-ID",opener.document.getElementById("nameid").value);
       }
       if (vSetRecId) {
          setCPField("CP-RECID",gReturnInfo);
       }
       if (vSetWhereFrom) {
          setCPField("WHERE-FROM",opener.document.getElementById("MaintProg").value.split("/")[1]);
       }
       if (vSetWhereTo) {
          setCPField("WHERE-TO",opener.document.getElementById("RptProg").value);
       }
       if (opener.document.getElementById("hCpRptProgram")){
           gProgramToUse = opener.document.getElementById("hCpRptProgram").value;
       }

       switch(opener.document.getElementById("hCpType").value.toLowerCase()) {
          case "report":
             launchReportPrint(opener.document.getElementById("hCpRptTitle") ? opener.document.getElementById("hCpRptTitle").value : opener.document.getElementById("BrwsTitle").value,null,"closeParent=true");
             break;
          case "utility":
             launchReport(opener.document.getElementById("hCpRptTitle") ? opener.document.getElementById("hCpRptTitle").value : opener.document.getElementById("BrwsTitle").value,null,"closeParent=true");
             break;
       }
    } else {
       if (opener.document.getElementById('Type') &&
           opener.document.getElementById('Type').value != '' &&
           opener.document.getElementById('Type').value != 'pdf' &&
           opener.document.getElementById('Type').value != 'utilityreport'){
           window.setTimeout(function(){vQPSetup.toQueue(opener.document.getElementById('BrwsTitle').value,opener.document.getElementById('RptProg').value,opener.document.detailform.currentrecord.value,'',document.getElementById('SecurityMenuID').value,opener.document.getElementById('Type').value,true);},1000);
       } else {
           if (opener.document.getElementById("PreviewProg") && opener.document.getElementById("PreviewProg").value != "") {
               vAttachParams = "?BrwsTitle="     + opener.document.getElementById("BrwsTitle").value +
                                   "&PreviewProg="   + opener.document.getElementById("PreviewProg").value;
               document.detailform.currentrecord.value = opener.document.detailform.currentrecord.value;
               openNewWindow('qcompedit001.w' + vAttachParams, 700, 400, 0, '');
               window.setTimeout(function(){self.close()}, 1000);
           } else {
               window.setTimeout(function(){vQPSetup.toQueue(opener.document.getElementById('BrwsTitle').value,opener.document.getElementById('RptProg').value,opener.document.detailform.currentrecord.value,'',document.getElementById('SecurityMenuID').value,'',true);},1000);
           }
       }
    }
}
function openAdvancedSupport() {
    openNewWindow('qsecredit001.w',560,230);
}
function delayValidateForm() {
   if (gCheckFailed) {
      gCheckFailed = false;
      return;
   }
   if (gOpenRequest || !gCheckDone){
       setTimeout(delayValidateForm, gTimeout);
   } else {
       continueValidateForm();
   }
}
function formatMessage() {
   var splitMsg = gReturnMsg.split("^");
   gReturnMsg = "";
   for (j = 0; j < splitMsg.length; j++) {
      if (gReturnMsg == "") {
          gReturnMsg = splitMsg[j];
      } else {
          gReturnMsg += "\n" + splitMsg[j];
      }
   }
}
function refreshDetailsDelay(pNumDetails,pChecker) {
   if (pChecker) {
      gDetailsDone = false;
      gShowNumDetails = pNumDetails;
      gDetailsCounter = 0;
   }

   if (gDetailsDone == false) {
      window.setTimeout(refreshDetailsDelay, 400);
      return;
   } else {
      applyOpenClosed();
   }
}
function closePopupDelay(pNumDetails,pChecker) { // No longer used in framework - possibly called by customValidation in other programs.
   if (pChecker) {
      gDetailsDone = false;
      gShowNumDetails = pNumDetails;
      gDetailsCounter = 0;
   }

   if (gDetailsDone == false) {
      window.setTimeout(closePopupDelay, 100);
      return;
   } else if (typeof gCodePopup.closePopup != 'undefined' && typeof gCodePopup.closePopup != 'unknown'){
      window.setTimeout(function() {gCodePopup.closePopup();}, 100);    //Can't call fn from other window directly in setTimeout in IE10
      applyOpenClosed();
   }
}
function refreshParent() {
   changeCursor();
   showMessage('Please wait...', null, null, function(){
        displayLockDiv();
        gDoClosingActions = "no";
        window.setTimeout(continueRefreshParent, gTimeout);
   });
}
function continueRefreshParent() {
   outputHiddenField('hIsRefresh', 'true');
   outputHiddenField('hClosedList', gClosedList);
   outputHiddenField('hOpenList', gOpenList);
   outputHiddenField('hBrowseScroll', gBrowseScroll);
   document.detailform.action = window.location.href;
   document.detailform.submit();
}
function finishDelete() {
   //this is done because firefox doesn't like pop-up windows firing off the XML HTTP requests
   window.setTimeout(continueValidateForm, gTimeout);
}
function closePopup() {
   unChangeCursor();
   if(document.getElementById("bFakeClose")) {
       document.getElementById("bFakeClose").click();
   }
}
function buildFormData(pIgnoreOverwrite) {
   var sVals = "";
   var eleArray, ele;

   if (window.overwriteBuildFormData && pIgnoreOverwrite !== true) {
       return overwriteBuildFormData();
   }

  eleArray = document.getElementsByTagName('INPUT');
  for (var nI = 0; nI < eleArray.length; nI++) {
      ele = eleArray[nI];

      if (ele.name != '' && ele.type.toLowerCase() == 'checkbox' ) {
          if (ele.name.indexOf("!r!") == -1) {
              if (ele.checked) {
                  sVals += "&" + encodeURIComponent(ele.name) + "=" + "on";
              } else {
                  sVals += "&" + encodeURIComponent(ele.name) + "=" + "off";
              }
          } else {
              if (ele.checked) {
                  sVals += "&" + encodeURIComponent(ele.id) + "=" + "on";
              } else {
                  sVals += "&" + encodeURIComponent(ele.id) + "=" + "off";
              }
          }
      }
      /*fInput are Custom Forms fields that need to be passed just in case they are blank to be saved properly to DB*/
      else if (ele.name != '' && (ele.value != "" || ele.name.substring(0, 6) == "fInput")) {
         if( ele.type.toLowerCase() == 'text' || ele.type.toLowerCase() == 'hidden' || ele.type.toLowerCase() == 'password' || ele.type.toLowerCase() == 'file') {
            //make sure that this line includes all form names that you do NOT want to include!
            if (ele.name != "LinkData" && ele.form && ele.form.name != "navform") {
                sVals += "&" + encodeURIComponent(ele.name) + "=" + encodeURIComponent(ele.value);
            }
         } else if (ele.type.toLowerCase() == 'radio' ) {
           if (ele.checked) {
               sVals += "&" + encodeURIComponent(ele.name) + "=" + encodeURIComponent(ele.value);
           }
         }
      }
   }

  eleArray = document.getElementsByTagName('SELECT');
  for(var nI = 0; nI < eleArray.length; nI++) {
      ele = eleArray[nI];
      for (var nJ = 0; nJ < ele.length; nJ++) {
         if (ele[nJ].selected) {
             sVals += "&" + encodeURIComponent(ele.name) + "=" + encodeURIComponent(ele[nJ].value);
         }
      }
   }
  eleArray = document.getElementsByTagName('TEXTAREA');
  for(var nI = 0; nI < eleArray.length; nI++) {
      var ele = eleArray[nI];
      sVals += "&" + encodeURIComponent(ele.name) + "=" + encodeURIComponent(ele.value);
   }

  if (window.customBuildFormData) {
      sVals += customBuildFormData();
  }
  return sVals;
}
function resetOrigValues(pFieldCssReset) {
   gOrigValues = '';

   if (pFieldCssReset) {
       $('input, textarea').each(function(){
           applyChangedState(this, 'reset');
       });
   }

   window.setTimeout(checkOrigValues, 1000);
}
function checkOrigValues() {
   var vOrigValues = [];
    $('input').each(function(){
       switch (this.type.toLowerCase()){
           case "text":
           case "password":
               vOrigValues.push("&" + encodeURIComponent(this.name) + "=" + encodeURIComponent(this.value));
               this.origValue = this.value;
               this.setAttribute('origValue', this.value);
               break;
           case "checkbox" :
               if (this.checked) {
                   vOrigValues.push("&" + encodeURIComponent(this.name) + "=" + "on");
                } else {
                    vOrigValues.push("&" + encodeURIComponent(this.name) + "=" + "off");
                }
                this.origValue = this.checked;
                this.setAttribute('origValue', this.checked);
                break;
           case "radio" :
                if (this.checked) {
                    vOrigValues.push("&" + encodeURIComponent(this.name) + "=" + encodeURIComponent(this.value));
                }
                this.origValue = this.checked;
                this.setAttribute('origValue', this.checked);
               break;
        }
    });

    $('select').each(function(){
      vOrigValues.push("&" + encodeURIComponent(this.name) + "=" + encodeURIComponent(this.value));
      this.origValue = this.value;
      this.setAttribute('origValue', this.value);
    });

    $('textarea').each(function(){
      vOrigValues.push("&" + encodeURIComponent(this.name) + "=" + encodeURIComponent(this.value));
      this.origValue = this.value;
    });
    vOrigValues = vOrigValues.join("");
   if (gOrigValues == '') {
       gOrigValues = vOrigValues;
   }
   if (gOrigValues == vOrigValues && gDisplayWarning == false) {
       return true;
   } else {
       return false;
   }
}
function checkBack(pNavFn) {
    var vMaintOption = document.getElementById("vMaintOption");
    var isPopup = document.getElementById("isPopup");

   gPassedCheck = false;

   if (vMaintOption.value.toLowerCase().indexOf("view") > -1 || vMaintOption.value == '') {
      if (isPopup && isPopup.value == "true" && document.getElementById("CurrentProgram").value != 'qbrwsdisp001.w' && gDisplayWarning==false) {
          if (window.customBack) {
              customBack(pNavFn);
              return;
          } else {
              self.close();
              return;
          }
      }
   }

   if (window.cancelNewFiles && vAttchFile.length > 0) {
      if (!checkOrigValues()) {
          message("You have clicked on the <b>Back</b> button and the <b>Back</b> button does <u>not</u> save changes.<br><br>Are you sure you want to go back and discard any changes?","",0,450,0,"Close Without Saving","cancelNewFiles();","Keep Screen Open","unChangeCursor();");
      } else {
          cancelNewFiles();     //in qjscratch001 (will call continueCheckBack when done)
      }
      return;
   }

   if (!checkOrigValues() && gDisableWarning == false) {
      message("You have clicked on the <b>Back</b> button and the <b>Back</b> button does <u>not</u> save changes.<br><br>Are you sure you want to go back and discard any changes?","",0,450,0,"Close Without Saving",function() {continueCheckBack(pNavFn);},"Keep Screen Open","unChangeCursor();");
      return;
   }

   continueCheckBack(pNavFn);
}
function continueCheckBack(pNavFn) {
    var isPopup = document.getElementById("isPopup");

   gPassedCheck=true;

   if (window.customBack) {
       if (!pNavFn && isPopup && isPopup.value == "true") {
           pNavFn = function() {
               window.customBack = undefined;
               gCheckFields = false;
               self.close();
           };
       }
       customBack(pNavFn);
   } else if (isPopup && isPopup.value == "true") {
       self.close();
   }
}
function processSearch(pNextProc,pAction) {
   var vText = 'Searching...';
   if (pAction == 'applyFilter' || pAction == 'recordCount') {
       vText = 'Applying filter...';
   }
   showMessage(vText, null, null, function (){continueSearch(pNextProc,pAction)});
}
function doApplyFilter(){
    gApplyFilter = true;
    $('#sFilterSelect').val($('#sFilterList').val()).change();
    getMenu('filters').hide();
}
function lookupLetter(pLetter) {
   showMessage('Searching...', null, null, function(){
       document.getElementById("BrowseLookupLetter").value = pLetter;
       document.getElementById(browses + "LookupInput").value = pLetter;
       if (!document.getElementById("hRefreshFilters")) {
           $(document.detailform).append("<input type='hidden' id='hRefreshFilters' name='hRefreshFilters' value='false' />");
       } else {
           document.getElementById("hRefreshFilters").value = "false";
       }
       window.setTimeout(function(){continueSearch(document.getElementById("CurrentProgram").value,document.getElementById("vMaintOption").value)}, 1);
   });
}
function lL(pLetter) {
   lookupLetter(pLetter);
}
function continueSearch(pNextProc,pAction) {
   if (window.beforeProcessSearch) {
      try {
         var vResult = beforeProcessSearch(pAction);
         if (vResult == false) {
            hideMessage();
            return;
         }
      } catch (ex) {}
   }
   if (pAction == 'recordCount') {
       pAction = 'applyFilter';
   }
   if (document.getElementById('newFilterDiv')) {
       document.getElementById('newFilterDiv').style.visibility = '';
       document.getElementById('newFilterDiv').style.display    = 'none';
   }
   if (document.getElementById('filterDiv')) {
       document.getElementById('filterDiv').style.visibility = '';
       document.getElementById('filterDiv').style.display    = 'none';
   }

   gPerformingSearch = true;
   if (pAction.toLowerCase() == 'add' || pAction.toLowerCase() == 'edit') {
       processButton(document.getElementById("vMaintOption").value, pNextProc);
   } else if (pAction != null) {
       processButton(pAction, pNextProc);
   } else {
       processButton('applyFilter', pNextProc);
   }
}
function filterReset(pNextProc) {
   if (window.resetFilter) {
       resetFilter();
   }
}
function initTabs(){
    var dTabs = $('#dTabs');

    var widthOverride = document.getElementById('overrideTabWidth');
    if (dTabs.length > 0) {
        if (widthOverride) {
            dTabs.css('width',parseInt(widthOverride.value, 10) + "px");
        }
        window.setTimeout(resizeTabs, 100);
        addEvent(window, "resize", resizeTabs);
        addEvent(window, "scroll", resizeTabs);
        setTabContentWidth();
        if (browses != "") {
            maximizeBrowse();
        }
    }
}
function setTabContentWidth(){
    var dTabs = $('#dTabs');
    var tabContentWrap = $('#tabContentWrap');
    var headerHeight = $('#pageHeaderWrap').height();    
    var tabWidth = dTabs.outerWidth(); //.width();

    if (dTabs.css('top') != (headerHeight) + 'px' ) {
        dTabs.css({'top':(headerHeight) + 'px'});
    }
    if (dTabs.is(':visible')) {
        if (tabContentWrap.css('left') != (tabWidth + 'px')){
            tabContentWrap.css('left',tabWidth + 'px');
        }
    } else if (tabContentWrap.css('left') != '4px'){
        tabContentWrap.css('left','4px');
    }

    if (tabContentWrap.css('top') != (headerHeight) + 'px') {
       tabContentWrap.css('top',(headerHeight) + 'px');
    }
    var windowHeight = $(window).height();
    if ($('#pageContentWrap').css('height') != (windowHeight - headerHeight) + "px") {
        $('#pageContentWrap').css('height', (windowHeight - headerHeight) + "px");
    }
}
function resizeTabs(){
    var dTabs = document.getElementById('dTabs');
    if (dTabs){
        dTabs.style.height = ($(window).height() - 20 - $('#pageHeaderWrap').height() + $(window).scrollTop()) + "px";
        dTabs.style.overflow = 'auto';
        setTabContentWidth();
        var dErrorsIH = $('#dErrorsIH');
        if (dErrorsIH.is(':visible')) {
            dErrorsIH.css({
                'position':'absolute',
                'z-index':'5',
                'left': (($(dTabs).width() + 10) + 'px')
            });
            $('#tabContentWrap').css('top', (($('#pageContentWrap').offset().top + dErrorsIH.height() +15) + 'px'));
        }
    }
}
function setContentHeight(){
    var windowHeight = $(window).height();
    var documentHeight;
    var contentHeight;
    var contentElement = $('#pageContentWrap');
    if (contentElement.length == 0) {
        contentElement = $('#pageInnerWrap');
    }
    contentElement.css('height', 'auto');
    documentHeight = $(document).height();
    if (windowHeight > documentHeight) {
        contentHeight = windowHeight - ($('#pageHeaderWrap').height() || 0);
    } else {
        contentHeight = documentHeight - ($('#pageHeaderWrap').height() || 0);
    }
    contentElement.css('height', contentHeight + 'px');
}
/*browse functions*/
function moveDiv(vBrowseName) {
    return; /* not used anymore*/
}
function doneLoading() {
    var Td = $("#backButtonTd");
    var Td2 = $("#backButtonTd2");
    var Td3 = $("#backButtonTd3");
    var tmpEl;

   if (Td2.length > 0) {
      Td2.html(gBack);
      if (Td.length > 0) {
          Td.html("&nbsp;");
      }
   } else if (Td3.length > 0) {
      Td3.html(gBack);
      if (Td.length > 0) {
          Td.html("&nbsp;");
      }
   } else if (Td.length > 0) {
       Td.html(gBack);
   }

   if (tmpEl = document.getElementById("bCancel")) {
       atchColor(tmpEl);
   }

   //return to pac button
   if (tmpEl = document.getElementById("rp")) {
       atchColor(tmpEl);
   }
}
function watchBrowseHeaderResize(e){
    if (!e) {
        var e = window.event;
    }
    var el = getElementForEvent(e);
    if (!el) {
        return;
    }
    if (typeof(gResizeCell) == "undefined") {
        gResizeCell = {el : null, isResizing : false};
    }
    var elWidth, elParent, parentTableSize;
    if (!gResizeCell.el && el.tagName == "TD") {
        gResizeCell.el = el;
        if ($(el).hasClass('blankCell')) {
            return;
        }
        gResizeCell.sizeDiff = 0;
        elWidth = $(gResizeCell.el).width();
        gResizeCell.offsetLeft = elWidth + $(gResizeCell.el).offset().left - $(document.body).scrollLeft();
        gResizeCell.table = null
        elParent = gResizeCell.el.parentNode;
        gResizeCell.paddDiff = 6;

        do {
            if (elParent.nodeType == 1 && elParent.style.position != "absolute") {
                if (!gResizeCell.table && elParent.tagName == "TABLE") {
                    gResizeCell.table = elParent;
                    break;
                }
            }
            elParent = elParent.parentNode;
        } while (elParent);

        gResizeCell.cellIndex = gResizeCell.el.cellIndex;
        try {
            var BrowseColumns           = document.getElementById('BrowseColumns');
            var BrowseColumns2          = document.getElementById('BrowseColumnsRendered');

            if (typeof(gBrowseColumns) == 'undefined' && BrowseColumns && BrowseColumns2) {
                var tmp1;
                var tmp2;
                var o;
                var count = 0;
                BrowseColumns   = BrowseColumns.value.split('^*^');
                BrowseColumns2  = BrowseColumns2.value.split('^*^');
                window.gBrowseColumns = [];

                for (var i = 0 ; i < BrowseColumns.length; i++) {
                    tmp1 = BrowseColumns[i].split('^');
                    tmp2 = BrowseColumns2[i].split('^');
                    o = {}
                    if (tmp1.length >= 5 && tmp2.length >= 7 && tmp2[6] == 'yes') {
                        o.label     = tmp2[0];
                        o.format    = tmp2[1];
                        o.origWidth = parseInt(tmp1[4],10);
                        gBrowseColumns[parseInt(tmp2[5],10) - 1] = o;
                    }
                }
            }

            if (!gResizeCell.table.id || gResizeCell.table.id.match(/HeaderTable/) == null) {
                gResizeCell.isFixed = true;
                gResizeCell.bodyTable = document.getElementById(browses + "BodyFixed").firstChild;
                gResizeCell.AltHeaderTable = document.getElementById(browses + "HeaderTable");
                gResizeCell.AltBodyTable = document.getElementById(browses + "BodyTable");
                gResizeCell.QFTable = document.getElementById("qfTable");
                gResizeCell.QFDiv = document.getElementById(browses + "QF");
                gResizeCell.QFColDiv = document.getElementById('qf0Col' + (gResizeCell.cellIndex + 1));
                gResizeCell.AltHeaderCol = gResizeCell.AltHeaderTable.getElementsByTagName("colgroup")[0].childNodes[gResizeCell.cellIndex];
                gResizeCell.AltBodyCol = gResizeCell.AltBodyTable.getElementsByTagName("colgroup")[0].childNodes[gResizeCell.cellIndex];
                gResizeCell.AltCell = gResizeCell.AltHeaderTable.rows[0].cells[gResizeCell.cellIndex];
                if (gResizeCell.QFTable) {
                    tmp = gResizeCell.QFTable.getElementsByTagName("colgroup")[0];
                    if (tmp.childNodes.length - 1 >= gResizeCell.cellIndex) {
    					gResizeCell.QFCol = tmp.childNodes[gResizeCell.cellIndex];
    				}
                }
            } else {
                var tmp;
                gResizeCell.isFixed = false;
                gResizeCell.bodyTable = document.getElementById(browses + "BodyTable");
                gResizeCell.AltHeaderTable = document.getElementById(browses + "Fixed");
                gResizeCell.QFTable = document.getElementById("qfTable");
                gResizeCell.QFDiv = document.getElementById(browses + "QF");
                gResizeCell.QFColDiv = document.getElementById('qf0Col' + (gResizeCell.cellIndex + 1));
                if (gResizeCell.AltHeaderTable) {
                    gResizeCell.AltHeaderTable = gResizeCell.AltHeaderTable.firstChild;
                    gResizeCell.AltBodyTable = document.getElementById(browses + "BodyFixed").firstChild;
    				gResizeCell.AltHeaderCol = null;
    				tmp = gResizeCell.AltHeaderTable.getElementsByTagName("colgroup")[0];
    				if (tmp.childNodes.length - 1 >= gResizeCell.cellIndex) {
    					gResizeCell.AltHeaderCol = tmp.childNodes[gResizeCell.cellIndex];
    				}
    				gResizeCell.AltBodyCol = null;
    				tmp = gResizeCell.AltBodyTable.getElementsByTagName("colgroup")[0];
    				if (tmp.childNodes.length - 1 >= gResizeCell.cellIndex) {
    					gResizeCell.AltBodyCol = tmp.childNodes[gResizeCell.cellIndex];
    				}
    				if (gResizeCell.AltHeaderTable && gResizeCell.AltHeaderTable.rows[0].cells.length -1 >= gResizeCell.cellIndex){
    					gResizeCell.AltCell = gResizeCell.AltHeaderTable.rows[0].cells[gResizeCell.cellIndex];
    				} else {
    					gResizeCell.AltCell = null;
    				}
                }
                if (gResizeCell.QFTable) {
                    tmp = gResizeCell.QFTable.getElementsByTagName("colgroup")[0];
                    if (tmp.childNodes.length - 1 >= gResizeCell.cellIndex) {
    					gResizeCell.QFCol = tmp.childNodes[gResizeCell.cellIndex];
    				}
                }
            }
            gResizeCell.col = gResizeCell.table.getElementsByTagName("colgroup")[0].childNodes[gResizeCell.cellIndex];
            if (typeof(gBrowseColumns) != 'undefined' && gBrowseColumns[gResizeCell.cellIndex]) {
                gResizeCell.origWidth = gBrowseColumns[gResizeCell.cellIndex].origWidth;
            } else {
                gResizeCell.origWidth = 30;
            }
            gResizeCell.bodyCol = gResizeCell.bodyTable.getElementsByTagName("colgroup")[0].childNodes[gResizeCell.cellIndex];
            gResizeCell.minWidth = 0;
            gResizeCell.startRow = 0;
            if (gResizeCell.bodyTable.rows[0]) {
                var rowid = gResizeCell.bodyTable.rows[0].id;
                if (rowid.match(/NoRecords/) != null) {
                    rowid = gResizeCell.bodyTable.rows[1].id;
                    gResizeCell.startRow = 1;
                }
                if (document.getElementById( rowid + "detail")) {
                    gResizeCell.hasDetails = true;
                } else {
                    gResizeCell.hasDetails = false;
                }
            } else {
                return;
            }
            gResizeCell.recordCount = document.getElementById("numRows");
            if (gResizeCell.recordCount){
                gResizeCell.recordCount = gResizeCell.recordCount.value;
            } else if (gResizeCell.bodyTable){
                if (gResizeCell.hasDetails) {
                    gResizeCell.recordCount = gResizeCell.bodyTable.rows.length / 2;
                } else {
                    gResizeCell.recordCount = gResizeCell.bodyTable.rows.length
                }
            } else {
                return;
            }
        } catch(ex){
            gResizeCell = {
                el : null,
                isResizing : false
            }
            return;
        }
        gResizeCell.allowResize = false;
        gResizeCell.isResizing = false;
        addEvent(document, "mousedown", setBrowseHeaderResize);
    }

    if (gResizeCell.isResizing) {
        clearSelections();
        var newSize;
        elParent = gResizeCell.table;

        elWidth = getElementWidth(gResizeCell.el);
        parentTableSize = getElementWidth(elParent);

        if (gResizeCell.col.style.width) {
            gResizeCell.sizeDiff = parseInt(gResizeCell.col.style.width,10) - elWidth;
        }
        if (gResizeCell.sizeDiff) {
            elWidth += gResizeCell.sizeDiff;
        }

        gResizeCell.offsetLeft = elWidth + gResizeCell.el.offsetLeft - $(document.getElementById(browses + 'Body')).scrollLeft() - $(document.body).scrollLeft();
        do {
            if (elParent.nodeType == 1 && elParent.style.position != "absolute") {
                gResizeCell.offsetLeft += elParent.offsetLeft;
                gResizeCell.offsetLeft -= elParent.scrollLeft;
            }
            elParent = elParent.parentNode;
        } while (elParent);

        newSize = elWidth;
        var sizeDiff;
        if (gResizeCell.lastX > e.clientX) {//smaller
            newSize -= gResizeCell.lastX - e.clientX;
            parentTableSize -= gResizeCell.lastX - e.clientX;
            sizeDiff = (11 + gResizeCell.paddDiff) - newSize;
            if (sizeDiff > 0) {
                parentTableSize += sizeDiff;
                newSize = 11 + gResizeCell.paddDiff;
            }
        } else { //larger
            newSize += e.clientX - gResizeCell.lastX;
            if (newSize > (gResizeCell.origWidth * 10)) {
                return;
            }
            parentTableSize += e.clientX - gResizeCell.lastX;
        }
        if (newSize < gResizeCell.minWidth) {
            newSize = gResizeCell.minWidth;
        }
        if (newSize != elWidth) {
            gResizeCell.didApply = false;
            gResizeCell.cellSize = newSize;
            gResizeCell.parentTableSize = parentTableSize;
            gResizeCell.col.style.width = gResizeCell.cellSize + "px";
            gResizeCell.table.style.width = gResizeCell.parentTableSize + "px";
            if (gResizeCell.isFixed) {
                gResizeCell.table.parentNode.style.width = gResizeCell.parentTableSize + "px";
            }
            if (gResizeCell.table.rows[0].cells[gResizeCell.cellIndex].childNodes.length > 0 && gResizeCell.table.rows[0].cells[gResizeCell.cellIndex].childNodes[0].nodeType == 1) {
                gResizeCell.table.rows[0].cells[gResizeCell.cellIndex].childNodes[0].style.width = (gResizeCell.cellSize >= gResizeCell.paddDiff ? (gResizeCell.cellSize - gResizeCell.paddDiff) : 0) + "px";
            }

            if (gResizeCell.AltCell && gResizeCell.AltHeaderTable) {
                sizeDiff = gResizeCell.cellSize - gResizeCell.sizeDiff - getElementWidth(gResizeCell.AltCell);
                if (gResizeCell.AltHeaderTable.style.width != "" && gResizeCell.AltHeaderTable.style.width.match(/%/) == null) {
                    gResizeCell.AltHeaderTable.style.width = (parseInt(gResizeCell.AltHeaderTable.style.width,10) + sizeDiff) + "px";
                }
                if (gResizeCell.AltHeaderCol) {
                    gResizeCell.AltHeaderCol.style.width = gResizeCell.cellSize + "px";
                }
                if (gResizeCell.AltCell){
					gResizeCell.AltCell.childNodes[0].style.width = (gResizeCell.cellSize >= gResizeCell.paddDiff ? (gResizeCell.cellSize - gResizeCell.paddDiff) : 0) + "px";
				}
            }
            if (gResizeCell.QFTable) {
                gResizeCell.QFTable.style.width = "100%";
                gResizeCell.QFDiv.style.width = "100%";
                if (gResizeCell.QFCol) {
                    gResizeCell.QFCol.style.width = gResizeCell.cellSize + "px";
                }
                if (gResizeCell.QFColDiv) {
                    gResizeCell.QFColDiv.style.width = (gResizeCell.cellSize - gResizeCell.paddDiff) + "px";
                }
            }

            delayBrowseCellResize();
        }
        gResizeCell.lastX = e.clientX;
    } else {
        if (e.clientX > gResizeCell.offsetLeft) {
            if (gResizeCell.el.style.cursor != "col-resize") {
                gResizeCell.el.style.cursor = "col-resize";
                document.body.style.cursor = "col-resize";
            }
            gResizeCell.allowResize = true;
            gResizeCell.lastX = e.clientX;
        } else {
            gResizeCell.allowResize = false;
            if (gResizeCell.el) {
                gResizeCell.el.style.cursor = "";
                document.body.style.cursor = "";
            }
        }
    }
}
function delayBrowseCellResize(){
    if (typeof(gResizeCell) == "undefined" || !gResizeCell.el || !gResizeCell.allowResize) {
        return;
    }
    if (gResizeCell.recordCount < 200) {
        applyBrowseCellResize();
    } else if (gResizeCell.recordCount < 1000) {
        if (gResizeCell.resizeTimeout) {
            window.clearTimeout(gResizeCell.resizeTimeout);
        }
        gResizeCell.resizeTimeout = window.setTimeout(applyBrowseCellResize, 200);
    }
}
function applyBrowseCellResize(){
    if (typeof(gResizeCell) == "undefined" || !gResizeCell.el || !gResizeCell.allowResize || !gResizeCell.cellSize) {
        return;
    }
    window.setTimeout(clearSelections, 10);
    gResizeCell.didApply = true;
    if (gResizeCell.bodyCol) {
        gResizeCell.bodyCol.style.width = gResizeCell.cellSize + "px";
    }
    if (gResizeCell.parentTableSize) {
        gResizeCell.bodyTable.style.width = gResizeCell.parentTableSize + "px";
        if (gResizeCell.isFixed) {
            gResizeCell.bodyTable.parentNode.style.width = gResizeCell.parentTableSize + "px";
        }
    }
    if (gResizeCell.QFDiv) {
       gResizeCell.QFDiv.style.width = "100%";
    }
    if (gResizeCell.QFTable) {
        gResizeCell.QFTable.style.width = "100%";
    }
    if (gResizeCell.AltCell && gResizeCell.AltBodyTable && gResizeCell.AltBodyCol) {
        gResizeCell.AltBodyCol.style.width = gResizeCell.cellSize + "px";
        gResizeCell.AltBodyTable.style.width = gResizeCell.AltHeaderTable.style.width;
        gResizeCell.AltParentTableSize = gResizeCell.AltHeaderTable.style.width.replace("px", "");
    }
    var rowsCount = gResizeCell.isFixed ? gResizeCell.AltBodyTable.rows.length : gResizeCell.bodyTable.rows.length;
    for (var i = 0; i < rowsCount; i++) {
        if (gResizeCell.bodyTable.rows[i] && gResizeCell.bodyTable.rows[i].cells[gResizeCell.cellIndex] && gResizeCell.bodyTable.rows[i].cells[gResizeCell.cellIndex].childNodes.length > 0 && gResizeCell.bodyTable.rows[i].cells[gResizeCell.cellIndex].childNodes[0].nodeType == 1){
            if (gResizeCell.bodyTable.rows[i].cells[gResizeCell.cellIndex].className != "BD") {
                gResizeCell.bodyTable.rows[i].cells[gResizeCell.cellIndex].childNodes[0].style.width = (gResizeCell.cellSize >= gResizeCell.paddDiff ? gResizeCell.cellSize - gResizeCell.paddDiff : 0) + "px";
            }
         }
         if (gResizeCell.AltCell && gResizeCell.AltBodyTable && gResizeCell.AltBodyTable.rows[i] && gResizeCell.AltBodyTable.rows[i].cells[gResizeCell.cellIndex]) {
             if (gResizeCell.AltBodyTable.rows[i].cells[gResizeCell.cellIndex].className != "BD") {
                gResizeCell.AltBodyTable.rows[i].cells[gResizeCell.cellIndex].childNodes[0].style.width = (gResizeCell.cellSize >= gResizeCell.paddDiff ? gResizeCell.cellSize - gResizeCell.paddDiff : 0)  + "px";
             }
         }
    }
}
function setBrowseHeaderResize(e){
    if (typeof(gResizeCell) == "undefined" || !gResizeCell.el || !gResizeCell.allowResize) {
        return;
    }
    if (gResizeCell.el.style.cursor != "col-resize") {
        gResizeCell.el.style.cursor = "col-resize";
        document.body.style.cursor = "col-resize";
    }
    gResizeCell.table.style.width = getElementWidth(gResizeCell.table) + "px";
    gResizeCell.isResizing = true;

    if (gResizeCell.bodyTable.rows.length > 0 && gResizeCell.bodyTable.rows[0].cells.length > gResizeCell.cellIndex){
        var firstChild = gResizeCell.bodyTable.rows[gResizeCell.startRow].cells[gResizeCell.cellIndex].firstChild;
        if (!firstChild || firstChild.nodeType != 1) {
            var colWidth = gResizeCell.bodyCol.style.width;
            var tableWidth = gResizeCell.bodyTable.style.width;
            gResizeCell.bodyCol.style.width = "0";
            gResizeCell.bodyTable.style.width = "0";
            gResizeCell.minWidth = getElementWidth(gResizeCell.bodyTable.rows[gResizeCell.startRow].cells[gResizeCell.cellIndex]) + gResizeCell.sizeDiff;
            gResizeCell.bodyCol.style.width = colWidth;
            gResizeCell.bodyTable.style.width = tableWidth;
        }
    }

    removeEvent(gResizeCell.el, "mouseout", finishBrowseHeaderResize);
    removeEvent(gResizeCell.el, "mousemove", watchBrowseHeaderResize);
    addEvent(document, "mousemove", watchBrowseHeaderResize);
    addEvent(document, "mouseup", finishBrowseHeaderResize);
}
function finishBrowseHeaderResize(e){
    if (typeof(gResizeCell) == "undefined" || !gResizeCell.el) {
        return;
    }
    if (!e) {
        var e = window.event;
    }
    if (gResizeCell.el && e.type == "mouseup" ) {
        gResizeCell.el.style.cursor = "";
        document.body.style.cursor = "";

        if (gResizeCell.isResizing) {
            removeEvent(document, "mousedown", setBrowseHeaderResize);
            removeEvent(document, "mouseup", finishBrowseHeaderResize);
            removeEvent(document, "mousemove", watchBrowseHeaderResize);
            addEvent(gResizeCell.el, "mousemove",watchBrowseHeaderResize);
            addEvent(gResizeCell.el, "mouseout", finishBrowseHeaderResize);

            if (typeof(gResizeCell.cellSize) == 'number') {
                if (gResizeCell.recordCount >= 200 && !gResizeCell.didApply) {
                    applyBrowseCellResize();
                }
                if (gResizeCell.isFixed) {
                    if (gResizeCell.bodyCol) {
                        gColGroupFixed = "<colgroup>" + gResizeCell.bodyCol.parentNode.innerHTML + "</colgroup>";
                    }
                    if (gResizeCell.AltBodyCol) {
                        gColGroup = "<colgroup>" + gResizeCell.AltBodyCol.parentNode.innerHTML + "</colgroup>";
                    }
                    if (gResizeCell.AltParentTableSize && document.getElementById(browses + 'Width')) {
                        document.getElementById(browses + 'Width').value = gResizeCell.AltParentTableSize;
                    }
                    if (gIsIE) {
                        for (var i = 0; i < gResizeCell.AltHeaderCol.childNodes.length; i++) {
                            gResizeCell.AltBodyCol.childNodes[i].style.width = gResizeCell.AltHeaderCol.childNodes[i].style.width;
                        }
                    }
                } else {
                    if (gResizeCell.AltBodyCol) {
                        gColGroupFixed = "<colgroup>" + gResizeCell.AltBodyCol.parentNode.innerHTML + "</colgroup>";
                    }
                    if (gResizeCell.bodyCol) {
                        gColGroup = "<colgroup>" + gResizeCell.bodyCol.parentNode.innerHTML + "</colgroup>";
                    }
                    if (document.getElementById(browses + 'Width')) {
                        document.getElementById(browses + 'Width').value = gResizeCell.parentTableSize;
                    }
                }
                if (typeof(zO) != "undefined" && zO.length && zO.length > gResizeCell.cellIndex) {
                    zO[gResizeCell.cellIndex + 1] = zO[gResizeCell.cellIndex + 1].replace(/width:\d+px/, "width:" + (gResizeCell.cellSize >= gResizeCell.paddDiff  ? gResizeCell.cellSize - gResizeCell.paddDiff  : 0) + "px");

                }
                //prevent SortCollumn from being called when the cell is resized
                var clickFunction = gResizeCell.el.getAttribute("onclick");
                var clickEl = gResizeCell.el;
                gResizeCell.el.setAttribute("onclick", "");
                window.setTimeout(function(){clickEl.setAttribute("onclick", clickFunction);}, 100);
                if (document.getElementById("numRows")) {
                    window.setTimeout(prepareBrowseData, 100);
                }
                gResizeCell.resizeColumn = document.getElementById('resizeColumn');
                if (!gResizeCell.resizeColumn) {
                    gResizeCell.resizeColumn = document.createElement('input');
                    gResizeCell.resizeColumn.type = 'hidden';
                    gResizeCell.resizeColumn.name = 'resizeColumn';
                    gResizeCell.resizeColumn.id = 'resizeColumn';
                    document.detailform.appendChild(gResizeCell.resizeColumn);
                }
                gResizeCell.resizeColumn.value = (gResizeCell.cellIndex + 1) + "," + gResizeCell.origWidth + "," + gResizeCell.cellSize;
                if (document.getElementById("newFilterDiv") && document.getElementById("BrowseUseTempTable").value!="yes") {
                    var qFilterEl;
                    if (typeof vQfDefaults != 'undefined') {
                        for (var i in vQfDefaults) {
                            //Low Value
                            qFilterEl = document.getElementById(i + "Def1");
                            if (!qFilterEl) {
                                qFilterEl = document.createElement('input');
                                qFilterEl.type = "hidden";
                                qFilterEl.name = i + "Def1";
                                qFilterEl.id = i + "Def1";
                            }
                            qFilterEl.value = vQfDefaults[i][0];
                            document.detailform.appendChild(qFilterEl);
                            //High Value
                            qFilterEl = document.getElementById(i + "Def2");
                            if (!qFilterEl) {
                                qFilterEl = document.createElement('input');
                                qFilterEl.type = "hidden";
                                qFilterEl.name = i + "Def2";
                                qFilterEl.id = i + "Def2";
                            }
                            qFilterEl.value = vQfDefaults[i][1];
                            document.detailform.appendChild(qFilterEl);
                        }
                    }
                    validateForm('saveColumnWidth','qbrwshttp001.w','validatefilter');
                }
            }
            if ($('div.ao', gResizeCell.el).length > 0) {
                if (document.getElementById(browses + 'Fixed')) {
                    gRowCssHeights = {};
                    gFixedRows = false;
                    fixRowHeight();
                }
                if (document.getElementById('brwsRecCount_scroller')) {
                    addBrowseRowNumbers($('#brwsRecCount_scroller'));
                }
            }
        }
        gResizeCell = {
            el : null,
            isResizing : false
        }
        clearSelections();
    } else if (!gResizeCell.isResizing) {
        removeEvent(document, "mousedown", setBrowseHeaderResize);
        removeEvent(document, "mouseup", finishBrowseHeaderResize);
        removeEvent(document, "mousemove", watchBrowseHeaderResize);
        if (gResizeCell.el) {
            gResizeCell.el.style.cursor = "";
            document.body.style.cursor = "";
        }
        gResizeCell = {
            el : null,
            isResizing : false
        }
    }
}
function scrollQuickFilter(){
    if (!browses) {
        return;
    }
    var vQF = $(document.getElementById(browses + 'QF'));
    if (vQF.is(':visible')) {
        var vBrowseBody = $(document.getElementById(browses + 'Body'));
        var vScrollLeft = vBrowseBody.scrollLeft();
        vQF.css('width', ((vBrowseBody.width() - getScrollbarWidth()) + vScrollLeft) + 'px');
        $('#tblQFButtons').stop().animate({'margin-left': vScrollLeft}, 500, 'swing');
    }
}
function endOfBody() {
   try {
      if (gIsChrome == true) {
         window.document.detailform.Browser.value='Chrome';
         window.document.navform.Browser.value = 'Chrome';
      } 
      else if (gIsMicrosoftEdge == true) {
         window.document.detailform.Browser.value='Microsoft Edge';
         window.document.navform.Browser.value = 'Microsoft Edge';
      } else if (gIsMoz == true) {
         window.document.detailform.Browser.value='Moz';
         window.document.navform.Browser.value = 'Moz';
      } else if (gIsSafari == true) {
         window.document.detailform.Browser.value='Safari';
         window.document.navform.Browser.value = 'Safari';
      } else {
         window.document.detailform.Browser.value = 'IE';
         window.document.navform.Browser.value = 'IE';
      }
   }
   catch (er) {}
}
function attachCalEvent(pDate) {
   validateCalDate(pDate,pDate + "day");
}
function initBrowseRowNumbers(){
    var browseWrap = $('#browseWrap');
    var brwsRecCount_wrap = $('#brwsRecCount_wrap');
    var browseBody =  $(document.getElementById(browses + 'Body'));
    var browseBodyTable =  $(document.getElementById(browses + 'BodyTable'));
    var browseHeader = $(document.getElementById(browses + 'Header'));
    var browseFixed = $(document.getElementById(browses + 'Fixed'));
    var numElement;
    var tmpHeight;
    var tmpWidth;
    var counter;
    var brwsRecCount_scroller;
    var currentrecord = $('#currentrecord').val();
    if (browseBodyTable.length == 0 || brwsRecCount_wrap.length > 0) {
        return;
    }
    if (brwsRecCount_wrap.length == 0) {
        brwsRecCount_wrap = $('<div id="brwsRecCount_wrap"><div class="brwsRecCount_spacerTop">&nbsp;</div></div>');
    }
    var brwsRecCount_scroller = $('<div id="brwsRecCount_scroller" />');
    brwsRecCount_wrap.append(brwsRecCount_scroller);
    counter = addBrowseRowNumbers(brwsRecCount_scroller);
    if (counter < 1) {
        return;
    } else if (counter == 1) {
        if ($('.browseNoRecords').length > 0) {
            return;
        }
        tmpWidth = 15;
    } else if (counter < 10) {
        tmpWidth = 15;
    } else if (counter < 100) {
        tmpWidth = 20;
    } else {
        tmpWidth = 30;
    }
    browseBody.css({
        'width': '-=' +tmpWidth
       ,'margin-left': tmpWidth + 'px'
    });
    browseHeader.css({
         'width': '-=' +tmpWidth
        ,'padding-left': tmpWidth + 'px'
    });
    browseFixed.css({
        'left':(tmpWidth + 1) + 'px'
    });
    tmpHeight = browseHeader.height();
    if (tmpHeight <= 0) tmpHeight = 20;
    $('div.brwsRecCount_spacerTop', brwsRecCount_wrap).css({
        'height': (tmpHeight - 2) + 'px'
    });
    brwsRecCount_wrap.css({
        'width': (tmpWidth) + 'px'
    });
    brwsRecCount_scroller.css({
         'height': (browseBody.height() - getScrollbarWidth()) + 'px'
    });

    var spacerBottom = $('<div class="brwsRecCount_spacerBottom" />');
    spacerBottom.css({'height':getScrollbarWidth() + 'px'})
    brwsRecCount_wrap.append(spacerBottom);
    browseWrap.append(brwsRecCount_wrap);
    $('#brwsRecCount_scroller').scrollTop(browseWrap.scrollTop());
    browseBody.on('scroll',scrollBrowseRecordCount);
}
function scrollBrowseRecordCount(){
    $('#brwsRecCount_scroller').scrollTop($(document.getElementById(browses + 'Body')).scrollTop());
}
function addBrowseRowNumbers(brwsRecCount_scroller){
    if (!brwsRecCount_scroller || brwsRecCount_scroller.length == 0) {
        return 0;
    }
    var numElement, tmpHeight, rows, counter = 0;
    var currentrecord = $('#currentrecord').val();
    brwsRecCount_scroller.html("");
    if (typeof gDetailHTML == 'string' && gDetailHTML != '') {
        rows = $('> tbody:first > tr:even', document.getElementById(browses + 'BodyTable'));
    } else {
        rows = $('> tbody:first > tr', document.getElementById(browses + 'BodyTable'));
    }
    rows.each(function(i, el){
        counter = i + 1;
        numElement = $('<div id="' + this.id + "recRow" + '" class="recRow">' + counter + '</div>');
        if (gRowCssHeights[this.id]) {
            tmpHeight = gRowCssHeights[this.id] - 1;
        } else {
            tmpHeight = (getElementHeight(this) - 1);
        }
        if (tmpHeight <= 0) tmpHeight = 18;
        numElement.css({
            'height': tmpHeight + 'px'
            ,'line-height': tmpHeight + 'px'
        });
        if (this.id == currentrecord) {
            numElement.addClass('recRow_selected');
        }
        if (counter == 1) {
            numElement.css({
                'border-top': '1px solid #FFFFFF'
            });
        }
        brwsRecCount_scroller.append(numElement);
    });
    brwsRecCount_scroller.css('visibility', 'visible');
    return counter;
}
function sortColumn(vBrowseName,vColumnNbr,vDispSortMsg) {
   if (window.beforeSortColumn) {
      try {
         var vResult = beforeSortColumn(vBrowseName,vColumnNbr);
         if (vResult == false) {
            hideMessage();
            return;
         }
      } catch (ex) {}
   }

   if (vDispSortMsg) {
       gDispSortMsg=vDispSortMsg;
   }
   window.setTimeout(function(){continueSortColumn(vBrowseName,vColumnNbr)}, 10);
}
function sC(vBrowseName,vColumnNbr,vDispSortMsg) {
    if (gLoadedBrowse && gDetailsView) {
        return;
    }
    showMessage('Loading data...');
    sortColumn(vBrowseName,vColumnNbr,vDispSortMsg);
    hideMessage();
}
function continueSortColumn(vBrowseName,vColumnNbr) {
    if (vBrowseName == '')  {
        vBrowseName = browses;
    }
    showMessage('Loading data...');
    var vDataBrowserDisplay = [], vDataBrowserDisplayFixed = [];
    var extraSortColumn = document.getElementById('extraSortColumn');
    var vBrowseNameFixed = document.getElementById(vBrowseName + 'Fixed');
    var vQuickFilter = document.getElementById(vBrowseName + 'QF');
    var brwsRecCount_scroller = $('#brwsRecCount_scroller');

    if (brwsRecCount_scroller.length > 0) {
        brwsRecCount_scroller.css('visibility','hidden');
    }

    var vNode, hTotalsOnly, tmpEl, HideArrow, cArrowImg, vValue, vDetailsSplit, vQfHtml, hasRecords = true;

    var rExp = /c='iL'/g;
    var rExp2 = /!r!/g;
    var rExp3 = new RegExp("class='BB'", "i");
    var z;
    var vRowId;

    var vSortClass = {
        'A' : 'sortUp',
        'D' : 'sortDown'
    }

    if (gDispSortMsg == 'yes') {
        $('#lDefaultSort').css('visibility','visible').parent().removeClass('hidden').addClass('inlineBlock');
        gDispSortMsg='';
    } else {
        $('#lDefaultSort').css('visibility','hidden').parent().removeClass('inlineBlock').addClass('hidden');
    }

    if (extraSortColumn) {
        eval(extraSortColumn.value);
    }

    if (vColumnNbr == vLastSortCol || vLastSortCol == 0) {
        if (vLastSortDir.toUpperCase() == 'D') {
            vLastSortDir = 'A';
        } else {
            vLastSortDir = 'D';
        }
    } else {
         if (gReverseSort[vColumnNbr] == true) {
             vLastSortDir = 'A';
         } else {
             vLastSortDir = 'D';
         }
    }

    if (vQuickFilter) {
        vQfHtml = vQuickFilter.innerHTML;
    }

    vDataBrowserDisplay.push("<table id='" + vBrowseName + "BodyTable' cellspacing='0' cellpadding='0' style='100%'>");
    vDataBrowserDisplay.push(gColGroup);
    vDataBrowserDisplayFixed.push("<table cellspacing='0' cellpadding='0'>");
    vDataBrowserDisplayFixed.push(gColGroupFixed);

    if (gDoNotClear == false) {
        document.detailform.currentrecord.value = '';
    }

    gDoNotClear = false;
    gOpenRow = '';

    if (vColumnNbr > vDataBrowserIndex.length - 1 && vDataBrowserIndex.length > 0) {
        vColumnNbr = vDataBrowserIndex.length - 1;
    }

    z = 1;

    //Sort ascending now
    if (vLastSortDir.toUpperCase() == 'D') {
        if (vDataBrowserIndex[vColumnNbr]) {
           for (var vSortLoop = 0; vSortLoop < vDataBrowserIndex[vColumnNbr].length; ++vSortLoop) {
              vRowId=getRowId(vBrowseData[vDataBrowserIndex[vColumnNbr] [vSortLoop]]);

              //selects the top record in the browse
              if (document.detailform.currentrecord.value == '') {
                  document.detailform.currentrecord.value = vRowId;
              }
              if (z == 2 && document.getElementById("hAlternateColors")) {
                 z = 1;
                 vDataBrowserDisplay.push(vBrowseData[vDataBrowserIndex[vColumnNbr] [vSortLoop]].replace(rExp2, vRowId).replace(rExp3, "class='BB2'"));
                 if (vBrowseNameFixed) {
                    if (vDataBrowserIndex[vColumnNbr]) {
                        vDataBrowserDisplayFixed.push(vBrowseDataFixed[vDataBrowserIndex[vColumnNbr] [vSortLoop]].replace(rExp2, vRowId).replace(rExp3, "class='BB2'"));
                    }
                 }
              } else {
                 z = 2;
                 vDataBrowserDisplay.push(vBrowseData[vDataBrowserIndex[vColumnNbr] [vSortLoop]].replace(rExp2, vRowId));
                 if (vBrowseNameFixed) {
                    if (vDataBrowserIndex[vColumnNbr]) {
                        vDataBrowserDisplayFixed.push(vBrowseDataFixed[vDataBrowserIndex[vColumnNbr] [vSortLoop]].replace(rExp2, vRowId));
                    }
                 }
              }
           }
        } else {
           //vDataBrowserDisplay = vDataBrowserDisplay.replace('border-bottom:1px solid Black;','');

           if (hTotalsOnly = document.getElementById("hTotalsOnly")) {
               vDataBrowserDisplay.push("<tr><td><span style='color:#FF0000;font-style:italic;'>Totals count: ");
               vDataBrowserDisplay.push(hTotalsOnly.value);
               vDataBrowserDisplay.push("</span></td></tr>");
           } else {
               hasRecords = false;
               if (!document.getElementById("hRefreshFilters") || document.getElementById("hRefreshFilters").value != 'true') {
                   vDataBrowserDisplay.push("<tr><td style='padding:5px;'><span style='color:#606060;font-style:italic;white-space:nowrap;filter:none;'>There are no records to display; check your filter settings.</span></td></tr>");
               }
           }
        }
    } else { //Sort descending now
        if (vDataBrowserIndex[vColumnNbr]) {
           for (var vSortLoop = vDataBrowserIndex[vColumnNbr].length - 1; vSortLoop >= 0; --vSortLoop) {
              vRowId = getRowId(vBrowseData[vDataBrowserIndex[vColumnNbr] [vSortLoop]]);

              //selects the top record in the browse
              if (document.detailform.currentrecord.value == '') {
                  document.detailform.currentrecord.value = vRowId;
              }
              if (z == 2 && document.getElementById("hAlternateColors")) {
                 z = 1;
                 vDataBrowserDisplay.push(vBrowseData[vDataBrowserIndex[vColumnNbr] [vSortLoop]].replace(rExp2, vRowId).replace(rExp3, "class='BB2'"));
                 if (vBrowseNameFixed) {
                    if (vDataBrowserIndex[vColumnNbr]) {
                        vDataBrowserDisplayFixed.push(vBrowseDataFixed[vDataBrowserIndex[vColumnNbr] [vSortLoop]].replace(rExp2, vRowId).replace(rExp3, "class='BB2'"));
                    }
                 }
              } else {
                 z = 2;
                 vDataBrowserDisplay.push(vBrowseData[vDataBrowserIndex[vColumnNbr] [vSortLoop]].replace(rExp2, vRowId));
                 if (vBrowseNameFixed) {
                    if (vDataBrowserIndex[vColumnNbr]) {
                        vDataBrowserDisplayFixed.push(vBrowseDataFixed[vDataBrowserIndex[vColumnNbr] [vSortLoop]].replace(rExp2, vRowId));
                    }
                 }
              }
           }
        } else {
           //vDataBrowserDisplay = vDataBrowserDisplay.replace('border-bottom:1px solid Black;','');
           if (hTotalsOnly = document.getElementById("hTotalsOnly")) {
               vDataBrowserDisplay.push("<tr><td><span style='color:#FF0000;font-style:italic;'>Totals count: ");
               vDataBrowserDisplay.push(hTotalsOnly.value);
               vDataBrowserDisplay.push("</span></td></tr>");
           } else {
               hasRecords = false;
               if (!document.getElementById("hRefreshFilters") || document.getElementById("hRefreshFilters").value != 'true') {
                   vDataBrowserDisplay.push("<tr><td style='padding:5px;'><span style='color:#606060;font-style:italic;white-space:nowrap'>There are no records to display; check your filter settings.</span></td></tr>");
               }
           }
        }
    }

    vDataBrowserDisplay.push("</table><div id='browseBottom' style='width:0px;height:0px;overflow:hidden;'></div>");
    vDataBrowserDisplay = vDataBrowserDisplay.join("");
    if (vBrowseNameFixed) {
        vDataBrowserDisplayFixed.push("</table><div id='browseBottom' style='width:0px;height:0px;overflow:hidden;'></div>");
        vDataBrowserDisplayFixed = vDataBrowserDisplayFixed.join("");
    }


    vDataBrowserDisplay = vDataBrowserDisplay.replace(rExp,"class='inactiveLink' tabindex='-1'");
    if (vBrowseNameFixed) {
        vDataBrowserDisplayFixed = vDataBrowserDisplayFixed.replace(rExp,"class='inactiveLink' tabindex='-1'");
    }

    if (document.getElementById(vBrowseName + 'Body')) {
        var vBrowseNameBody = document.getElementById(vBrowseName + 'Body');
        vBrowseNameBody.innerHTML = vDataBrowserDisplay;

        if (vQuickFilter) {
           if (vQuickFilter.innerHTML == '') {
               vQuickFilter.innerHTML = vQfHtml;
           }
           vBrowseNameBody.insertBefore(vQuickFilter, vBrowseNameBody.firstChild);
        }

        if (vBrowseNameFixed) {
            document.getElementById(vBrowseName + 'BodyFixed').innerHTML = vDataBrowserDisplayFixed;
        }
    }
    $('td', document.getElementById(browses + 'Header')).removeClass('sortUp sortDown');
    if (vBrowseNameFixed && document.getElementById('qfTable')) {
        $(vBrowseNameFixed).find('table').eq(0).find('td').removeClass('sortUp sortDown');
        if (document.getElementById('qfTable').style.display == 'none') {
            vBrowseNameFixed.style.visibility = 'visible';
        }
    }

    vLastSortCol = vColumnNbr;
    document.detailform.vSelectedColumn.value = vLastSortCol;
    document.detailform.vSelectedColumnDirection.value = vLastSortDir;
    document.detailform.currentbrowse.value = vBrowseName;

    if (vLastSortDir.toUpperCase() == 'A') {
        vSortClass = 'sortDown';
    } else {
        vSortClass = 'sortUp';
    }

    HideArrow = document.getElementById("HideArrow");
    if (!HideArrow || HideArrow.value != 'yes') {
        if (tmpEl = document.getElementById('ch' + vColumnNbr)) {
            $(tmpEl).addClass(vSortClass);
        }
        if (tmpEl = document.getElementById('cfh' + vColumnNbr)) {
            $(tmpEl).addClass(vSortClass);
        }
    }

    if (document.detailform.currentrecord.value != '') {
        vValue = document.detailform.currentrecord.value;
        if (gOpenRow == vValue) {
            if (gDetailsOpen == "") {
                browseDetail('0');
            } else  {
                vDetailsSplit = gDetailsOpen.split('**');
                for (var i=0; i < vDetailsSplit.length; i++) {
                    vNode = vDetailsSplit[i].replace('*', '');
                    vNode = vNode.replace('*', '');
                    browseDetail(vNode);
                }
            }
        }
        BRS(vValue);
    } else if (tmpEl = document.getElementById("hBrowseDisableButtons")) {
        disableField(tmpEl.value);
    }
    window.setTimeout(function(){
        gBrowseReadyState++;
        if (!hasRecords && !gDetailsView) {
            $(document.getElementById(browses + 'BodyTable')).addClass('browseNoRecords');
        }
        if ($(document.getElementById(browses + 'HeaderTable')).find('col').length > 0 && $(document.getElementById(browses + 'HeaderTable')).find('col').get(0).className.match(/blankCell/) == null && !gDetailsView) {
            $(document.getElementById(browses + 'BodyTable')).css('width', $(document.getElementById(browses + 'HeaderTable')).width() + 'px');
        } else {
            $(document.getElementById(browses + 'BodyTable')).css('width', '100%');
        }

        if (!document.getElementById(browses + "BodyTableHeader")) {
            $(document.getElementById(browses + "HeaderTable")).find('tbody tr').eq(0).clone().wrap('<thead />').css({'position':'absolute'}).closest('thead').attr('id',browses + 'BodyTableHeader').css({
                'height':0,'overflow':'hidden','position':'absolute','z-index':'-1'
            }).find('td').attr('scope', 'col').removeAttr('id').end().insertBefore($(document.getElementById(browses + "BodyTable")).find('tbody').eq(0));
        }

        window.setTimeout(function(){
            gBrowseReadyState++;
            gFixedRows = false;
            fixRowHeight();
            finishBrowseLoad();
        }, 10);
        loadEnterTab(document.getElementById("browseOuterWrap")); //Allows enter/tab to be loaded on text fields in a browse
        window.setTimeout(function(){
            gBrowseReadyState++;
            finishBrowseLoad();
            //window.setTimeout(scrollBrowseHeadersFixed, 10);
            scrollBrowseHeadersFixed();
        }, 100);
        finishBrowseLoad();
    }, 10);

    if (tmpEl = document.getElementById('afterSortColumn')) {
        eval(tmpEl.value);
    } else if (window.afterSortColumn) {
        try {
            afterSortColumn(vBrowseName,vColumnNbr);
        } catch (ex) {}
    }

    if (document.getElementById('showBrowseRecNums')){
        if (document.getElementById('brwsRecCount_scroller')) {
            window.setTimeout(function(){
                addBrowseRowNumbers($('#brwsRecCount_scroller'));
            }, 10);
        } else {
            window.setTimeout(function(){
                gBrowseReadyState++;
                initBrowseRowNumbers();
                continueChangeBrowseSize();
                finishBrowseLoad();
            }, 10);
        }
    }
    hideMessage();
}
function finishBrowseLoad(){
    if (gLoadedBrowse) {
        return;
    }
    gBrowseReadyState--;
    if (gBrowseReadyState > 0) {
        return;
    }
    gLoadedBrowse = true;
    if (typeof(window.onBrowseComplete) != 'undefined') {
        onBrowseComplete();
    }
    if (gDetailsView) {
        finishBrowseDetailView();
    }
    for (var i = 0; i < gExpandDetails.length; i++) {
        browseDetail(gExpandDetails[i]);
    }

    addEvent(document.getElementById(browses + 'Fixed'), 'wheel', scrollBrowseFromLocked);

    hideWaitMessage();
}
function scrollBrowseFromLocked(pEvent){
    if (!('pointerEvents' in document.documentElement.style) || gIsIE || brws.edge) {
        var vScrollDiv = $(document.getElementById(browses + 'Body')),
            vScrolls = {
                x : {
                    total : 0,
                    amount : 0,
                    fraction : (gIsIE ? 2 : 1), /* IE seems to scroll slower, so start with a smaller fraction */
                    dir : 1
                },
                y : {
                    total : 0,
                    amount : 0,
                    fraction : (gIsIE ? 2 : 1),
                    dir : 1
                }
            }
        if (!vScrollDiv.length) {
            return;
        }
        clearTimer('scrollBrowseFromLocked');

        vScrolls.y.total = pEvent.originalEvent.deltaY;
        vScrolls.y.dir   = (vScrolls.y.total < 0 ? -1 : 1);
        vScrolls.y.total = Math.abs(vScrolls.y.total);

        vScrolls.x.total = pEvent.originalEvent.deltaX;
        vScrolls.x.dir   = (vScrolls.x.total < 0 ? -1 : 1);
        vScrolls.x.total = Math.abs(vScrolls.x.total);

        (function ScrollMore(){
            var vScrollAmnt;
            if (vScrolls.x.amount >= vScrolls.x.total && vScrolls.y.amount >= vScrolls.y.total) {
                return;
            }
            if (vScrolls.y.amount < vScrolls.y.total ) {
                vScrollAmnt = Math.max(vScrolls.y.total / ++vScrolls.y.fraction, 5);
                vScrolls.y.amount += vScrollAmnt;
                if (vScrolls.y.amount > vScrolls.y.total) {
                    vScrollAmnt = vScrolls.y.amount - vScrolls.y.total;
                }
                vScrollDiv.scrollTop(vScrollDiv.scrollTop() + (vScrollAmnt * vScrolls.y.dir));
            }
            if (vScrolls.x.amount < vScrolls.x.total ) {
                vScrollAmnt = Math.max(vScrolls.x.total / ++vScrolls.x.fraction, 5);
                vScrolls.x.amount += vScrollAmnt;
                if (vScrolls.x.amount > vScrolls.x.total) {
                    vScrollAmnt = vScrolls.x.amount - vScrolls.x.total;
                }
                vScrollDiv.scrollLeft(vScrollDiv.scrollLeft() + (vScrollAmnt * vScrolls.x.dir));
            }
            setTimer('scrollBrowseFromLocked', ScrollMore, 1);
        })();
    } else {
        var vFixedDiv = $(pEvent.delegateTarget);
        if (!vFixedDiv.length) {
            return;
        }
        clearTimer('scrollBrowseFromLocked');
        vFixedDiv.css('pointer-events','none');
        setTimer('scrollBrowseFromLocked', function(){
            vFixedDiv.css('pointer-events','auto');
        }, 300);
    }
}
function getRowId(pData) {
   var vRowId = '';

   for (var i = 8; i < 199; i++) {
      if (pData.substr(i,1) != "'" ) {
          vRowId += pData.substr(i,1);
      } else {
          break;
      }
   }
   return vRowId;
}
function browseRowHighlight(rowin, pIsHighlight) {
   rowin = rowin.replace('fixed', '');
   rowin = rowin.replace('0detail', '');
   var vRow = document.getElementById(rowin);
   if (!vRow) {
       return;
   }
   if (pIsHighlight === false) {
       vRow.removeAttribute('data-highlight');
       vRow = document.getElementById(rowin + 'fixed');
       if (vRow) {
           vRow.removeAttribute('data-highlight');
       }
   } else {
       vRow.setAttribute('data-highlight', true);
       vRow = document.getElementById(rowin + 'fixed');
       if (vRow) {
           vRow.setAttribute('data-highlight', true);
       }
   }
}
function BRS(rowin) {
   rowin = rowin.replace('fixed', '');
   rowin = rowin.replace('0detail', '');
   browseRowSelected(browses, rowin);
}
function browseRowSelected(browse, rowin) {

   if (gDetailsView) {
       if (document.getElementById("encrow")) {
           document.getElementById("encrow").value = document.getElementById(rowin).getAttribute('encrow');
       }
       return;
   }

   var tmpEl, tmpEl2;
   var currentRecord = document.detailform.currentrecord.value;
   var brwsRecCount_scroller = $('#brwsRecCount_scroller');
   document.detailform.currentbrowse.value = browse;
   gDelRow='';

   if (gQVdivs.wrap && gQVdivs.wrap.getAttribute("rowID") != rowin) {
       closeQuickView();
   }

   if (document.getElementById("BrowseRowNumber")) {
       document.getElementById("BrowseRowNumber").value='';
   }

   if (currentRecord != '' && currentRecord != rowin) {
      //collapses the last row
      if (gOpenMultRows==false && document.getElementById(rowin + "0div")) {
         if (gOpenRow != '' && gOpenRow!=rowin) {
             browseDetail('0');
         }
      }

      if (tmpEl = document.getElementById(currentRecord)) {
         if (tmpEl.getAttribute("prevClass") != "") {
            tmpEl.className = tmpEl.getAttribute("prevClass");
            if (tmpEl2 = document.getElementById(currentRecord + 'fixed')) {
                tmpEl2.className = tmpEl.getAttribute("prevClass");
            }
         } else {
            tmpEl.className = "BB";
            if (tmpEl2 = document.getElementById(currentRecord + 'fixed')) {
                tmpEl2.className = "BB";
            }
         }
         /*inactivates the current row's links*/
         $('a.activeLink', tmpEl).removeClass('activeLink').addClass('inactiveLink').attr('tabindex', '-1');
         $('a.activeLink', tmpEl2).removeClass('activeLink').addClass('inactiveLink').attr('tabindex', '-1');
      }
   }

   var rowinobj = document.getElementById(rowin);
   if (!rowinobj) {
       return;
   }

   gDelRow = rowinobj.getAttribute("delRow");
   if (gDelRow == undefined)
      gDelRow='';

   if (tmpEl = document.getElementById("BrowseRowNumber")) {
       tmpEl.value = gDelRow;
   }

   var i = 0, rowindetailobj = document.getElementById(currentRecord + i + 'detail');
   while(rowindetailobj) {
       rowindetailobj.className = 'BrowseBodySelected';
       rowindetailobj = document.getElementById(currentRecord + ++i + 'detail');
   }

   if (rowinobj.className == "BB" || rowinobj.className == "BB2") {
       rowinobj.setAttribute("prevClass",rowinobj.className);
   }

   rowinobj.className = 'BrowseBodySelected';
   document.detailform.currentrecord.value = rowin;
   currentRecord = rowin;

   if (brwsRecCount_scroller.length > 0) {
       $('div.recRow_selected', brwsRecCount_scroller).removeClass('recRow_selected');
       $(document.getElementById(rowin + 'recRow')).addClass('recRow_selected');
   }

   if(gOpenRow == '') {
       window.setTimeout(function(){
           scrollRowSelected(browse, rowinobj);
        }, 10);
   }

   if (tmpEl = document.getElementById(currentRecord + 'fixed')) {
       tmpEl.className = 'BrowseBodySelected';
   }

   if (document.getElementById("encrow")) {
       document.getElementById("encrow").value = document.getElementById(currentRecord).getAttribute('encrow');
   }

   window.setTimeout(scrollBrowseHeaders, 10);
   if (window.getBrowseInfo) {
      if (currentRecord.indexOf("detail") < 0) {
         var rowinfo = document.getElementById(currentRecord).getAttribute('pvdata');
         if (rowinfo != null) {
            getBrowseInfo(rowinfo);
         } else {
             getBrowseInfo();
         }
      }
   }
   window.setTimeout(delayActivateLinks, 200);
}
function scrollRowSelected(browse, rowinobj){
    var browseBodyDiv = $(document.getElementById(browse + 'Body'));
    var rowOffsetTop = parseInt(rowinobj.offsetTop, 10);
    var browseScrollTop = browseBodyDiv.scrollTop();
    if (rowOffsetTop < browseScrollTop) {
        $(rowinobj).scrollintoview({
            duration: 'fast',
            direction: "vertical"
        });
    } else if((rowOffsetTop + parseInt(rowinobj.offsetHeight, 10)) > (browseScrollTop + browseBodyDiv.height())) {
        $(rowinobj).scrollintoview({
            duration: 'fast',
            direction: "vertical"
        });
   }
}
function delayActivateLinks () {
    var tmpEl;
    var currentrecord = document.detailform.currentrecord.value;
    tmpEl = document.getElementById(currentrecord);
    /*activates the current row's links*/
    $('a.inactiveLink', tmpEl).removeClass('inactiveLink').addClass('activeLink').attr('tabindex', '0');
    tmpEl = document.getElementById(currentrecord + 'fixed');
    if (tmpEl) {
        $('a.inactiveLink', tmpEl).removeClass('inactiveLink').addClass('activeLink').attr('tabindex', '0');
    }
}
function fixBrowses(pBrowse) {
   if (browses == ''){
       browses = pBrowse;
   }

   var firstColumn = document.getElementById(browses + "FirstColumn");
   var lastColumn = document.getElementById(browses + "LastColumn");
   var headerDiv = document.getElementById(browses + "Header");
   var body = document.getElementById(browses + "Body");
   var padding;
   var tmpWidth = parseInt(body.clientWidth, 10);

    if (body && tmpWidth > 0) {
        padding = parseInt(body.style.width, 10) - tmpWidth;
        if (headerDiv) {
            headerDiv.style.width = tmpWidth + "px";
        }
        if (firstColumn) {
            if (gIsIpad) {
                firstColumn.width = '100%';
            } else {
                firstColumn.width = tmpWidth+ "px";
            }
        }
    }
    if (!gIsIpad && typeof padding == 'number' && lastColumn && padding > 6) {
        lastColumn.style.width = (padding - 6) + "px";
    }
}
function scrollBrowseHeaders() {
   if(browses != "") {
      var header = document.getElementById(browses + "Header");
      var body = document.getElementById(browses + "Body");
      var quickViewWrap = document.getElementById("quickViewWrap");

      if(header.scrollLeft != body.scrollLeft) {
          header.scrollLeft = body.scrollLeft;
      }

      if (document.getElementById(browses+'BodyFixed')) {
          scrollBrowseHeadersFixed();
      }
   }
}
function scrollBrowseHeadersFixed() {
   if (browses != "") {
      var fixed = document.getElementById(browses + "BodyFixed");
      var body = document.getElementById(browses + "Body");
      if(fixed && body && fixed.scrollTop != body.scrollTop) {
          fixed.scrollTop = body.scrollTop;
      }
   }
}
function scrollToBottom() {
   if (gIsIphone || gIsIpad) {
       return;
   }
   var rowinobj = document.getElementById('browseBottom');
   if (!rowinobj) {
       return;
   }
   $(rowinobj).scrollintoview({
        duration: 0,
        direction: "vertical"
    });
}
function changeCursor(pFieldId) {
   $("html").addClass("wait");
}
function unChangeCursor() {
    $("html").removeClass("wait");
}
function lookupKeyPressed(e,pBrowse,pWhereTo) {
    if (!e) {
        var e = window.event;
    }
   if (browses == '') {
       browses = pBrowse;
   }
   if(gPerformingSearch == false && (e.keyCode == 13 || e.keyCode == 9 || e.keyCode == 10) && fullTrim(document.getElementById(browses + 'LookupInput').value) != "") {
      changeCursor();
      showMessage('Searching...');
      cancelEvent(e);
      if (!document.getElementById("hRefreshFilters")) {
          $(document.detailform).append("<input type='hidden' id='hRefreshFilters' name='hRefreshFilters' value='false' />");
      } else {
          document.getElementById("hRefreshFilters").value = "false";
      }
      processSearch(pWhereTo,document.getElementById("vMaintOption").value);
      hideMessage();
      return false;
   } else {
       return true;
   }

}
function altF2Press(e) {
  if( e == null ) {
      e = window.event;
  }
  var hElement = getElementForEvent(e);

  /* alt-f2 */
  if (e["altKey"] && e.keyCode == 113) {
    var sAtt = hElement.getAttribute('pv-data');
    var vExp1 = new RegExp("skyward.", "gi");
    sAtt = sAtt.replace(vExp1, '');
    message("The database information is: " + sAtt);
  }
}
function displayQueryInfo() {
   var vPrivateInfo='',vLookupQuery='',vReposition='',vCurrent='',vQuery='',vLoaded='no';

   if (document.getElementById("IsKiosk") || document.getElementById("duserid").value == '-1') {
       return;
   }

   if (document.detailform.currentrecord.value != "" && document.getElementById(document.detailform.currentrecord.value)) {
       vPrivateInfo = document.getElementById(document.detailform.currentrecord.value).getAttribute('pvdata');
   }

   if (vPrivateInfo== null) {
       vPrivateInfo='';
   }

   if (document.getElementById("devLookupQuery")) {
       vLookupQuery = '<b>Lookup Query Used:</b>\n' + document.getElementById("devLookupQuery").value + '\n\n';
   }

   if (document.getElementById("devReposition")) {
       vReposition='<b>Reposition Record After Lookup:</b>\n' + document.getElementById("devReposition").value + '\n\n';
   }

   if (document.getElementById("currentrecord")) {
       vCurrent='<b>Selected Browse Record:</b> ' + document.getElementById("currentrecord").value + '\n\n';
   }

   if (document.getElementById("devQuery")) {
       vQuery = '<b>Browse Query Used:</b>\n' + document.getElementById("devQuery").value;
   }

   if (document.getElementById("hLoadedSettings")) {
       vLoaded=document.getElementById("hLoadedSettings").value;
   }
   var vMessage = '<b>Current Record Private Info:</b>\n' + vPrivateInfo + '\n\n'
                + '<b>Filter Settings Loaded:</b> ' + vLoaded + '\n\n'
                + vLookupQuery
                + vReposition
                + vCurrent
                + vQuery;

   vMessage += "\n\n<a href=\"javascript:message('Are you sure you want to delete Filters for this Browse?','',0,0,0,'Yes','fwDelete(1)','No','displayQueryInfo()')\">Delete Filters for this Browse</a>";
   vMessage +=   "\n<a href=\"javascript:message('Are you sure you want to delete User Preferences?','',0,0,0,'Yes','fwDelete(2)','No','displayQueryInfo()')\">Delete User Preferences</a>";
   vMessage +=   "\n<a href=\"javascript:message('Are you sure you want to delete ALL Browse Filters for this User?','',0,0,0,'Yes','fwDelete(3)','No','displayQueryInfo()')\">Delete <b>ALL</b> Browse Filters</a>";

   if (document.getElementById("hLoadTimes")) {
       vMessage=document.getElementById("hLoadTimes").value;
   }

   message(vMessage,'',0,700,0);
}
function fwDelete(pInt) {
    switch(pInt) {
        case 1:
            validateForm('resetParam','qparmhttp001?paramName=browseFilter&tProgram=' + document.getElementById("CurrentProgram").value,'');
            break;
        case 2:
            validateForm('resetParam','qparmhttp001?paramName=prefs&tProgram=' + document.getElementById("CurrentProgram").value,'');
            break;
        case 3:
            validateForm('resetAllParams','qparmhttp001','');
            break;
    }
}
function displayInfo() {
   var date = new Date();
   var year = date.getYear();
   var month = date.getMonth() + 1;
   var day = date.getDate();
   var vMessage;
   var vTitle;
   var vOutput;

   var hour = date.getHours();
   var minute = date.getMinutes();
   var ampm = 'am';
   if (hour >= 12) {
       ampm = 'pm';
   }

   if (hour > 12) {
       hour -= 12;
   }

   if (minute < 10){
       minute = "0" + minute;
   }

   if (document.getElementById("duserid") && document.getElementById("duserid").value == '-1') {
       return;
   }

   if (document.getElementById("IsKiosk")) {
       return;
   }

   var vHomePageMenuId='';
   try {
      if (document.getElementById("HomePageMenuID")) {
          vHomePageMenuId = document.detailform.HomePageMenuID.value;
          if (vHomePageMenuId == "") {
              vHomePageMenuId = document.detailform.SecurityMenuID.value
          }
      }
   }
   catch(er) {
      openNewWindow('qstatedit001.w',560,155);
      return;
   }

   var vManager = '';
   if (document.getElementById("hAreaManager")) {
       vManager = document.getElementById("hAreaManager").value;
   }
   var vProgrammer='';
   if (document.getElementById("hAreaProgrammer")) {
       vProgrammer=document.getElementById("hAreaProgrammer").value;
   }

   var vTempTable = '';
   if (document.getElementById("BrowseUseTempTable")) {
       vTempTable=document.getElementById("BrowseUseTempTable").value;
   }

   var vTabsProgram = '';
   if (document.getElementById("hTabsProgram")) {
       vTabsProgram=document.getElementById("hTabsProgram").value;
   }

   var vTabsVersion='';
   if (document.getElementById("hTabsVersion")) {
       vTabsVersion=document.getElementById("hTabsVersion").value;
   }

   var vState='';
   if (document.getElementById("pState")) {
      vState = "<a href=javascript:openNewWindow('qstatedit001.w',500,125); style='text-decoration:none; color:black; font-weight:bold;'>" + document.getElementById("pState").value + "</a>";
   }

   var vCompOs = '';
   var vCompName = $('#hCompName').val();    
   if (vCompName > "") {
       vCompOs = 'Server: ' + vCompName;
   }

   var vOSName = $('#hOSName').val();
   if (vOSName > "") {
       vCompOs += ' &nbsp; OS: ' + vOSName;
   }
   if (vCompOs > "")
       vCompOs += '\n';

   var vMenuPath='';
   if (document.getElementById("hMenuPathFW")) {
       vMenuPath=document.getElementById("hMenuPathFW").value;
   }

   var vIdleMax='';
   if (document.getElementById("hIdleMax")) {
       vIdleMax = 'Auto Logout: ' + document.getElementById("hIdleMax").value + ' minutes\n';
   }
   else {
       vIdleMax = 'Auto Logout: Disabled\n';
   }

   var vLoadTime='';
   if (document.getElementById("hLoadTime")) {
       vLoadTime = "Load Time: <a href=javascript:openNewWindow('usrbrws001.w',1000,700); style='text-decoration:none; color:black; font-weight:bold;'>" + document.getElementById("hLoadTime").value + " seconds</a>\n";
   }
   else {
       vLoadTime = "Load Time: <font style='color:red;'>Unknown</font>\n";
   }

   var vSecCache='';
   if (document.getElementById("hSecCache")) {
       vSecCache = document.getElementById("hSecCache").value + " <a href='javascript:clearSecCache();'>Clear</a>";
   } else if (!document.getElementById('SuperVersion')) { //for home pages
       vSecCache = "<a href='javascript:clearSecCache();'>Clear</a>";
   } else {
       vSecCache = "<font style='color:red;'>Disabled</font>";
   }

   var vButtonId='';
   try {
       vButtonId = 'Button ID: ' + document.detailform.ButtonID.value + '\n';
   }
   catch(er) {
       vButtonId = 'Button ID: N/A\n';
   }

   var vIPInfo='';
   try {
       vIPInfo = 'IP Info: ' + document.getElementById("hIPInfo").value + '\n';
   }
   catch(er) {}

   var vUserSecLevel='';
   if (document.getElementById("UserSecLevel")) {
      if (document.getElementById("UserLookupLevel")) {
          vUserSecLevel = "<a href=javascript:openAdvancedSupport(); style='text-decoration:none; color:black; font-weight:bold;'>" + document.getElementById("UserSecLevel").value + "/" + document.getElementById("UserLookupLevel").value + "</a>";
      } else {
          vUserSecLevel = "<a href=javascript:openAdvancedSupport(); style='text-decoration:none; color:black; font-weight:bold;'>" + document.getElementById("UserSecLevel").value + "</a>";
      }
    }

   if (vTabsProgram != '') {
       vTabsProgram = 'Tabs Program: <span style="color:red;">' + vTabsProgram + '</span> (' + vTabsVersion + ')\n';
   }

   if (year < 1900) {
       year += 1900;
   }

   vOutput = "?vUserId=" + document.getElementById("duserid").value + "&vMenuId=" + vHomePageMenuId + "&vEntity=" + document.detailform.entity.value;

   vMessage = '<b><u>FRAMEWORK/BROWSER INFORMATION</u></b>\n'
            + "<a href=\"javascript:openNewWindow('browserinfo.w',560,155);\" style='text-decoration:none; color:black; font-weight:bold;'>" + brws.osName + ", " + brws.brwsInfo + "</a>\n"
            + 'Super Version: ' + (document.getElementById("SuperVersion") ? document.getElementById("SuperVersion").value : "N/A") + '\n'
            + 'Framework JS Version: ' + gFWVersion + '\n'
            + '<b><u>PROGRAM INFORMATION</u></b>\n'
            + 'Release: ' + document.getElementById("PaCVersion").value + '\n'
            + vCompOs
            + vIdleMax
            + "<a href=\"javascript:openNewWindow('scommvers001.w?tProgramList=" + document.getElementById("CurrentProgram").value + "',1024,200);\" style='text-decoration:none; color:black;'>Program</a>: " + document.getElementById("CurrentProgram").value + " (" +  document.getElementById("CurrentVersion").value + ")\n"
            + vLoadTime
            + vTabsProgram
            + 'Browse Details: ' + (browseDetailsProc || "N/A") + '\n';

   vMessage += 'Temp Table: ' + (vTempTable || "N/A") + '\n'
            + 'Current Record: ' + (document.getElementById("currentrecord").value || "N/A") + '\n'
            + 'Passed Parameters: ' + (document.getElementById("passedparams").value || "N/A") + '\n'
            + 'Maintenance Mode: ' + (document.getElementById("vMaintOption").value || "N/A") + '\n'
            + 'Mgr/Prg: ' + (vManager || "N/A")  + ', ' + (vProgrammer || "N/A") + '\n\n'

            + '<b><u>USER INFORMATION</u></b>\n'
            + "User: <a href=\"javascript:openNewWindow('securitycheck.w" + vOutput + "',800,800);\" style='text-decoration:none; color:black; font-weight:bold;'>" + document.getElementById("duserid").value + "</a> (" + document.detailform.nameid.value + ")\n"
            + 'DWD/WFAACL/ENC: ' + document.detailform.dwd.value + '/' + document.detailform.wfaacl.value + '/' + document.detailform.encses.value + '\n\n'

            + '<b><u>SECURITY INFORMATION</u></b>\n'
            + vIPInfo
            + "<a href=\"javascript:openNewWindow('securitycache.w?tUserId=" + document.getElementById("duserid").value + "',625,768);\" style='text-decoration:none; color:black;'>Security Cache</a>: " + vSecCache + "\n"
            + 'Home Page: ' + document.detailform.HomePage.value + '\n'
            + vButtonId
            + 'Entity: ' + document.detailform.entity.value + '\n'
            + 'Menu ID: ' + vHomePageMenuId + '\n'
            + 'Menu Path: ' + vMenuPath + '\n'
            + 'State: ' + vState + '\n'
            + 'Security: ' + vUserSecLevel;

   if (document.getElementById("debugFile")) {
      vMessage += "\n\n<b><u>PERFORMANCE LOG</u></b>";
      vMessage += "\n<a href=\"javascript:openNewWindow('qdirconfig002.p?keepTemp=true&tempFile=" + document.getElementById("debugFile").value + "',400,300);\">Open File</a>";
      vMessage += "\n\n<a href=\"javascript:validateForm('removeLog','qperfhttp001.w','donothing');\">Delete File</a>";
   }

   if (document.getElementById('currentDate')) {
       vTitle = document.getElementById('currentDate').innerHTML + ', ' + hour + ':' + minute + ampm;
   } else {
       vTitle = month + '/' + day + '/' + year + ', ' + hour + ':' + minute + ampm;
   }
   message(vMessage,vTitle,0,350,0);
}
function startDim(pId,pFrom,pTo) {
    doFade(pId, pFrom, pTo);
}
function doFade (ele, pFrom, pTo, speed){
	if (typeof ele == 'string') {
		ele = document.getElementById(ele);
	}
	if (typeof pTo == 'string') {
		pTo = parseInt(pTo,10);
	}
    if (typeof pFrom == 'string') {
		pFrom = parseInt(pFrom,10);
	}
	if (typeof ele != 'object' || typeof pFrom != 'number' || typeof pTo != 'number'){
		return;
	}

	var change = 7;
    var delay = 50;

    switch (speed){
    	case "slow":
        	change = 3;
        	break;
        case "fast":
        	change = 10;
        	break;
	}

	if (pFrom != pTo) {
		if (gIsIE6) {
			pFrom = pTo;
		} else {
			if (pFrom < pTo) {
				pFrom += change;
				if (pFrom > pTo) {
					pFrom = pTo;
				}
			} else {
				pFrom -= change;
				if (pFrom < pTo) {
					pFrom = pTo;
				}
			}
			if (pFrom < 0) {
				pFrom = 0;
			} else if (pFrom > 100) {
				pFrom = 100;
			}
		}

		ele.style.filter = 'alpha(opacity=' + pFrom + ')';
		ele.style.opacity = pFrom / 100;

        if (ele.id && ele.id == 'dMessage') {
            gTimeoutMessage = window.setTimeout(function(){doFade(ele,pFrom, pTo,speed);},delay);
        } else if (ele.id && ele.id == 'dPrintMessage') {
            gTimeoutMessage = window.setTimeout(function(){doFade(ele,pFrom, pTo,speed);},delay);
        } else if (ele.id && ele.id == 'lockDiv') {
            gTimeoutLockdiv = window.setTimeout(function(){doFade(ele,pFrom, pTo,speed);},delay);
        } else {
            window.setTimeout(function(){doFade(ele,pFrom, pTo,speed);},delay);
        }
	} else {
        if (pTo == 0) {
            closeMessage(true, ele.id);
        }
    }
}
function showHeadsUp(){
    var dFavoriteschild = document.getElementById("dFavoriteschild");
    if (!dFavoriteschild || !dFavoriteschild.className.match("appDivHidden")) {
        return;
    }
    var lockDiv = document.getElementById("lockDiv");
    if (lockDiv && lockDiv.style.visibility=='visible') {
        return;
    }
    dc('dFavorites',0,true);
    addEvent(document, "keyup", hideHeadsUp);
    function hideHeadsUp(e){
        if (!e) {
            var e = window.event;
        }
        if ((gFavoritesKey == "altKey" && e.keyCode == 18) || (gFavoritesKey == "ctrlKey" && e.keyCode == 17)) {
            hcd('dFavorites',0,true);
            removeEvent(document, "keyup", hideHeadsUp);
        }
    }
}
function toTitleCase(pStr){
    if (!pStr || pStr == '') {
        return '';
    }
    var rParts = pStr.split(' ');
    var i = rParts.length - 1;
    for (i; i >= 0; i--) {
        if (rParts[i].length > 1) {
            rParts[i] = rParts[i].substring(0,1).toUpperCase() + rParts[i].substring(1).toLowerCase();
        } else {
            rParts[i] = rParts[i].toUpperCase();
        }
    }
    return rParts.join(" ");
}
if (String.prototype.toTitleCase == null) {
    String.prototype.toTitleCase = function(){
        return toTitleCase(this);
    }
}
function offKeyPress() {
   gKeyPressed=false;
}
function checkHotKeys(e){
    if (!e) {
        var e = window.event;
    }
   /*Button hotkeys click their buttons*/
   if (!e["altKey"]) {
       return;
   }

   if ($('#link_compile').length > 0 && e["ctrlKey"]) {
       return;
   }

   if (gButtonHotKeys["_" + e.keyCode]) {
       var hKey = document.getElementById(gButtonHotKeys["_" + e.keyCode]);
       if (hKey && hKey.className.match(/disabled/i) == null && !hKey.getAttribute("disabled")) {
           try {
              hKey.focus();
               eval(prepareHref(hKey.href));
               cancelEvent(e);
               return false;
           } catch (ex){}
       }
   }
}
function documentKeyPressed(e) {
    if (!e) {
        var e = window.event;
    }
   gUsrIdle.clearIdle();
   gKeyPressed=true;
   var theRow, theTable;
   var cr='';
   if (document.getElementById("currentrecord")) {
       cr = document.getElementById("currentrecord").value;
   }
   window.setTimeout(offKeyPress, 100);

   var vTarget;
   var hKey;

   vTarget = getElementForEvent(e);

   if (!vTarget) {
       return;
   } else if (e.keyCode == 9 && vTarget.id == 'entityInput') {
       filterEntity(e);
       cancelEvent(e);
   }

   if (gHeadsUp && e[gFavoritesKey]) {
       showHeadsUp();
   }

   try {
      /*Cancel default browser backspace behavior */
      if (e.keyCode==8) {
         if ((vTarget.tagName != "INPUT" && vTarget.tagName != "TEXTAREA") || (vTarget.tagName == "INPUT" && (vTarget.getAttribute("type") == "radio" || vTarget.getAttribute("type") == "checkbox" || vTarget.readOnly || vTarget.disabled))) {
            cancelEvent(e);
            return false;
         }
      }

      if (gExtraTabLogic) {
          /*Cancel/close button extra tab logic*/
          if (e.keyCode==9 && !e["shiftKey"] && gEnterField != '') {
             if (vTarget && vTarget.id && (vTarget.id == 'bCancel' || vTarget.id == 'bClose')) {
                if (gEnterField == 'bapplyFilter' || gEnterField == 'bNewApplyFilter') {
                    gEnterField = 'sRecordCount';
                }
                applyFocus();
                cancelEvent(e);
                return false;
             }
          }
      }

      if (e.keyCode==9 && vTarget) {
         /*Message buttons extra tab logic */
         var $dMessage = $('#dMessage');
         if ($dMessage.is(':visible')) {
             var tabIds = $dMessage.data('tabids').split('|');
             if (vTarget && vTarget.id && tabIds.indexOf(vTarget.id) >= 0) {
                 var next = tabIds.indexOf(vTarget.id);

                 if (e.shiftKey) {
                     next--;
                     if (next < 0) {
                         next = tabIds.length-1;
                     }
                 }
                 else {
                     next++;
                     if (next == tabIds.length) {
                         next = 0;
                     }                    
                 }

                 gEnterField = tabIds[next];
                 applyFocus();
                 cancelEvent(e);
                 return false;
             }
             if ($dMessage.find(vTarget).length == 0) {                 
                 gEnterField = (e.shiftKey) ? 'msgPrint' : tabIds[0];
                 applyFocus();
                 cancelEvent(e);
                 return false;
             }
         }
         else if (vTarget.id && !e["shiftKey"]) {
             /*New hide filter button extra tab logic*/
             if (vTarget.id == 'bNewHideFilter') {
                gEnterField = 'sRecordCount';
                applyFocus();
                cancelEvent(e);
                return false;
             }
             if (vTarget.id == 'bhideFilter') { /*Old hide filter button extra tab logic*/
                gEnterFilter = 'sRecordCount';
                applyFilterFocus();
                cancelEvent(e);
                return false;
             }
         }
      }

      if (e.keyCode == 67 && e.ctrlKey && e.altKey && $('#link_compile').length > 0) {
            $. ajax({
                url: 'compilehttp.r',
                method: "POST", 
                cache: false,
                data: {
                    "fileaction": "work",
                    "filename": $('#CurrentProgram').val().replace('.w','.html'),
                    "browseDetailsProc": browseDetailsProc.replace('.w','.html'),
                    "tabProc": (document.getElementById("hTabsProgram") ? document.getElementById("hTabsProgram").value.replace('.w','.html') : "")
                },
                timeout: 120000,
            }).always(function(data) {                
                if (!data) {
                    message("Compile Failed!", "Error");
                }
                else {
                    var vEnd = data.indexOf("**");
                    if (vEnd >= 0) {
                        data = data.replace(/no errors found/gi, "");
                        data = data.replace(/<BR>Unable to run Web object 'compilehttp.r'<BR>/gi, "");
                        message(data, "Error", 0, "auto");
                    }
                    else {
                        location.reload();
                    }
                }
            });          
      }
   }
   catch (er) {}

   /*Common filter button extra tab logic*/
   if (e.keyCode==9 && !e["shiftKey"] && gEnterFilter != '') {
      if (vTarget && vTarget.id && vTarget.id == 'bhideFilter2') {
         applyFilterFocus();
         cancelEvent(e);
         return false;
      }
   }

   /*Spacebar 'clicks' the button*/
   if (e.keyCode == 32 && vTarget && vTarget.id && vTarget.className.toLowerCase() == 'button') {
      try {
         var vHref = prepareHref(vTarget.href);
         eval(vHref);

         cancelEvent(e);
         return false;
      }
      catch (ex) {}
   }

   /* allow closing of the tooltip using the escape key */
   if (e.keyCode == 27) {
       skyTip.hide();
   }

   /*quick filter keys*/
   if (browses) {
       var divQF = document.getElementById(browses + 'QF');
       if (divQF && divQF.style.display != 'none') {
           if (e.keyCode == 27) {
               //ESC closes the QuickFilter
               var vHref = prepareHref(document.getElementById('bQfBack').href);
               eval(vHref);
               return;
           } else if (vTarget.id.indexOf('qf') == 0 && e.keyCode == 13 && (e["ctrlKey"] || e["altKey"] || e["shiftKey"] ||  e["metaKey"])) {
               //ENTER + any modifier key applies the fliter
               var vHref = prepareHref(document.getElementById('bQfUpdate').href);
               eval(vHref);
               return;
           } else if (e.keyCode == 40 && vTarget.id.indexOf("qf1") == 0) {
               var qf2 = document.getElementById(vTarget.id.replace("qf1", "qf2"));
               if (qf2) {
                   qf2.value = vTarget.value;
                   return false;
               }
           } else if (e.keyCode == 38 && vTarget.id.indexOf("qf2") == 0) {
               var qf1 = document.getElementById(vTarget.id.replace("qf2", "qf1"));
               if (qf1) {
                   qf1.value = vTarget.value;
                   return false;
               }
           }
       }
   }

   if (e[gFavoritesKey] && e.keyCode>=48 && e.keyCode<=57) {
      var vId = 'fav' + (e.keyCode - 48).toString();
      if (document.getElementById(vId)) {
         var vHref = prepareHref(document.getElementById(vId).href);
         eval(vHref);
      }
      else if (document.getElementById("fav1") && e.keyCode==48) {
          /*Edit Favorites when favorites key + 0*/
          editFavorites();
      }
   }
   //Number pad keys
   else if (e[gFavoritesKey] && e.keyCode>=96 && e.keyCode<=105) {
      var vId = 'fav' + (e.keyCode - 96).toString();
      if (document.getElementById(vId)) {
         var vHref = prepareHref(document.getElementById(vId).href);
         eval(vHref);
      }
      else if (document.getElementById("fav1") && e.keyCode==96) {
          /*Edit Favorites when favorites key + 0*/
          editFavorites();
      }
   }

   if (window.extraKeyFunction) {
       extraKeyFunction(e.keyCode);
   }

   if (e.keyCode == 123) { /*113 = F2, 119 = F8, 120 = F9, 123 = F12*/
      if (document.getElementById("CurrentProgram")) {
         /*mac command key = e["metaKey"]*/
         if (e["ctrlKey"] && e["shiftKey"]) {
             displayQueryInfo();
         } else {
             displayInfo();
         }
      } else {
          message('No current program value found');
      }
      if (e.returnValue) {
          e.returnValue = true;
      }
      return true;
   }
   else if (e.keyCode == 112 && e["ctrlKey"]) { /*112 = F1*/
      /*if (document.getElementById("hCurrentField").value != '')*/
   }
   else if(cr != "" && cr != null) {
      theRow = document.getElementById(cr);
      if (theRow) {
         theTable = theRow.parentNode.parentNode;

         var vIsVisible=false;
         if (document.getElementById("lockDiv") && document.getElementById("lockDiv").style.visibility=='visible')
             vIsVisible=true;

         if(gAllowArrows==true && e.keyCode == 38 && theRow.rowIndex != 0 && vIsVisible==false) { //up arrow
            if (document.getElementById(document.detailform.currentrecord.value+'0detail')) {
               if (theTable.rows[theRow.rowIndex - 2]) {
                   BRS(theTable.rows[theRow.rowIndex - 2].id);
               }
            }
            else if (theTable.rows[theRow.rowIndex - 1]) {
                BRS(theTable.rows[theRow.rowIndex - 1].id);
            }
            cancelEvent(e);
            return false;
         }
         else if(gAllowArrows==true && e.keyCode == 40 && theRow.rowIndex != (theTable.rows.length - 1) && vIsVisible==false) { //down arrow
            if (document.getElementById(document.detailform.currentrecord.value+'0detail')) {
               if (theTable.rows[theRow.rowIndex + 2]) {
                   BRS(theTable.rows[theRow.rowIndex + 2].id);
               }
            }
            else if (theTable.rows[theRow.rowIndex + 1]) {
                BRS(theTable.rows[theRow.rowIndex + 1].id);
            }
            cancelEvent(e);
            return false;
         }
      }

      if (gIsIE && e.keyCode==13 && vTarget.tagName == "A"){
          gDoClosingActions="no";
          window.setTimeout(function(){ gDoClosingActions = "default";}, 1000);
      }

      //Prevents IE from playing the default sound which is caused by preventing form from being posted
      if (gIsIE && e.keyCode==13 && ((vTarget.tagName == "INPUT" && (vTarget.getAttribute("type") == "radio" || vTarget.getAttribute("type") == "checkbox" || vTarget.getAttribute("type") == "text")) || vTarget.tagName == "SELECT")) {
          e.returnValue=false;
          if (e.stopPropagation) {
              e.stopPropagation();
          }
          if (e.stopImmediatePropagation) {
              e.stopImmediatePropagation();
          }
          if (e.preventDefault) {
              e.preventDefault();
          }
          return false;
      }
      else {
          if (e.returnValue) {
              e.returnValue = true;
          }
          return true;
      }
   }
   else {

       if (gIsIE && e.keyCode==13 && vTarget.tagName == "A"){
          gDoClosingActions="no";
          window.setTimeout(function(){ gDoClosingActions = "default";}, 1000);
       }

       //Prevents IE from playing the default sound which is caused by preventing form from being posted
       if (gIsIE && e.keyCode==13 && ((vTarget.tagName == "INPUT" && (vTarget.getAttribute("type") == "radio" || vTarget.getAttribute("type") == "checkbox" || vTarget.getAttribute("type") == "text")) || vTarget.tagName == "SELECT")) {
           e.returnValue=false;
           if (e.stopPropagation) {
              e.stopPropagation();
           }
           if (e.stopImmediatePropagation) {
               e.stopImmediatePropagation();
           }
           if (e.preventDefault) {
               e.preventDefault();
           }
           return false;
       }
       else {
           if (e.returnValue) {
               e.returnValue = true;
           }
           return true;
       }
   }
}
function prepareHref(pHref) {
   var vExp = new RegExp("%22", "gi");
   var vExp2 = new RegExp("%20", "gi");
   var vExp3 = new RegExp("%27", "gi");
   return pHref.replace(vExp, '"').replace(vExp2, " ").replace(vExp3, "'");
}
function cancelEvent(e) {
    if (!e) {
        var e = window.event;
    }
    if (!e) {
        return;
    }
    if ('returnValue' in e) {
        e.returnValue = false;
    }
    if ('cancelBubble' in e ) {
        e.cancelBubble = true;
    }
    if (e.stopPropagation) {
        e.stopPropagation();
    }
    if (e.preventDefault) {
        e.preventDefault();
    }
    return false;
}
function loadPrivateData() {
    var nElementArray = new Array("INPUT","TEXTAREA","SELECT");
    var hElementArray, hElement, sAtt;
    for (var x = 0; x < nElementArray.length; x++){
        hElementArray = document.getElementsByTagName(nElementArray[x]);
        for(var i = 0; i < hElementArray.length; i++ ){
            hElement = hElementArray[i];
            sAtt =  hElement.getAttribute( 'pv-data' );
            if(sAtt != null && sAtt.length > 0 && sAtt.toLowerCase() != "skip") {
                addEvent(hElement, "keydown", altF2Press);
            }
        }
    }
}
function OSN(pLinkId,pId) {
   openStudentName(pLinkId,pId);
}
function openStudentName(pLinkId,pId) {
   if (document.getElementById(pLinkId).className == 'activeLink') {
       if ($("#studentid").length > 0) {
           var cHold = $("#studentid").val();
           $("#studentid").val(pId);
           openNewWindow('sepinf01.w?newwindow=yes&hFromSM=yes', 990, 800, 1, 'view');
           $("#studentid").val(cHold);
       }
       else{
           openNewWindow('sepinf01.w?newwindow=yes&hFromSM=yes&studentid=' + pId, 990, 800, 1, 'view');
       }
   }
}
function refreshDetails(pAction,pProgram,pDetails) {
   gAction = pAction;
   gProgram = pProgram;
   gWhereTo = pDetails;
   gExtraInfo = "";
   gFromRefreshDetails = true;
   gUseCustomValidation = false;

   try {
      if (window.opener && !opener.closed && opener.document.getElementById("currentbrowse") && opener.document.getElementById("currentbrowse").value != "") {
         if (browseDetailsProc == "" || !document.getElementById("hBrowseDetails") || document.getElementById("hBrowseDetails").value == "") {
             gExtraInfo = pDetails;
         }
      }
   } catch (ex) {}
   continueValidateForm();
}
function replaceSpace(pValue) {
   pValue=pValue.replace(/&nbsp;/g," ");
   return pValue;
}
function toggleFilter() {
   var vFilterDiv = document.getElementById("filterDiv");
   if (!vFilterDiv) {
       return;
   }
   if ($(vFilterDiv).closest('#tabProgramWrap').length > 0 || $(vFilterDiv).closest('fieldset').length > 0) {
       $(vFilterDiv).appendTo(document.detailform);
   }
   var vTempTable, BrowseUseTempTable, lAdvFilter, BrowseColumns, lModifyPref, bOpenCommon, ShowFilter, hFilterOpen, LookupInput, bSelect, bAdd;

   BrowseUseTempTable = document.getElementById("BrowseUseTempTable");
   lAdvFilter =  document.getElementById("lAdvFilter");
   BrowseColumns =  document.getElementById("BrowseColumns");
   lModifyPref =  document.getElementById("lModifyPref");
   bOpenCommon =  document.getElementById("bOpenCommon");
   ShowFilter =  document.getElementById("ShowFilter");
   hFilterOpen = document.getElementById("hFilterOpen");

   //Hide Advance Filter link if browse is using a temp-table
   if (BrowseUseTempTable) {
       vTempTable = BrowseUseTempTable.value;
   }
   if (vTempTable.toLowerCase() == 'yes' && lAdvFilter) {
       lAdvFilter.style.visibility = "hidden";
   }
   if (!BrowseColumns && lModifyPref) {
       lModifyPref.style.visibility = "hidden";
   }

   if (vFilterDiv.style.visibility == 'hidden') { //opens filter
      if (ShowFilter && !bOpenCommon) {
          ShowFilter.style.visibility = 'hidden';
      }
      if (hFilterOpen) {
          hFilterOpen.value = 'open';
      }

      if (vFilterDiv.style.top == '0px' && vFilterDiv.style.left == '0px') {
          setOpacity("filterDiv",0);
      }

      displayLockDiv();
      vFilterDiv.style.display='';
      vFilterDiv.style.visibility='visible';

      if (vFilterDiv.style.top == '0px' && vFilterDiv.style.left == '0px') {
          centerFilter("filterDiv");
      }

      applyFilterFocus();
   } else { //collapses filter
      hideLockDiv();

      if (ShowFilter) {
          ShowFilter.style.visibility = 'visible';
      }
      if (hFilterOpen) {
          hFilterOpen.value = '';
      }

      vFilterDiv.style.display='none';
      vFilterDiv.style.visibility='hidden';

      if (gIsIphone == false) {
          LookupInput = document.getElementById(browses + "LookupInput");
          bSelect = document.getElementById("bSelect");
          bAdd = document.getElementById("bAdd");
          if (LookupInput)
             LookupInput.focus();
          else if (bSelect)
             bSelect.focus();
          else if (bAdd)
             bAdd.focus();
      }
   }
   unChangeCursor();
}
function applyFilterFocus() {
   try {
      if (gEnterFilter != '' && document.getElementById(gEnterFilter) && gIsIphone == false) {
          document.getElementById(gEnterFilter).focus();
      }
   } catch (ex) {};
}
function setLockDivSize(){
    var vLockDiv = $("#lockDiv");
    if (vLockDiv.length == 0) {
       return;
    }

    if (gIsSafari && gIsMobile) {
        $("#lockDiv").css({
             'height' : $(document).height() + "px"
            ,'width': "100%"
            ,'top' : '0'
            ,'left': '0'
        });
    } else {
        $("#lockDiv").css({
             'height' : $(window).height() + "px"
            ,'width': "100%"
            ,'top' : getScrollY() + 'px'
            ,'left': getScrollX() + 'px'
        });
    }
}
function displayLockDiv() {
   var vLockDiv = document.getElementById("lockDiv");
   if (!vLockDiv) {
       return;
   }
   if (vLockDiv.style.visibility == 'visible' && ((vLockDiv.style.opacity && vLockDiv.style.opacity.toString().indexOf('.6') >= 0) || (vLockDiv.style.filter && vLockDiv.style.filter.indexOf('60') >= 0))) {
       return;
   }
   setLockDivSize();
   vLockDiv.style.visibility='visible';
   vLockDiv.style.display='';
}
function hideLockDiv() {
   var vLockDiv = document.getElementById("lockDiv");

   if (!vLockDiv) {
       return;
   }

   if (gKeepLockOpen == true) {
       return;
   }

   vLockDiv.style.visibility='hidden';
   vLockDiv.style.display='none';
}
function centerFilter(pId) {
   var vWinWidth, vWinHeight, vFilterDiv, windowSize;
   var IsMobile = document.getElementById("IsMobile");
   var vTop=0;
   var vLeft=0;

   if (!pId)
      pId = "filterDiv";

   vFilterDiv = document.getElementById(pId);

   windowSize = getWindowSize();
   vWinHeight = windowSize.height;
   vWinWidth = windowSize.width;

   vFilterDiv.style.height='';
   if (parseInt(cDomObject.getHeight(vFilterDiv), 10) >= vWinHeight - 20) {
       vFilterDiv.style.height = (vWinHeight - 25) + "px";
   }

   vTop = (parseInt(vWinHeight / 2, 10) - parseInt(cDomObject.getHeight(vFilterDiv) / 2, 10)) || 0;
   vLeft = (parseInt(vWinWidth / 2, 10) - parseInt(cDomObject.getWidth(vFilterDiv) / 2, 10)) || 0;


   if (vLeft < 1) {
       vLeft = 1;
   }
   if (vTop < 20) {
       vTop = 20;
   }

   vFilterDiv.style.top = vTop + getScrollY() + 'px';
   vFilterDiv.style.left = vLeft + 'px';

   //redisplay after done moving
   setOpacity(pId,100);
}
function checkKeyUp(e){
    if (!e) {
        var e = window.event;
    }
    //checkKey(e);
}

function acceptFwPl(pFwPl) {

    outputHiddenField('hExFwPl', pFwPl)

    var vRandom = Math.random();
    var vTitle = document.title.split("-");

    document.getElementById("hExcelRandom").value = vRandom;

    try {
        addToQueue("Processing List: " + vTitle[0], 'student/1exporttoproclist.p', vRandom, '', '', 'utility');
    }
    catch(er) {
        addToQueue('Processing List', 'student/1exporttoproclist.p', vRandom, '', '', 'utility');
    }
    openIframeDialog(document.getElementById("CurrentProgram").value,0,0,0,'ExportFWPL');
}

function exportToProcList(){
    openNewWindow('qprocbrws000.w?hFwPl=yes',825,600,0, 'select');
}

function exportToExcelPQ(pgm) {

    if(!pgm)pgm=document.getElementById("CurrentProgram").value;

    var vRandom = Math.random();
    var vTitle = document.title.split("-");

    document.getElementById("hExcelRandom").value = vRandom;

    try {
        addToQueue("Export Data: " + vTitle[0], 'student/1exporttoexcel.p', vRandom, '', '', 'utility');
    }
    catch(er) {
        addToQueue('Export Data', 'student/1exporttoexcel.p', vRandom, '', '', 'utility');
    }
    openIframeDialog(pgm,0,0,0,'export');
}
/* Add item to queue */
function addToQueue(pDesc,pProgram,pParams,pPath,pInfo,pType,pClose,pSrpplmIn,pPriority,pRefreshParent,pPQPass){

    if (typeof(pClose) == 'string' && pClose.toUpperCase() == 'AFTERREFRESH') {
        var paramString = "";
        for (var i = 0; i < arguments.length; i++) {
            if (i == 6) {
                paramString += "," + false;
            } else {
                if (typeof(arguments[i]) == 'string') {
                    paramString += ",'" + arguments[i].replace(/'/g, "\\'").replace(/"/g, "&quot;") + "'";
                } else {
                    paramString += ',' + arguments[i];
                }
            }

        }
        paramString = paramString.replace(/,/, '');
        addAfterRefresh('addToQueue(' + paramString + ')');
        return;
    }
    if (document.getElementById('vPQAtch1') || document.getElementById('vPQAtch2') || document.getElementById('vPQAtch3')) {
        if(!pType)pType=''; //need to make sure the type is reset to blanks
        if(!pSrpplmIn)pSrpplmIn='';
        if(!pPriority)pPriority='';
        if(!pPQPass)pPQPass='';

        document.detailform.pDesc.value     = pDesc;
        document.detailform.pProgram.value  = pProgram;
        document.detailform.pParams.value   = pParams;
        document.detailform.pPath.value     = pPath;
        document.detailform.pInfo.value     = pInfo;
        document.detailform.pType.value     = pType;
        document.detailform.pSrpplmIn.value = pSrpplmIn;
        document.detailform.pPriority.value = pPriority;

        if (pPQPass!='') {
            if (!$('#pPQPass').length)
                $(document.detailform).append("<input type='hidden' id='pPQPass' name='pPQPass'/>");
            $('#pPQPass').val((pPQPass));
        }

        if (pRefreshParent) {
            if (document.getElementById('hRefreshParent')) {
                document.getElementById('hRefreshParent').value = 'true';
            } else {
                $(document.detailform).append("<input type='hidden' id='hRefreshParent' name='hRefreshParent' value='true' />");
            }
        }

        var vMenuBar = 0;

        openNewWindow('qaddqueue000.w?closeWindowForNewDiv=true',400,125,1,'',0);
    } else {
         if (pClose && (pClose == true || pClose == 'true')) {
             pClose = 'NOSHOW';
         } else if (pClose && (pClose == 'parent' || pClose == 'closeParent=true')) {
             pClose = true;
         }

         if (pType && pType.toUpperCase() == 'U') {
             pType = 'Utility';
         }

        vQPSetup.toQueue(pDesc,pProgram,pParams,pPath,pInfo,pType,pClose,pSrpplmIn,pPriority,pRefreshParent,false,pPQPass);
    }
}
/* Add item to processing list */
function addToProcList (pDesc,pProgram,pParams,pPath,pInfo,pType,pClose,pPriority,pButtons){

   document.detailform.pDesc.value     = pDesc;
   document.detailform.pProgram.value  = pProgram;
   document.detailform.pParams.value   = pParams;
   document.detailform.pPath.value     = pPath;
   document.detailform.pInfo.value     = pInfo;
   document.detailform.pType.value     = pType;
   document.detailform.pPriority.value = pPriority;
   document.detailform.pButtons.value  = pButtons;

   if (pParams == "") {
     openNewWindow('qprocbrws000.w?hBackbutton=Yes',810,700,0,'browse',0);
   }
   else{
     openNewWindow('qprocbrws000.w?pClose=' + pClose,810,700,0,'view',0);
   }
}
// gets browse details from XML request
function getbrowseDetail(pProgram,pNode,forQuickView) {
    var isQuickView = false;
    try {isQuickView = forQuickView;} catch (err){}
    if (gQVdivs.wrap && gQVdivs.wrap.style.display != "none" ) {
        isQuickView = true;
    }

   if (pProgram == '') {
       pProgram = browseDetailsProc;
   }

   var vCurrentValue = document.detailform.currentrecord.value;

   //Don't show details that are suppressed by the user's preference
   if (document.getElementById(vCurrentValue + pNode + "td") && document.getElementById(vCurrentValue + pNode + "td").style.display == 'none') {
      gDetailsCounter++;
      return;
   }

   if (document.getElementById(vCurrentValue + pNode + "detail") && document.getElementById(vCurrentValue + pNode + "detail").style.display == "none" && document.getElementById(vCurrentValue + pNode + "div").innerHTML.length==0 && !isQuickView) {
      browseDetail(pNode);
      return;
   }

   if (pProgram != '') {
     var gBrowseXmlHttp = XmlHttp.create();
      if (gBrowseXmlHttp) {
         changeCursor();
         showMessage('Loading details...');
         gBrowseXmlHttp.open("POST",pProgram,gSynchronous);
         gBrowseXmlHttp.onreadystatechange = function() {
             if (gAbortRequests) {
                hideMessage();
                return;
            }
            var myText = "";
            var tmpEl;
            if (gBrowseXmlHttp.readyState==4) {

               if (gBrowseXmlHttp.status==200) {
                  hideMessage();
                  if (gSkipHTMLDecode==true) {
                      myText = gBrowseXmlHttp.responseText;
                  }
                  else {
                      myText = Encoder.htmlDecode(gBrowseXmlHttp.responseText);
                  }

                  if (vCurrentValue == document.detailform.currentrecord.value && document.getElementById(vCurrentValue + pNode + "div")) {
                     //deactivate tooltips before replacing content
                    if (window.skyTip) {
                      skyTip.hide();
                    }

                     if (myText == ""){
                         myText = "<tr><td class='BrowseDetailColText'>No Details Available</td></tr>";
                     }
                     if (myText.substring(0, 6).toLowerCase() != "<table" && myText.substring(0, 4).toLowerCase() != "<div"){
                         myText = "<table>" + myText + "</table>";
                     }
                     tmpEl = document.getElementById(vCurrentValue + pNode + "div");
                     myText = myText.replace(/\n/g, '');
                     try {
                         if (myText.indexOf("<\/script>") > -1) {
                             $(tmpEl).html('');
                             $(tmpEl).append(myText);
                         } else {
                             $(tmpEl).html(myText);
                         }

                         if (typeof window.MathJax != 'undefined') { //if page is using MathJax, apply to new content
                             MathJax.Hub.Queue(["Typeset",MathJax.Hub,tmpEl]);
                         }

                         $('table', tmpEl).each(function(){
                             if (rgb2hex(this.style.backgroundColor).toUpperCase() == "#EAEAD5" && $(this).text().length > 0) {
                                 this.style.backgroundColor = "transparent";
                                 this.style.borderWidth = "0";
                                 $(this).wrap('<fieldset />');
                             }
                         });

                         fixIEFieldsets(tmpEl);
                         
                         $('img', tmpEl).each(function(){
                            if (this.src.match('wfwcol01') != null) {
                                $(this).parent('a').removeClass('bd_closed').addClass('bd_open');
                            } else if (this.src.match('wfwexp01') != null) {
                                $(this).parent('a').removeClass('bd_open').addClass('bd_closed');
                            }
                         });
                     } catch (ex){}

                     if (isQuickView && gQVdivs.wrap && gQVdivs.content && myText != "") {
                        if (myText.indexOf("<\/script>") > -1) {
                            $(gQVdivs.content).html(tmpEl.innerHTML);
                        }
                        else{
                            $(gQVdivs.content).html(myText.replace("<table width=","<table xwidth=")); //override default table width for quickView
                        }
                        $(document.getElementById(vCurrentValue + pNode + "div")).html("");
                        gQVdivs.wrap.style.display = "inline";
                        gQVdivs.pointer.style.display = "block";
                        positionQuickView();
                     }

                     //Need to check if main detail is open anymore--if not, do not open children details
                     if (document.getElementById(vCurrentValue + "0detail").style.display!="none" && !isQuickView) {
                        document.getElementById(vCurrentValue + pNode + "div").style.display="inline";
                        document.getElementById(vCurrentValue + pNode + "detail").style.display="";
                        BRS(vCurrentValue);
                     }
                  }

                  gDetailsCounter++;
                  if (gDetailsCounter>=gShowNumDetails) {
                      gDetailsDone = true;
                  }
                  if (document.getElementById(vCurrentValue + "recRow")) {
                      if (document.getElementById(vCurrentValue + "0detail").style.display == 'none') {
                          document.getElementById(vCurrentValue + "recRow").style.marginBottom = $(document.getElementById(vCurrentValue + "0detail")).css('height');
                      } else {
                          document.getElementById(vCurrentValue + "recRow").style.marginBottom = '0';
                      }
                      scrollBrowseRecordCount();
                  }
                  if (gIsRefresh) {
                      gIsRefresh = false;
                      applyOpenClosed();
                  }
               }
            }
         }
         var vParams = "requestAction=browse&dtlnode=" + pNode + "&expAll=" + gExpAll + buildFormData();
         gBrowseXmlHttp.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
         if (gIsMoz || gIsIE) {
             gBrowseXmlHttp.setRequestHeader("Connection", "close");
             gBrowseXmlHttp.setRequestHeader("Content-length", vParams.length);
         }
         gBrowseXmlHttp.send(vParams);
      }
   }
   if (!isQuickView) {
       closeQuickView();
   }
}
function saveOpenDetails() {
   gSavingDetails=false;
   if (browseDetailsProc != '') {
      var gBrowseXmlHttp = XmlHttp.create();
      if (gBrowseXmlHttp) {
         var vParams = "requestAction=saveOpenDetails&nodes=" + gDetailsOpen + "&nameid=" + document.detailform.nameid.value + "&CurrentProgram=" + document.detailform.CurrentProgram.value + "&dwd=" + document.detailform.dwd.value + "&wfaacl=" + document.detailform.wfaacl.value + "&encses=" + document.detailform.encses.value + "&homepage=" + document.detailform.HomePage.value;
         gBrowseXmlHttp.open("POST",browseDetailsProc,gSynchronous);
         gBrowseXmlHttp.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
         if (gIsMoz || gIsIE) {
             gBrowseXmlHttp.setRequestHeader("Connection", "close");
             gBrowseXmlHttp.setRequestHeader("Content-length", vParams.length);
         }
         gBrowseXmlHttp.send(vParams);
      }
   }
}
// Manages Browse Details
function expAll() {
   var vCurrentValue = document.detailform.currentrecord.value;

   gExpAll = true;
   gDetailsCounter = 0;
   closeQuickView();
   if (document.getElementById(vCurrentValue + "1img")) {
      var i = 1, vNode = document.getElementById(vCurrentValue + i + "detail");
      while(vNode) {
         if (vNode.style.display == "none")
            browseDetail(i);
         else
            gDetailsCounter++;
         
         $('a.bd_closed', vNode).each(function(){
            eval($(this).attr('href'));
         });
         vNode = document.getElementById(vCurrentValue + ++i + "detail");
      }
   }
   window.setTimeout(resetExpAll, 5000);
}
function resetExpAll() {
   gExpAll = false;
}
function colAll() {
   var vCurrentValue = document.detailform.currentrecord.value;

   closeQuickView();

   if (document.getElementById(vCurrentValue + "1img")) {
      var i = 1, vNode = document.getElementById(vCurrentValue + i + "detail");
      while(vNode) {
         $('a.bd_open', vNode).each(function(){
            eval($(this).attr('href'));
         });
         if (vNode.style.display != "none")
            browseDetail(i);         
         vNode = document.getElementById(vCurrentValue + ++i + "detail");
      }
   }
}
function BD(pNodeNumber) {
   closeQuickView();
   browseDetail(pNodeNumber);
}
function BD2(pNodeLevel,pNodeNumber) {
   var vCurrentValue = document.detailform.currentrecord.value;

   var vNode = vCurrentValue + pNodeLevel + "," + pNodeNumber + "subdetail";
   var vImg = vCurrentValue + pNodeLevel + "," + pNodeNumber + "subimg";
   var vLink;
   var vTR;
   var vImgEl = document.getElementById(vImg);

   if (!vImgEl && vImg.split(",").length > 1 && vImg.split(",")[0].split("_").length > 1) {
       vImg = vCurrentValue + vImg.split(",")[0].replace(vCurrentValue, "").split("_")[1] + "," + vImg.split(",")[1];
       vImgEl = document.getElementById(vImg);
   }
   if (vImgEl) {
       vLink = vImgEl.parentNode;
   }
   vTR = document.getElementById(vNode);
   if (!vTR) {
       return;
   }

   if (vTR.style.display == "none") { //expand
       vTR.style.display = "";

      if (vLink) {
          vLink.className = "bd_open";
      }

      if (document.getElementById('afterBD2Expand')) {
          eval(document.getElementById('afterBD2Expand').value);
      }
   } else { //collapse
       vTR.style.display = 'none';

      if (vLink) {
          vLink.className = "bd_closed";
      }

      if (document.getElementById('afterBD2Collapse')) {
          eval(document.getElementById('afterBD2Collapse').value);
      }
   }
   repositionQuickView();
   if (document.getElementById(vCurrentValue + "recRow")) {
      if ($(document.getElementById(vCurrentValue + "0detail")).is(':visible')) {
          document.getElementById(vCurrentValue + "recRow").style.marginBottom = $(document.getElementById(vCurrentValue + "0detail")).css('height');
      } else {
          document.getElementById(vCurrentValue + "recRow").style.marginBottom = '0';
      }
      scrollBrowseRecordCount();
  }
}
function browseDetail(pNodeNumber) {
   var vCurrentValue = document.detailform.currentrecord.value;
   var vNode;
   var tmpEl;

   if (!document.getElementById(vCurrentValue + "0div")) {
       return;
   }

   if (document.getElementById(vCurrentValue + "0div").innerHTML == "") {
       insertHTML(vCurrentValue);
   }

   if (!document.getElementById(vCurrentValue + pNodeNumber + "detail")) {
       return;
   }

   //Don't show details that are suppressed by the user's preference
   if (document.getElementById(vCurrentValue + pNodeNumber + "td") && document.getElementById(vCurrentValue + pNodeNumber + "td").style.display == 'none') {
      gDetailsCounter++;
      return;
   }

   //expand
   if (document.getElementById(vCurrentValue + pNodeNumber + "detail").style.display == "none" || document.getElementById(vCurrentValue + "0detail").style.display == "none") {
      $(document.getElementById(browses + 'Fixed')).addClass('BrowseFixedHidden');

      document.getElementById(vCurrentValue + pNodeNumber + "div").style.display = "inline";
      document.getElementById(vCurrentValue + pNodeNumber + "detail").style.display = "";

      if (document.getElementById(vCurrentValue + "recRow")) {
          document.getElementById(vCurrentValue + "recRow").style.marginBottom = $(document.getElementById(vCurrentValue + "0detail")).css('height');
          scrollBrowseRecordCount();
      }

      if (document.getElementById(vCurrentValue + pNodeNumber + "img")) {
          document.getElementById(vCurrentValue + pNodeNumber + "img").className = "bd_open";
      }

      if (pNodeNumber!=0) {
         if (document.getElementById(vCurrentValue + "0detail").style.display == "none") {
            document.getElementById(vCurrentValue + "0div").style.display = "inline";
            document.getElementById(vCurrentValue + "0detail").style.display = "";
            if (document.getElementById(vCurrentValue + "0img")) {
                document.getElementById(vCurrentValue + "0img").className = "bd_open";
            }

            scrollToBottom();
            BRS(vCurrentValue);
         }

         if(document.getElementById(vCurrentValue + pNodeNumber + "div").innerHTML.length==0 || gAlwaysFetch==true) {
             getbrowseDetail(browseDetailsProc,pNodeNumber);
         } else {
             gDetailsCounter++;
         }

         if (gDetailsOpen.indexOf('*' + pNodeNumber + '*')==-1) {
             gDetailsOpen+='*' + pNodeNumber + '*';
         }

         if (gSavingDetails == false) {
            gSavingDetails = true;
            window.setTimeout(saveOpenDetails, 750);
         }
      } else {
         if (document.getElementById(vCurrentValue + "0div").innerHTML == "") {
             insertHTML(vCurrentValue);
         }

         document.getElementById(vCurrentValue + "0div").style.display = "inline";
         document.getElementById(vCurrentValue + "0detail").style.display = "";
         if (document.getElementById('largefont')){
         	document.getElementById(vCurrentValue + "0img").className = "bd_open";
         }
         else{
         	document.getElementById(vCurrentValue + "0img").className = "bd_open";
         }
         document.getElementById(vCurrentValue + "0img").focus();

         scrollToBottom();
         BRS(vCurrentValue);

         if (gDetailsOpen != '') {
            var vDetailsSplit = gDetailsOpen.split('**');
            for (var i=0; i<vDetailsSplit.length; i++) {
               vNode = vDetailsSplit[i].replace('*', '');
               vNode = vNode.replace('*', '');
               browseDetail(vNode);
            }
         } else {
            for (var i=1; i<=gOpenDetails; i++) {
               browseDetail(i);
            }
         }
      }
      gOpenRow = vCurrentValue;
      tmpEl = document.getElementById('OpenRow');
      if (tmpEl) {
          tmpEl.value = gOpenRow;
      }
   }
   //collapse
   else {
      if (pNodeNumber==0) {
         if (!document.getElementById(browses + 'QF') || document.getElementById(browses + 'QF').style.display == 'none') {
            $(document.getElementById(browses + 'Fixed')).removeClass('BrowseFixedHidden');
         }

         var i = 0, vNode = document.getElementById(vCurrentValue + i + "detail");
         while(vNode) {
            if (document.getElementById(vCurrentValue + i + "div").style.display != "none") {
               document.getElementById(vCurrentValue + i + "div").style.display = "none";
               document.getElementById(vCurrentValue + i + "detail").style.display = "none";

               if (document.getElementById(vCurrentValue + i + "img")) {
                   document.getElementById(vCurrentValue + i + "img").className = "bd_closed";
               }
            }
            vNode = document.getElementById(vCurrentValue + ++i + "detail");
         }

         gOpenRow = "";
         if (document.getElementById('OpenRow')) {
             document.getElementById('OpenRow').value='';
         }
      }
      else {
         document.getElementById(vCurrentValue + pNodeNumber + "div").style.display = "none";
         document.getElementById(vCurrentValue + pNodeNumber + "detail").style.display = "none";

         if (document.getElementById(vCurrentValue + pNodeNumber + "img")) {
            document.getElementById(vCurrentValue + pNodeNumber + "img").className = "bd_closed";
         }

         gDetailsOpen = gDetailsOpen.replace('*' + pNodeNumber + '*', "");
         if (gDetailsOpen == '') {
             gDetailsOpen = '*x*';
         }

         if (gSavingDetails == false) {
            gSavingDetails = true;
            window.setTimeout(saveOpenDetails, 750);
         }
      }
      if (document.getElementById(vCurrentValue + "recRow")) {
          if (pNodeNumber == "0") {
              document.getElementById(vCurrentValue + "recRow").style.marginBottom = "0";
          } else {
              document.getElementById(vCurrentValue + "recRow").style.marginBottom = $(document.getElementById(vCurrentValue + "0detail")).css('height');
          }
          scrollBrowseRecordCount();
      }
   }

   if (document.getElementById('OpenDetails')) {
       document.getElementById('OpenDetails').value=gDetailsOpen;
   }
}
function insertHTML(pCurrentValue) {
    var el = document.getElementById(pCurrentValue + "0div");
   if (!el) {
       return;
   }
   $(el).html(gDetailHTML.replace(/RecordId/g,pCurrentValue));
}
function applyFocus() {
    if (gIsIphone || gEnterField == '') {
        return;
    }
    var focusField = document.getElementById(gEnterField);

    if (!focusField ||
        focusField.style.display == "none" ||
        focusField.style.visiblity == "hidden" ||
        focusField.disabled) {
        return;
    }
    try {
        focusField.focus();
        if(focusField.type.toLowerCase() == 'text') {
            focusField.select();
        }
    } catch (ex) {};
}
function applyInitialFocus(){
    $(document.body).find('a,input,select').filter(':visible').eq(0).focus();
}
function dc(pParent,pNum,pClick) {
   if (pClick == null)
      pClick = false;
   displayChild(pParent,pNum,pClick);
}
function resizeFavMenu(){
    var tblFavoritesWrap = document.getElementById('tblFavoritesWrap');
    if (!tblFavoritesWrap || tblFavoritesWrap.getAttribute('sized') == 'true') {
        return;
    }
    tblFavoritesWrap.setAttribute('sized', 'true');
    var tblFavorites = $('#tblFavorites');
    var tableHeight = tblFavorites.height() || 20;
    var dFavoriteschild = $('#dFavoriteschild');

    var dFavBg = $('#dFavBg');
    var favFooter = $('#favFooter');
    var favHeader = $('#favHeader');
    var footerHeight = favFooter.height() || 0;
    var headerHeight = favHeader.height() || 0;
    if (tableHeight > 400) {
        tableHeight = 400;
        $(tblFavoritesWrap).css('height',tableHeight + "px");
        if (gIsIE) {
            $(tblFavoritesWrap).css('width','372px');
        }
    }
    dFavoriteschild.css('height',(tableHeight + footerHeight + headerHeight + 10) + 'px');
    dFavBg.css({'height':(dFavoriteschild.height() + 'px'),'width':(dFavoriteschild.width() + 'px')});
}
function displayChild(pParent,pNum,pClick) {
   try {
      if (gCodePopup && !gCodePopup.closed) {
          return;
      }
   }
   catch (ex) {};

   var vOffset = 0;
   var vParent = document.getElementById(pParent);
   var vChild;

   if (pClick == true && gShowParent == pParent) {
      hcd(pParent)
      return;
   }

   gShowParent = pParent;

   if (vParent.className == 'appButton') {
       vParent.className='appButtonHover';
   } else if (vParent.className == 'reportButton') {
       vParent.className='reportButtonH';
   }
   if (document.getElementById(pParent + "child")) {
      vChild = document.getElementById(pParent + "child");

      if (vChild.style.top == '' || vChild.style.left == '') {
         vChild.style.top = 1 + "px";
         vChild.style.left = 1 + "px";
      }

      if (vParent.className == 'appButtonHover') {
          vChild.className='appDiv';
      } else if (vParent.className == 'reportButtonH') {
          vChild.className='reportDiv';
      } else {
          vChild.className='trailDiv';
      }

      getOffsets(pParent);

      if (pNum == 0) {
          vChild.style.top = (gOffsetTop + 15) + "px";
      } else {
          vChild.style.top = (gOffsetTop + vParent.clientHeight) + "px";
      }

      if (gIsMoz) {
          vOffset = 17;
      } else if (gIsSafari || gIsChrome) {
          vOffset=15;
      }

      if (vParent.className != 'appButtonHover') {
          vOffset += 12;
      }

      if (vChild.className == 'reportDiv') {
          vChild.style.left = (gOffsetLeft + 97 - 250 + 1 - vOffset) + "px";
      } else if (pNum >= 10) {
          vChild.style.left = (gOffsetLeft + 81 - 250 + 1 - vOffset) + "px";
      } else {
          vChild.style.left = (gOffsetLeft - 1) + "px";
      }
   }
   if (pParent == 'dFavorites' && window.resizeFavMenu) {
       resizeFavMenu();
   }
}
function hideChild(pParent,pOverride) {
   if (pOverride) {
       gShowParent = pOverride;
   }

   if (!document.getElementById(pParent)) {
       pParent = "d" + pParent.substr(1,999);
   }

   if (gShowParent==pParent || !document.getElementById(pParent)) {
       return;
   }

   var vClassName = document.getElementById(pParent).className;

   if (vClassName == 'appButtonHover') {
       document.getElementById(pParent).className='appButton';
   } else if (vClassName == 'reportButtonH') {
       document.getElementById(pParent).className='reportButton';
   }
   if (document.getElementById(pParent + "child")) {
       document.getElementById(pParent + "child").className='appDivHidden';
   }
}
function hcd(pParent) {
   hideChildDelayed(pParent)
}
function hideChildDelayed(pParent) {
   gShowParent='';
   window.setTimeout(function(){hideChild(pParent)}, 400);
}
function appNav(pProgram,pWhereTo,pMenuId,pButtonID,pEntity,pHomePage,pOptions,pEnc) {
   try {
      if (gCodePopup && !gCodePopup.closed) {
          return;
      }
   }
   catch (ex) {}

   if (!pProgram || pProgram == '') {
       message('This option is currently unavailable\nand will be added in the future.');
       return;
   }

   if (pEnc!=undefined) {
       document.getElementById("rawprog").value = pProgram;
       document.getElementById("encprog").value = pEnc;
   }

   //Allows a non-popup edit screen (such as Report Config) to have the nav bar Back button check if values have been changed
   if (gCheckFields == true) {
      checkBack(function() {    //Pass a function to repeat appNav call, if validation is passed
        window.customBack = undefined;
        gCheckFields = false;
        appNav(pProgram, pWhereTo, pMenuId, pButtonID, pEntity, pHomePage, pOptions, pEnc);
      });

      if (gPassedCheck == false) {
          return;
      }
   }

   var vParent=gShowParent;
   gShowParent='';
   hideChild(vParent);

   if (pProgram.substring(0, 4) == 'http' || pProgram.substring(0, 14) == 'skydocredirect') {
      openNewWindow(pProgram,1024,768,1,"",0,1);
      return;
   }
   else if (typeof pOptions == 'object' && pOptions.newWindow === true) {   //currently on EA+
      var filterElementList = '',holdMenuId = '';          //need to account for unused menu ids (security level = 6)
      if (pMenuId != undefined) {
          holdMenuId = document.detailform.HomePageMenuID.value;
          document.detailform.HomePageMenuID.value = pMenuId;
      }
      if (document.detailform.filterElementList) {
          filterElementList = document.detailform.filterElementList.value;
          document.detailform.filterElementList.value = '';
      }      
      openNewWindow(pProgram,pOptions.width,pOptions.height);
      if (document.detailform.filterElementList) {
          document.detailform.filterElementList.value = filterElementList;
      }
      
      if (pMenuId != undefined) {
           document.detailform.HomePageMenuID.value = holdMenuId;
      }

      if ($openNavMenu != null) {
         hideNavMenu($openNavMenu);
      }
      return;
   }
   try {
       window.setTimeout(closeAllNavMenus, 100);
       if (pProgram != 'home') {
           if (gUpdateFavorites == true) {
               var vFavorite;
               if (pProgram.indexOf('?') == -1) {
                   vFavorite = pProgram + '?updateFavorites=yes';
                   document.navform.action = vFavorite;
               } else {
                   vFavorite = pProgram + '&updateFavorites=yes';
                   document.navform.action = vFavorite;
               }
           }
           else{
               document.navform.action = pProgram;
           }
       }
       if (pMenuId != undefined) {
           document.navform.HomePageMenuID.value = pMenuId;
       }
       if (pButtonID != undefined) {
           document.navform.ButtonID.value=pButtonID;
       }
       if (pEntity != undefined) {
           document.navform.entity.value = pEntity;
       }
       if (pHomePage != undefined) {
           document.navform.HomePage.value = pHomePage;
       }
       if (pWhereTo) {
           document.navform.whereto.value = pWhereTo;
       }

       changeCursor();
       showMessage('Please wait...', null, null, function(){
           displayLockDiv();

           document.navform.vProgramId.value = pProgram;
           document.navform.submit();
       });
   } catch(er) {}
}
function closeAllWindows() {
    if (gIsLoggingOut === true) {
        return;
    }
    gIsLoggingOut = true;
    try{
        var child = gCodePopup;
        if (child && !child.closed) {
            if (child.closeAllWindows) {
                child.closeAllWindows();
            }
            child.close(); // close popup
        }

        var parent = window.opener;
        if (parent && !parent.closed) {
            if ((parent.eaMenu && parent.eaMenu.dwd == document.detailform.dwd.value) ||
                (parent.document.detailform && parent.document.detailform.dwd && parent.document.detailform.dwd.value == document.detailform.dwd.value)) {
                if (parent.gIsLoggingOut == false) {
                    parent.gUsrIdle.trackIdleTime();
                }
                self.close(); // current window is popup
            }           
        }
    } catch(ex){}
}
function disableSelect(e) {
   var vOk = "input|textarea";

   if (gIsSafari || gIsChrome) {
       vOk += "|div";
   }
   if (!e) {
       var e = window.event;
   }

   if (e.srcElement) {
      if (!e.srcElement.type || vOk.indexOf(e.srcElement.type.toLowerCase()) == -1) {
          return false;
      }
   }
   else if (e.target && vOk.indexOf(e.target.tagName.toLowerCase()) == -1) {
       if (!e.target.id || e.target.id.substring(0,2) != "br") {
        return false;
       }
   }
}
function fixRowHeight() {
    var vElement, vElementFixed, height1, height2, diff, fixedDiv;

    if (gFixedRows == false) {
        gFixedRows = true;

        fixedDiv = $(document.getElementById(browses + 'Fixed'));
        $('tr', fixedDiv).eq(0).css('height', ($('tr', document.getElementById(browses + 'HeaderTable')).eq(0).height() + 'px'));
        fixedDiv.css('display', 'block');

        for (var i = 0; i < gRowHeight.length; i++) {
            vElementFixed = document.getElementById(gRowHeight[i] + "fixed");
            if (vElementFixed){
                if (gRowCssHeights[gRowHeight[i] + "fixed"]) {
                    vElementFixed.style.height = gRowCssHeights[gRowHeight[i] + "fixed"] + 'px';
                } else if (!gRowCssHeights[gRowHeight[i]]){
                     vElement = document.getElementById(gRowHeight[i]);
                     height1 = getElementHeight(vElementFixed);
                     height2 = getElementHeight(vElement);
                     gRowCssHeights[gRowHeight[i]] = height2;
                     if (height1 != height2) {
                         gFixRows[gFixRows.length] = gRowHeight[i];
                         vElementFixed.style.height = height2 + "px";
                         gRowCssHeights[gRowHeight[i] + "fixed"] = height2;
                         if (gIsIE) {
                             for (var j = 0; j < 3; j++) {
                                 height1 = getElementHeight(vElementFixed);
                                 diff = height2 - height1;
                                 if (diff != 0) {
                                    vElementFixed.style.height = (height2 + diff) + "px";
                                    gRowCssHeights[gRowHeight[i] + "fixed"] = (height2 + diff);
                                 } else {
                                     break;
                                 }
                             }
                         }
                     }
                }
            }
        }
    } else {
        for (var i = 0; i < gRowHeight.length; i++) {
            document.getElementById(gFixRows[i] + "fixed").style.height = document.getElementById(gFixRows[i]).style.height;
        }
    }
    fixBrowseColumnWidth();
}
function fixBrowseColumnWidth(){
    var isPopup = document.getElementById("isPopup");
    if ((!isPopup || (isPopup && isPopup.value == 'false')) && !gDetailsView) {
        $(document.getElementById(browses + 'HeaderTable')).find('colgroup').find('col').last().css('width', 'auto');
        $(document.getElementById(browses + 'BodyTable')).find('colgroup').find('col').last().css('width', 'auto');
    }
    var width = 0;
    var fixedColumns = $('> table col', document.getElementById(browses + 'Fixed')).length;
    if (fixedColumns > 0) {
        $('td', document.getElementById(browses + 'HeaderTable')).each(function(i){
            if (i < fixedColumns ){
                width += $(this).width() + (i == 0 ? 8 : 7);
            } else {
                return;
            }
        });
        $(document.getElementById(browses + 'Fixed')).css({'width': (width) + 'px'});
        $(document.getElementById(browses + 'BodyFixed')).css({'width': (width) + 'px'});
    }
}
function putFocus(pFieldId) {
   var fieldElement;
   if (gDispMsg==true) {
      gDispMsg=false;

      if (gIsIphone == false) {
          fieldElement = document.getElementById(pFieldId);
          try {
             if (fieldElement.disabled != true) {
                fieldElement.focus();
                if(fieldElement.type.toLowerCase() == 'text') {
                    fieldElement.select();
                }
             }
          }
          catch (er) {}
      }
      window.setTimeout(function(){resetMsg(pFieldId)}, 350);
   }
}
function resetMsg(pFieldId) {
   var fieldElement;
   if (gIsIphone == false) {
       fieldElement = document.getElementById(pFieldId);
       try {
          if (fieldElement.disabled != true) {
             fieldElement.focus();
             if(fieldElement.type.toLowerCase() == 'text') {
                 fieldElement.select();
             }
          }
       }
       catch (er) {}
   }
   gDispMsg = true;
}
function changeNote() {
    var gNoteCountXmlHttp = XmlHttp.create();
    if (gNoteCountXmlHttp) {
        var vParams = "requestAction=count" + buildFormData();
        gNoteCountXmlHttp.open("POST",'qnotehttp001.w',true);
        gNoteCountXmlHttp.onreadystatechange = function () {
            if (gAbortRequests) {
                return;
            }
            if (gNoteCountXmlHttp.readyState == 4 && gNoteCountXmlHttp.status == 200) {
                if (!gNoteCountXmlHttp.responseXML) {
                    return;
                }
                var myItems = gNoteCountXmlHttp.responseXML.getElementsByTagName("validation");
                var count = "";
                for (i=0; i < myItems.length; i++) {
                   count = getElementTextNS("", "validationmsg", myItems[i], 0);
                }
                if (count != "") {
                    if (parseInt(count, 10) > 0) {
                        $('#link_notes span.expandText').html('(' + count + ')');
                    } else {
                        $('#link_notes span.expandText').html('&nbsp;');
                    }
                }
            }
        }
        gNoteCountXmlHttp.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        if (gIsMoz || gIsIE) {
            gNoteCountXmlHttp.setRequestHeader("Connection", "close");
            gNoteCountXmlHttp.setRequestHeader("Content-length", vParams.length);
        }
        gNoteCountXmlHttp.send(vParams);
    }
}
function fa() {if (document.getElementById('buttonLoading')) {var vButton=document.getElementById('buttonLoading'); vButton.className='buttonLoadingb'; $(vButton).html('Loading.&nbsp;&nbsp;&nbsp;'); window.setTimeout(fb, 250);}}
function fb() {if (document.getElementById('buttonLoading')) {var vButton=document.getElementById('buttonLoading'); vButton.className='buttonLoadingc'; $(vButton).html('Loading..&nbsp;&nbsp;'); window.setTimeout(fc, 250);}}
function fc() {if (document.getElementById('buttonLoading')) {var vButton=document.getElementById('buttonLoading'); vButton.className='buttonLoadingd'; $(vButton).html('Loading...&nbsp;'); window.setTimeout(fd, 250);}}
function fd() {if (document.getElementById('buttonLoading')) {var vButton=document.getElementById('buttonLoading'); vButton.className='buttonLoadinga'; $(vButton).html('Loading....'); window.setTimeout(fa, 250); }}

function pInit(pMessage) {
   var dLoadingMsg = document.getElementById('dLoadingMsg');
   if (document.body.clientWidth > document.body.scrollWidth) {
       dLoadingMsg.style.width = document.body.clientWidth + "px";
   } else {
       dLoadingMsg.style.width = document.body.scrollWidth + "px";
   }
   if (document.body.clientHeight > document.body.scrollHeight) {
       dLoadingMsg.style.height = document.body.clientHeight + "px";
   } else {
       dLoadingMsg.style.height = document.body.scrollHeight + "px";
   }
   if (document.getElementById("loadingMsg2")) {
       pd(pMessage);
   }
}
function pa(pMessage) { if (gShowLoading == true) {$('#loadingMsg2').html(pMessage + '.&nbsp;&nbsp;&nbsp;'); window.setTimeout(function(){pb(pMessage)}, 300);} }
function pb(pMessage) { if (gShowLoading == true) {$('#loadingMsg2').html(pMessage + '..&nbsp;&nbsp;&nbsp;'); window.setTimeout(function(){pc(pMessage)}, 300);} }
function pc(pMessage) { if (gShowLoading == true) {$('#loadingMsg2').html(pMessage + '...&nbsp;&nbsp;&nbsp;'); window.setTimeout(function(){pd(pMessage)}, 300);} }
function pd(pMessage) { if (gShowLoading == true) {$('#loadingMsg2').html(pMessage + '....&nbsp;&nbsp;&nbsp;'); window.setTimeout(function(){pa(pMessage)}, 300);} }
function hideLoadingMsg() {
   var dLoadingMsg = document.getElementById('dLoadingMsg');
   gShowLoading = false;
   if (dLoadingMsg) {
       dLoadingMsg.style.display = 'none';
   }
}
function remColor(e) {
   if (!e) {
       var e = window.event;
   }
   var vObj = getElementForEvent(e);
   if (!vObj || vObj.readOnly) {
       return;
   }
   var origValue = vObj.origValue || vObj.getAttribute('origValue');
   if (origValue == null || typeof origValue == 'undefined') {
       origValue = '';
   }
   if (vObj.value == null|| typeof vObj.value == 'undefined') {
       vObj.value = '';
   }
   gFocus='^';
   if ((gDisplayColors || gHighlightChanges) && vObj.style) {
      if (hasAttribute(vObj,'noColor')) {
           return;
      } else if (vObj.className == 'button' || vObj.className == 'buttonDisabled') {
         vObj.style.backgroundColor = '';
         vObj.style.color = '';
      } else if (gHighlightChanges==false) {
          applyChangedState(vObj, 'reset');
      } else {
         if (vObj.type == 'checkbox') {
            if (origValue.toString() != vObj.checked.toString()) {
                applyChangedState(vObj, 'change');
            } else {
                applyChangedState(vObj, 'reset');
            }
         } else if (vObj.type == 'radio') {
            vObj.style.backgroundColor = "";
            window.setTimeout(checkRadios, 50);
         } else if (origValue != vObj.value && vObj.id != 'sFilterSelect' && vObj.id != 'sChartSelect') {
              if (vObj.id.match(/qf1|qf2/) !== null) {
                  applyChangedState(vObj, 'reset');
                  $(vObj).closest('td').css('background-color', gChangeColor);
                  $('~ a.qf', vObj).show();
              } else {
                  applyChangedState(vObj, 'change');
              }
         } else {
             applyChangedState(vObj, 'reset');
         }
      }
   }
}
function checkRadios() {
   var i, j, vObj, vElementsArray, formsLength;
   formsLength = document.forms.length;
   var origValue;

   for (i = 0; i < formsLength; i++) {
   	vElementsArray = document.forms[i].getElementsByTagName('input');
      for (j = 0; j < vElementsArray.length; j++) {
         vObj = vElementsArray[j];
         if (vObj.type == 'radio' && vObj.style.backgroundColor.toUpperCase() != gColor.toUpperCase()) {
             origValue = vObj.origValue || vObj.getAttribute('origValue ');
            if (origValue != vObj.checked && vObj.checked == true) {
                applyChangedState(vObj, 'change');
            } else {
                applyChangedState(vObj, 'reset');
            }
         }
      }
   }
}
function addColor(e) {
   if (!e) {
       var e = window.event;
   }
   var vObj = getElementForEvent(e);
   if (!vObj || vObj.readOnly) {
       return;
   }
   gFocus = vObj.id;
   if (hasAttribute(vObj, 'noColor') || vObj.readOnly) {
       return;
   } else if (gDisplayColors && vObj.style && !vObj.readOnly) {
      applyChangedState(vObj, 'focus');
      if (vObj.className == 'button' || vObj.id == 'bNewApplyFilter') {
          /* vObj.style.color = "#000000"; */
      } else if (vObj.className == 'buttonDisabled') {
          vObj.style.color = "#909090";
      }
   }
}
function loadColors() {
    $(document.body).on('focus', 'a,input:text,input:password,textarea', addColor)
                    .on('blur', 'a,input:text,input:password,textarea', remColor);
}
function applyChangedState(pElement, pState){
    var vElement = $(pElement);
    if (vElement.length === 0 || vElement.is('select')) {
        return;
    }
    var changedId = ' hValueChanged';
    var re = new RegExp(changedId,"g");
    var labeledBy = (vElement.attr('aria-labelledby') || '').replace(re, '');
    switch (pState) {
    case "change" :
        if (!vElement.is(':radio,:checkbox')) {
            vElement.css({
                'background-color' : gChangeColor,
                'outline' : '1px solid ' + vElement.css('borderTop-color')
            });
        }
        vElement.attr('aria-labelledby', labeledBy + changedId);
        break;
    case "focus" :
        vElement.css({
            'background-color' : gColor
        });
        break;
    case "reset" :
        vElement.css({
            'background-color' : '',
            'outline' : ''
        });
        vElement.attr('aria-labelledby', labeledBy);
        break;
    }
}
function atchColor(vObj) {
    if (!vObj) {
        return;
    }
    if (vObj.type != 'select-one' && !hasAttribute(vObj,'noColor')) {
        addEvent(vObj, "focus", addColor);
    }
    if ((!gIsIE || (gIsIE && vObj.type != 'select-one')) && !hasAttribute(vObj,'noColor')) {
        addEvent(vObj, "blur", remColor);
    }
}
function checkEntity() {
   if (document.getElementById('cEntityTemplate').checked == true && document.getElementById('cAllowShare')) {
       document.getElementById('cAllowShare').checked = false;
   }
}
function checkDistrict() {
   if (document.getElementById('cAllowShare') && document.getElementById('cAllowShare').checked == true){
     if(document.getElementById('HomePage').value == 'sephom01.w' || document.getElementById('HomePage').value == 'ssmhom01.w') {
       if (window.customDistrictShareMsg)
           customDistrictShareMsg();
       else
           message("When sharing a template with all users in the district, it is important that entity specific parameters are not used.");
     }

     if (document.getElementById('cEntityTemplate')) {
       document.getElementById('cEntityTemplate').checked = false;
     }
   }
}
function openExcel(pFileId,pDuserId) {
   $("#excelDiv").html("<table><tr valign='bottom'><td>&nbsp;Export complete.&nbsp;</td><td><a class='button' role='button' name='bCancel' id='bCancel' tabIndex='1' href='javascript:self.close();'>Back</a></td></tr></table>");
   document.excelForm.submit();
}
function openUserPrefs() {
   openNewWindow('qprefedit001.w',725,550,1,'');
}
function openLoginHistory() {
   openNewWindow('qlognbrws001.w',1024,635,1,'');
}
function getOffsets(pField) {
   var vOffsetTrail = document.getElementById(pField);
   gOffsetTop=0;
   gOffsetLeft=0;

   while (vOffsetTrail){
      try {
         //IE doesn't take into account fieldset border properly
         if (vOffsetTrail.tagName && vOffsetTrail.tagName.toLowerCase() == 'fieldset' && gIsIE == true) {
             gOffsetLeft+=2;
         }
      }
      catch(er) {}

      gOffsetTop  += vOffsetTrail.offsetTop;
      gOffsetLeft += vOffsetTrail.offsetLeft;
      vOffsetTrail = vOffsetTrail.offsetParent;
   }
}
function message(pMessage,pTitle,pTime,pWidth,pHeight,pLabel1,pAction1,pLabel2,pAction2,pLabel3,pAction3) {
    var msgBtn1 = $("#msgBtn1");
    if (msgBtn1.length === 0) {
        alert(pMessage.replace(/<br>/gim,"\n").replace(/<br \/>/gim,"\n"));
        return;
    }
    try {
        window.clearTimeout(gTimeoutMessage);
        window.clearTimeout(gTimeoutLockdiv);
    } catch(er) {}

    pMessage = pMessage.replace(/\n/gi, "<br />");
    if (pTime && pTime > 0) {
        if (!pTitle || pTitle == '') {
            pTitle = null;
        }
        showMessage(pMessage, true, {'delay':pTime,'title':pTitle});
        return;
    }

    gPreventTab = true;        
    var dMessage = document.getElementById("dMessage");    

    if (!dMessage) {
        return;
    }

    if (!pTitle || pTitle == ''){pTitle = "Skyward";}
    $("#msgTitle").html(pTitle);

    if (!pLabel1) {
        pLabel1 = "OK";
        pAction1 = "";
    }
    else if (pLabel1 == 'Ok') {
        pLabel1 = 'OK';
    }

    var msgBodyTable = document.getElementById("msgBodyTable");
    var msgWrapper = document.createElement('div');
    var windowSize = getWindowSize();

    if (pWidth == "auto") {
        msgBodyTable.style.width = "";
        if (gIsSafari) {
            msgWrapper.style.width = "";
        }
    }
    else {
        if (!pWidth || pWidth == 0){pWidth = 350;}
        if (pWidth + 40 > windowSize.width) {
            pWidth = windowSize.width - 40;
        } else if (pWidth < 100) {
            pWidth = 100;
        }
        if (isNaN(pWidth) || pWidth < 0) {
            pWidth = 350;
        }
        msgBodyTable.style.width = pWidth + "px";
        if (gIsSafari) {
            msgWrapper.style.width = pWidth + "px";
        }
    }

    dMessage.style.top = -1000;
    $(msgWrapper).html(pMessage);
    msgWrapper.style.padding = '5px';
    var msgBodyCol = document.getElementById("msgBodyCol");
    $(msgBodyCol).html("");
    msgBodyCol.appendChild(msgWrapper);
    
    fixIEFieldsets(msgBodyCol);
    
    dMessage.style.display = '';
    setOpacity("dMessage", 0);

    var msgPrint = document.getElementById("msgPrint");
    if (!msgPrint) {
        msgPrint = document.createElement('div');
        msgPrint.id = 'msgPrint';
        msgPrint.setAttribute('aria-label', 'Screenshot');
        msgPrint.setAttribute('tabindex', '0');
		msgBodyTable.appendChild(msgPrint);
        addEvent(msgPrint, 'click', captureScreen);
		addEvent(msgPrint, 'keyup', function(e) {
			if (e.keyCode === 13)
				captureScreen();
		});
    }

    if (pHeight == "auto") {
        msgWrapper.style.height = "";
        msgWrapper.style.overflowY = "auto";
    }
    else {
        if (!pHeight || pHeight == 0){
            pHeight = getElementHeight(msgWrapper);
            if (pHeight < 50) {
                pHeight = 50;
            }
        
            //prevent scrolling in IE
            if (gIsIE)
                pHeight += 10;
        }
        if (pHeight + 115 > windowSize.height) {
            pHeight = windowSize.height - 115;
            msgWrapper.style.overflowY = "scroll";
        } else if (pHeight < 20) {
            pHeight = 20;
        }
        
        if (isNaN(pHeight) || pHeight < 0) {
            pHeight = 50;
        }
        
        msgWrapper.style.height = pHeight + "px";
        msgWrapper.style.overflowY = "auto";
        if (gIsSafari)
            msgWrapper.style.height = pHeight + "px";
    }

    dMessage.style.bottom = "";
    dMessage.style.right = "";

    if (pLabel1 == 'Display Report') {
        msgBtn1.css({width:'200px','font-weight':'bold'});
    } else {
        msgBtn1.css({width:'100px','font-weight':'normal'});
    }
    setButtonDisplay(msgBtn1, pAction1, pLabel1);

    var msgBtn2 = $("#msgBtn2");
    if (pLabel2 != null && pLabel2 != "") {
        setButtonDisplay(msgBtn2, pAction2, pLabel2);
        //align the buttons
        if (pLabel3 != null && pLabel3 != "") {
            msgBtn2.parent().css('float', 'left');
        } else {
            msgBtn2.parent().css('float', 'right');
        }
    } else {
        msgBtn2.hide();
    }

    var msgBtn3 = $("#msgBtn3");
    if (pLabel3 != null && pLabel3 != "") {
        setButtonDisplay(msgBtn3, pAction3, pLabel3);
    } else {
        msgBtn3.hide();
    }

    var tabList="";
    $('#dMessage').find('input,select,textarea,a').filter(':visible').each(function() {
       if (this.id && this.id != "") {
           tabList += (this.id + "|");
       }
    });
    $('#dMessage').data('tabids',tabList + 'msgPrint');

    displayLockDiv();
    centerFilter("dMessage")
    if (!gIsIphone) {
        resetMsg('msgBtn1');
    }

    function setButtonDisplay(pButton, pAction, pLabel){
        pButton.off('click');
        if (typeof pAction === 'function') {
            pButton.attr('href',"javascript:void(0)").on('click', function (){
                if (cbs(pButton.attr('id'))) {
                    pAction();
                    closeMessage(false);
                }
            });
        } else {
            if (pAction.indexOf(';') == -1 && pAction != '') {
                pAction += ";";
            }
            if (pAction.indexOf("closeMessage")==-1) {
                pAction = "closeMessage(false); " + pAction;
            }
            //this MUST be here to prevent issues like navigating to the javascript in the button's href!
            if (pAction != '') {
                pAction += " cancelEvent();";
            }
            pButton.attr('href',"javascript:if (cbs('" + pButton.attr('id') + "')) {" + pAction + "}");
        }
        pButton.html(pLabel + "&nbsp;");
        pButton.show();
    }
}
function getScrollXY() {
  return { 'x' : getScrollX(),'y' : getScrollY() };
}
function getScrollX(){
    var offset;
    if( typeof( window.pageXOffset ) == 'number' ) {
        offset = window.pageXOffset;
    } else if( document.body && ( document.body.scrollLeft || document.body.scrollTop ) ) {
        offset = document.body.scrollLeft;
    } else if( document.documentElement && ( document.documentElement.scrollLeft || document.documentElement.scrollTop ) ) {
        offset = document.documentElement.scrollLeft;
    } else {
        offset = 0;
    }
    if (typeof offset !== 'number' || isNaN(offset) || offset < 0) {
        offset = 0;
    }
    return offset;
}
function getScrollY(){
    var offset;
    if( typeof( window.pageYOffset ) == 'number' ) {
        offset = window.pageYOffset;
    } else if( document.body && ( document.body.scrollLeft || document.body.scrollTop ) ) {
        offset = document.body.scrollTop;
    } else if( document.documentElement && ( document.documentElement.scrollLeft || document.documentElement.scrollTop ) ) {
        offset = document.documentElement.scrollTop;
    } else {
        offset = 0;
    }
    if (typeof offset !== 'number' || isNaN(offset) || offset < 0) {
        offset = 0;
    }
    return offset;
}
function getScrollbarWidth() {
    if (window.gScrollbarWidth) {
        return window.gScrollbarWidth;
    } else {
        var scrollDiv = document.createElement("div");
        scrollDiv.className = "scrollbar-measure";
        document.body.appendChild(scrollDiv);
        var scrollbarWidth = scrollDiv.offsetWidth - scrollDiv.clientWidth;
        $(scrollDiv).remove();
        window.gScrollbarWidth = scrollbarWidth;
    	return scrollbarWidth;
    }
}
function fixEncoding(pString){
    var vFixedString;
    try { // If the string is UTF-8, this will work and not throw an error.
        vFixedString = decodeURIComponent(escape(pString));
    } catch(ex) { // If it isn't, an error will be thrown, and we can asume that we have an ISO string.
        vFixedString = pString;
    }
    return vFixedString;
}
function printMessage(pMessage,pTitle,pLabel1,pAction1,pLabel2,pAction2,pRefreshScreen) {
   var msgBtn1 = document.getElementById("printMsgBtn1");
   var msgBtn2, msgBodyCol, msgTitle, msgBodyTable, dMessage, isVisible, vWidth;
   gDisplayColors = false;

   if (!msgBtn1) {
      return;
   }

   try {
       window.clearTimeout(gTimeoutMessage);
       window.clearTimeout(gTimeoutLockdiv);
   }
   catch(er) {}

   pMessage = fixEncoding(pMessage);

   gPreventTab = true;
   msgBtn2 = document.getElementById("printMsgBtn2");
   msgBodyCol = document.getElementById("printMsgBodyCol");
   msgTitle = document.getElementById("printMsgTitle");
   msgBodyTable = document.getElementById("printMsgBodyTable");
   dMessage = document.getElementById("dPrintMessage");
   if (!dMessage) {
       return;
   }

   if ($(dMessage).is(':visible')) {
       isVisible = true;
   } else {
       isVisible = false;
   }

   if (!pTitle || pTitle == ''){pTitle = "Skyward";}
   if (!pLabel1) {
      pLabel1 = "OK";
      pAction1 = "";
   }

   if (pLabel1=='Ok')
       pLabel1 = 'OK';

   var vExp = new RegExp("\n", "gi");
   pMessage=pMessage.replace(vExp, "<br>");
   if (pMessage.split(String.fromCharCode(21)).length > 1) {
       pMessage = pMessage.split(String.fromCharCode(21))[1];
   }
   if (pMessage.split(String.fromCharCode(22)).length > 1) {
       pMessage = pMessage.split(String.fromCharCode(22))[1];
   }
   if (pMessage.split(String.fromCharCode(23)).length > 1) {
       pMessage = pMessage.split(String.fromCharCode(23))[1];
   }

   vWidth = Math.min(getWindowWidth() - 4, 370);

   if (gIsSafari) {
       $(msgBodyCol).html("<div style='overflow:auto; min-height:75px;width:" + (vWidth - 12) + "px;'>" + pMessage + "</div>");
   } else {
       $(msgBodyCol).html("<div style='overflow-y:scroll;min-height:75px;width:" + (vWidth - 12) + "px;'>" + pMessage + "</div>");
   }

   $(msgBodyCol).find('td.qploading').html('<br /><br /><br /><br />');

   if (gIsIE && brws.version < 11) {
       $(msgBodyCol).slideDown(reflowPage);
   } else {
       $(msgBodyCol).slideDown();
   }

   $(msgTitle).html(pTitle);
   msgBodyTable.style.width = vWidth + "px";
   if (!isVisible) {
       dMessage.style.top = 0;
       dMessage.style.display='';
       dMessage.style.visibility='visible';
       setOpacity("dMessage",100);
   }

   if (pAction1.indexOf(';') == -1 && pAction1 != '') {
       pAction1 += ";";
   }

   if (pAction1.indexOf("closeMessage")==-1) {
       pAction1 = "closeMessage(false, 'dPrintMessage'); " + pAction1;
   }

   if (pAction1.indexOf("cancelCheckQueue")==-1) {
       pAction1 = "vQPSetup.cancelCheckQueue(); " + pAction1;
   }

   if (pRefreshScreen == true && pAction1.indexOf("refreshParent")==-1) {
       pAction1 += " refreshParent();";
   }

   //this MUST be here to prevent issues like navigating to the javascript in the button's href!
   if (pAction1 != '') {
       pAction1 += " cancelEvent();";
   }

   if (msgBtn1.innerHTML != pLabel1)
       $(msgBtn1).html(pLabel1);

   if (pAction1.indexOf("message(") >= 0) {
       msgBtn1.style.display='none';
   } else {
       if(document.getElementById("IsMobile") && document.getElementById("IsMobile").value == "true"){
           msgBtn1.setAttribute("onClick","javascript:if (cbs('printMsgBtn1')) {" + pAction1 + "}");
           msgBtn1.setAttribute("width","100px");
       }
       //href needs to be output for mobile and normal buttons so that the print queue title link works
       $("#printMsgBtn1").attr("href","javascript:if (cbs('printMsgBtn1')) {" + pAction1 + "}")

       msgBtn1.style.display='';
       /* this will automatically click the button to view the result
       if (pLabel1.match(/view/i) != null) {
           eval(msgBtn1.href.replace(/%20/g,' '));
       }
       */

   }

   if (gIsIphone == false && pLabel1 == 'View Report') {
       window.setTimeout(function(){resetMsg('printMsgBtn1')}, 25);
   }

   if (pLabel2!= null && pLabel2 != "") {
      if (pAction2.indexOf(';') == -1 && pAction2 != '') {
          pAction2 += ";";
      }

      if (pAction2.indexOf("closeMessage")==-1) {
          pAction2 = "closeMessage(false, 'dPrintMessage'); " + pAction2;
      }

      if (pRefreshScreen == true && pAction2.indexOf("refreshParent")==-1) {
          pAction2 += " refreshParent();";
      }

      //this MUST be here to prevent issues like navigating to the javascript in the button's href!
      if (pAction2 != '') {
          pAction2 += " cancelEvent();";
      }

      if (msgBtn2.innerHTML != pLabel2)
          $(msgBtn2).html(pLabel2);
          if(document.getElementById("IsMobile") && document.getElementById("IsMobile").value == "true"){
              msgBtn2.setAttribute("onClick", "javascript:if (cbs('printMsgBtn2')) {" + pAction2 + "}");
          }else{
              msgBtn2.href = "javascript:if (cbs('printMsgBtn2')) {" + pAction2 + "}";
          }
          msgBtn2.style.display='';

   } else {
       msgBtn2.style.display='none';
   }
   if (!isVisible) {
       centerFilter("dPrintMessage")
       displayLockDiv();
   }
}

function dimMessage(pId, pOpacity, pTo, pStep) {
  var vDelay=10;

  if (pId == null || !document.getElementById(pId)) {
      pId='dMessage';
  }
  if (pOpacity == null) {
      pOpacity='90';
  }
  if (pTo == null) {
      pTo='0';
  }
  if (pStep == null) {
      pStep=2;
  }
  if (document.getElementById(pId).style.display == 'none') {
      return;
  }
  if (pTo > 0 && pOpacity < pTo) {
      pOpacity+=pStep;
      setOpacity(pId,pOpacity);
      window.setTimeout(function(){dimMessage(pId, pOpacity, pTo, pStep)}, vDelay);
  }
  else if (pTo == 0 && pOpacity > 0) {
      pOpacity -= pStep;
      setOpacity(pId,pOpacity);
      window.setTimeout(function(){dimMessage(pId, pOpacity, pTo, pStep)}, vDelay);
  }
  else if (pTo == 0) {
      closeMessage(true, pId);
  }
}
function closeMessage(pClearTimeout, pId) {
   unChangeCursor();
   if (!pId) {
       pId = "dMessage";
   }

   document.getElementById(pId).style.display='none';

   if (pClearTimeout == null) {
       pClearTimeout = false;
   }

   try {
       if (pClearTimeout == true) {
           window.clearTimeout(gMessageId);
       }
   }
   catch(er) {}

   if (pId=='dMessage')
       window.setTimeout(resetPreventTab, 500);

   if (pId != 'lockDiv' && (!document.getElementById('hFilterOpen') || document.getElementById('hFilterOpen').value != 'open')) {
       hideLockDiv();
   }
}
function resetPreventTab() {
    gPreventTab = false;
}
function closeMessagex() {
   //dummy function
}
function hButton(pId) {
  document.getElementById(pId).className='msgButtonH';
}
function unhButton(pId) {
  document.getElementById(pId).className='msgButton';
}
function setOpacity(pId,pOpacity) {
    if ((gIsIE && brws.version < 11) && pId == 'quickPrintDiv') {
       return;
    }
    if (pOpacity < 0) {
        pOpacity = 0;
    } else if (pOpacity > 100) {
        pOpacity=100;
    }
    if (pOpacity > 1) {
        pOpacity = pOpacity / 100;
    }
    $(document.getElementById(pId)).css('opacity', pOpacity);
}
function showMessage(pMessage, autoHide, opts, callback, fromTimeout) {
    if (document.getElementById('brLoading')) {
        if (typeof callback == 'function') {
            callback();
        }
        return;
    }
    if (!fromTimeout && !autoHide) {
        gMessageCount++;
    }
    if (!isDOMReady) {
        setTimer('showMessage', function(){
          showMessage(pMessage, autoHide, opts, callback, true);
        }, 100);
        return;
    }
    clearTimer('showMessage');
    if (!autoHide) {
        var autoHide = false;
    }

    if (!pMessage) {
        var pMessage = "Please wait...";
    }
    if (!opts) {
        var opts = {};
    }

    var noticeArgs = {
            pnotify_text: pMessage.replace(/'/g, "\'"),
            pnotify_opacity: .9,
            pnotify_delay : 2500,
            pnotify_hide: true,
            pnotify_width:'250px',
            pnotify_closer: false,
            pnotify_remove : true,
            pnotify_animation : "slide",
            pnotify_animate_speed : "fast",
            pnotify_history : false,
            pnotify_mouse_reset: false,
            pnotify_stack: gNotifyMessage.stack,
            pnotify_after_open : callback
        }
    if (gIsSafari && gIsMobile) {
        noticeArgs.pnotify_animation = 'none';
    }
    if (autoHide){
        if (opts.delay) {
            noticeArgs.pnotify_delay = opts.delay;
        }
        if (opts.title) {
            noticeArgs.pnotify_title = opts.title;
        }
        if (opts.width) {
            noticeArgs.pnotify_width = opts.width;
        }
        $.pnotify(noticeArgs);
    } else {
       if (gNotifyMessage.div) {
           $('div.ui-pnotify-text', gNotifyMessage.div).html(pMessage.replace(/'/g, "\'"));
           if (gNotifyMessage.div.is(':not(:visible)')) {
               gNotifyMessage.div.opts.pnotify_after_open = callback;
               gNotifyMessage.div.pnotify_display();
           } else if (callback) {
               callback();
           }
       } else {
           noticeArgs.pnotify_remove = false;
           noticeArgs.pnotify_hide = false;
           noticeArgs.pnotify_delay = 0;
           gNotifyMessage.div = $.pnotify(noticeArgs);
           gNotifyMessage.div.attr('role','status');
           window.setTimeout(function(){
               gNotifyMessage.div.html(gNotifyMessage.div.html());
           }, 300);
       }
       if (gIsSafari && gIsMobile) {
           gNotifyMessage.div.css('position', 'absolute');
           gNotifyMessage.div.css('bottom', 'auto');
           gNotifyMessage.div.css('height', '26px');
           gNotifyMessage.div.css('top', (screen.height + $(window).scrollTop()  - 15) + 'px');
       }

    }
}
function hideMessage(fromTimeout,delay) {
   if (document.getElementById('brLoading')) {
       return;
   }
   if(!delay)delay=1000;
   if (!fromTimeout) {
       gMessageCount--;
   }
   if (!isDOMReady || gTimer['showMessage']) {
       setTimer('hideMessage', function(){
         hideMessage(true);
       }, 100);
       return;
   }
   clearTimer('hideMessage');
   if (gMessageCount > 0) {
       return;
   }
   gMessageCount = 0;
   unChangeCursor();
   if (gNotifyMessage.div) {
       doHide();
   } else if (jQuery.fx.off) {
       window.setTimeout(doHide, 200);
   }
   function doHide(){
       if (gNotifyMessage.div) {
           window.clearTimeout(gNotifyMessage.timer);
           gNotifyMessage.timer = window.setTimeout(function(){
               if (!gNotifyMessage) {
                   return;
               }

               if (gNotifyMessage.timer) {
                   window.clearTimeout(gNotifyMessage.timer);
                   gNotifyMessage.timer = null;
               }
               if (gNotifyMessage.div) {
                   gNotifyMessage.div.pnotify_remove();
               }
           }, delay);
        }
   }
}
function setMouseStart(e,pId) {
   if (pId) {
       gFilter=pId;
   } else {
       gFilter = "filterDiv";
   }
   if (!e) {
       var e = window.event;
   }

   gFilterLeft = document.getElementById(gFilter).style.left;
   gFilterTop = document.getElementById(gFilter).style.top;

  if (gIsIE == true) {
    gMouseLeft = e.clientX + getScrollX();
    gMouseTop = e.clientY + getScrollY();
  } else {
    gMouseLeft = e.pageX;
    gMouseTop = e.pageY;
  }
}
function clearSelections(){
    try {
        if (window.getSelection){
            if(gIsSafari){
                window.getSelection().collapse();
            } else {
                window.getSelection().removeAllRanges();
            }
        } else if (document.selection){
            if (document.selection.empty){
                document.selection.empty();
            } else if (document.selection.clear){
                document.selection.clear();
            }
        }
    } catch (ex){}
}
function trackMouse(e) {
   gUsrIdle.clearIdle();
   if (!e) {
       var e = window.event;
   }
   if (gFilter != "") {
       var vFilter = document.getElementById(gFilter);
       if (!vFilter) {
           return;
       }
       var vLeft, vTop;
      if (gIsIE == true) {
         vLeft = e.clientX - gMouseLeft + parseInt(gFilterLeft, 10) + getScrollX();
         vTop = e.clientY - gMouseTop + parseInt(gFilterTop, 10) + getScrollY();
      }
      else {
         vLeft = e.pageX - gMouseLeft + parseInt(gFilterLeft, 10);
         vTop = e.pageY - gMouseTop + parseInt(gFilterTop, 10);
      }
      clearSelections();
      if (window.trackMouseLeft) {
          vLeft = trackMouseLeft(vLeft);
      }
      if (window.trackMouseTop) {
          vTop = trackMouseTop(vTop);
      }
      vFilter.style.left= vLeft + 'px';
      vFilter.style.top= vTop + 'px';
      setLockDivSize();
   }
}
function buildOpenClosed() {
   var vCurrentValue = document.detailform.currentrecord.value;
   var vNode;
   var vNodeLevel;
   var vNodeNumber;
   var vId;

   try {
      var vNodes = document.getElementById(vCurrentValue + "0div").getElementsByTagName("A");

      gClosedList='';
      gOpenList='';
      gBrowseScroll = $('#browseWrap .BrowseDiv').scrollTop();
      for (var i=0; i < vNodes.length; i++) {
         if (vNodes[i].href.indexOf("BD2") != -1) {
            vNode = vNodes[i].href.replace(/javascript:BD2\(/gi,"").replace(/\)/gi,"").replace(/\;/gi,"");
            vNodeLevel   = vNode.split(",")[0].replace(/'/gi,"");
            vNodeNumber  = vNode.split(",")[1].replace(/'/gi,"");
            vId = vCurrentValue + vNodeLevel + "," + vNodeNumber + "subdetail";

            if (document.getElementById(vId) && document.getElementById(vId).style.display == "none") {
                gClosedList += vNodeLevel + "," + vNodeNumber + ";";
            } else {
                gOpenList += vNodeLevel + "," + vNodeNumber + ";";
            }
         }
      }
   }
   catch (er) {}
}
function applyOpenClosed() {
   var vCurrentValue = document.detailform.currentrecord.value;
   var vNodeLevel;
   var vNodeNumber;
   var vId;

   var vProcessList = gClosedList.split(";");
   for (var i=0; i < vProcessList.length; i++) {
      vNodeLevel  = vProcessList[i].split(",")[0];
      vNodeNumber = vProcessList[i].split(",")[1];
      vId = vCurrentValue + vNodeLevel + "," + vNodeNumber + "subdetail";

      if (document.getElementById(vId) && document.getElementById(vId).style.display != "none" && gClosedList.indexOf(vNodeLevel + "," + vNodeNumber + ";")>=0) {
          BD2(vNodeLevel,vNodeNumber);
      }
   }

   var vProcessList = gOpenList.split(";");
   for (var i=0; i < vProcessList.length; i++) {
      vNodeLevel  = vProcessList[i].split(",")[0];
      vNodeNumber = vProcessList[i].split(",")[1];
      vId = vCurrentValue + vNodeLevel + "," + vNodeNumber + "subdetail";

      if (document.getElementById(vId) && document.getElementById(vId).style.display == "none" && gOpenList.indexOf(vNodeLevel + "," + vNodeNumber + ";")>=0) {
          BD2(vNodeLevel,vNodeNumber);
      }
   }

   if (document.getElementById('afterApplyOpenClosed')) {
       eval(document.getElementById('afterApplyOpenClosed').value);
   }

   repositionQuickView();

   if (gBrowseScroll != $('#browseWrap .BrowseDiv').scrollTop()) {
       $('#browseWrap .BrowseDiv').scrollTop(gBrowseScroll);
   }
}
function addFavorite() {
   gShowParent='';
   hideChild('tFavorites');
   openNewWindow("qfavredit001.w",615,165,1,"add")
}
function editFavorites() {
   gShowParent='';
   hideChild('tFavorites');
   openNewWindow("qfavredit002.w",1000,400,1,"editFav")
}
function openFavorite(pProgram,pWhereTo,pMenuId,pButtonId,pEntity,pHomePage,pEnc) {
   gShowParent='';
   gUpdateFavorites = true;
   hideChild('tFavorites');
   aN(pProgram,pEnc,pWhereTo,pMenuId,pButtonId,pEntity,pHomePage);
}
function openCAI(vMenuID,vVersion){
   var vLink = 'https://www.skyward.com/Company/CFReleaseNotes.aspx?MenuID=' + vMenuID + '&Version=' + vVersion;
   window.open(vLink,"skyNotes","status=1,location=0,menubar=1,resizable=1,scrollbars=1");
}
function openSkyportFavorite(pProgram,pWhereTo,pMenuId,pButtonId,pEntity,pHomePage,pEnc) {
   var vURL;
   var vOldVals = [];
   var vNameVal;

   if ($openNavMenu != null) {
       hideNavMenu($openNavMenu);
   }

   if (pEnc!=undefined) {
       document.getElementById("rawprog").value = pProgram;
       document.getElementById("encprog").value = pEnc;
   }

   if (pProgram.indexOf('?') == -1) {
       vURL = pProgram + "?whereto=" + pWhereTo + "&updateFavorites=yes";
   } else {
       /* if the querystring contains fields that exist in the detail form, update the form values and remove them from the querystring */
       var vParams = pProgram.split("?")[1].split("&");
       for (var i = vParams.length - 1; i >= 0; i--) {
           vNameVal = vParams[i].split("=");
           if (vNameVal.length === 2) {
               if (document.detailform[vNameVal[0]]) {
                    vOldVals.push(vNameVal[0] + "=" + document.detailform[vNameVal[0]].value); /* retain the value so it can be set back after the new window is opened */
                    document.detailform[vNameVal[0]].value = vNameVal[1];
                    vParams.splice(i,1);
               }
           }
        }
       /* add the fields to the querystring that didn't exist in the form */
        vURL = pProgram.split("?")[0] + "?whereto=" + pWhereTo + "&updateFavorites=yes&" + vParams.join("&");
   }

   /*Store current values*/
   var oldnoheader = document.detailform.noheader.value;
   var oldMenuID = document.detailform.HomePageMenuID.value;
   var oldSecMenuID = document.detailform.SecurityMenuID.value;
   var oldHomePage = document.detailform.HomePage.value;
   var oldEntity = document.detailform.entity.value;
   var oldButtonID = "";
   if (document.detailform.ButtonID) {
       oldButtonID = document.detailform.ButtonID.value;
   } else {
       $("<input type='hidden' id='ButtonID' name='ButtonID' value='' />").appendTo(document.detailform);
   }

   /*Set new values*/
   document.detailform.noheader.value='';
   document.detailform.HomePageMenuID.value=pMenuId;
   document.detailform.SecurityMenuID.value=pMenuId;
   document.detailform.HomePage.value=pHomePage;
   document.detailform.entity.value=pEntity;
   document.detailform.ButtonID.value=pButtonId;

   openNewWindow(vURL,1024,768,1,'',0,2);

   /*Restore previous values*/
   document.detailform.noheader.value = oldnoheader;
   document.detailform.HomePageMenuID.value = oldMenuID;
   document.detailform.SecurityMenuID.value = oldSecMenuID;
   document.detailform.HomePage.value = oldHomePage;
   document.detailform.entity.value = oldEntity;
   document.detailform.ButtonID.value = oldButtonID;

   /* reset values that were modified from the querystring */
   for (var i = 0; i < vOldVals.length; i++) {
       vNameVal = vOldVals[i].split("=");
       if (document.detailform[vNameVal[0]]) {
            document.detailform[vNameVal[0]].value = vNameVal[1];
       }
   }

   gShowParent='';
   hideChild('tFavorites');
}
function mobileFavorite(pAction, pMobileId) {
   if (pAction == 'removeFavorite' || pAction == 'removeEmpFavorite' || pAction == 'removeStuFavorite') {
       if (pAction != 'removeFavorite') {
           $("#mFav").html("<img src='/webspeed/fav4.png' width='18px' height='17px' />");
       }
       if (pAction == 'removeEmpFavorite') {
           document.getElementById("mFav").href = document.getElementById("mFav").href.replace('removeEmpFavorite', 'saveEmpFavorite');
       }
       else if (pAction == 'removeStuFavorite') {
           document.getElementById("mFav").href = document.getElementById("mFav").href.replace('removeStuFavorite', 'saveStuFavorite');
           $("#mFavText").html("Save Student");
       }
       else{
           $("#mFav").html("Add Favorite");
           document.getElementById("mFav").href = document.getElementById("mFav").href.replace('removeFavorite', 'saveFavorite');
       }
   }
   else {
       if (pAction != 'saveFavorite') {
           $("#mFav").html("<img src='/webspeed/fav3.png' width='18px' height='17px' />");
       }
       if (pAction == 'saveEmpFavorite') {
           document.getElementById("mFav").href = document.getElementById("mFav").href.replace('saveEmpFavorite', 'removeEmpFavorite');
       }
       else if (pAction == 'saveStuFavorite') {
           document.getElementById("mFav").href = document.getElementById("mFav").href.replace('saveStuFavorite', 'removeStuFavorite');
           $("#mFavText").html("Remove Saved Student");
       }
       else{
           $("#mFav").html("Remove Favorite");
           document.getElementById("mFav").href = document.getElementById("mFav").href.replace('saveFavorite', 'removeFavorite');
       }
   }
   validateForm(pAction,'mobilehttp.w?favMobileId=' + pMobileId,'donothing');
}
function mobileSkyFavorite(pAction, pMobileId, pId) {
    if (pAction == 'removeFavorite' || pAction == 'removeEmpFavorite' || pAction == 'removeStuFavorite') {
       $(document.getElementById(pId)).html("<img src='/webspeed/fav2.gif' width='15px' height='15px' />");
       if (pAction == 'removeEmpFavorite') {
           document.getElementById(pId).href = document.getElementById(pId).href.replace('removeEmpFavorite', 'saveEmpFavorite');
       }
       else if (pAction == 'removeStuFavorite') {
           document.getElementById(pId).href = document.getElementById(pId).href.replace('removeStuFavorite', 'saveStuFavorite');
       }
       else{
           document.getElementById(pId).href = document.getElementById(pId).href.replace('removeFavorite', 'saveFavorite');
       }
    }
   else {
       $(document.getElementById(pId)).html("<img src='/webspeed/fav.gif' width='15px' height='15px' />");
       if (pAction == 'saveEmpFavorite') {
           document.getElementById(pId).href = document.getElementById(pId).href.replace('saveEmpFavorite', 'removeEmpFavorite');
       }
       else if (pAction == 'saveStuFavorite') {
           document.getElementById(pId).href = document.getElementById(pId).href.replace('saveStuFavorite', 'removeStuFavorite');
       }
       else{
           document.getElementById(pId).href = document.getElementById(pId).href.replace('saveFavorite', 'removeFavorite');
       }
    }
   validateForm(pAction,'mobilehttp.w?favMobileId=' + pMobileId,'donothing');
}
function changeEntity(pEntity) {
    var hChangingEntities = document.detailform.hChangingEntities;
    if (hChangingEntities) {
        hChangingEntities.value = 'yes';
    }

   showMessage('Switching entities...', null, null, function(){
       displayLockDiv();
       document.detailform.OpenRow.value = "";
       document.detailform.vMaintOption.value = "";
       document.detailform.passedparams.value = "";
       document.detailform.CurrentProgram.value = "";
       document.detailform.entity.value=pEntity;
       document.detailform.submit();
   });
}
function changeSelectedPlan(txt) {
    var hChangingPlans = document.detailform.hChangingPlans;
    if (hChangingPlans) {
        hChangingPlans.value = 'yes';
    }
    txt = txt || "plans";
    showMessage('Switching ' + txt + '...', null, null, function(){
        displayLockDiv();
        document.detailform.CurrentProgram.value = "";
        document.detailform.submit();
    });
}
function newSessionWindow() {
   if (document.getElementById("IsKiosk")) {
       return;
   }

   gNoPopup = true;
   openNewWindow(document.detailform.CurrentProgram.value,1024,768,1,'',0,2);
}
function newSessionWindow2() {
   if (document.getElementById("IsKiosk")) {
       return;
   }

   gNoPopup = true;
    if (document.detailform.FromRecent) {
        document.detailform.FromRecent.value = 'true';
    } else {
        $(document.detailform).append("<input type='hidden' id='FromRecent' name='FromRecent' value='true' />");
    }
    if (document.detailform.ButtonID) {
        document.detailform.ButtonID.value = '';
    }
   openNewWindow(document.detailform.HomePage.value,1024,768,1,'',0,2);
}
function checkButtonSens(pButton) {
   var button = document.getElementById(pButton);
   if (!button) {
       unChangeCursor();
       return false;
   }
   if (button.className.toLowerCase().indexOf('disabled') >= 0 || (button.id.match(/msgBtn/) == null && gAllowClick == false)) {
       unChangeCursor();
       return false;
   } else {
      //Prevents events from firing twice if user double clicks a button
      gAllowClick = false;
      window.setTimeout(resetClick, 500);
      return true;
   }
}
function cbs(pButton) {
   return checkButtonSens(pButton);
}
function selectButton(pSelected, pGroup) {
    var rSelected = pSelected ? pSelected.replace(/ /g, '').split(",") : []; //an id list of the button(s) that should be selected
    var rGroup = pGroup ? pGroup.replace(/ /g, '').split(",") : []; //an id list of the button(s) in the group (these will be deselected)
    for (var i = 0; i < rGroup.length; i++) {
        $('#' + rGroup[i]).removeClass("buttonSelected");
    }
    for (var i = 0; i < rSelected.length; i++) {
        $('#' + rSelected[i]).addClass("buttonSelected");
    }
}
function checkButtonSelected(pButtons){
    var rButtons = pButtons ? pButtons.replace(/ /g, '').split(",") : []; //an id list of the button(s) that should be checked
    for (var i = 0; i < rButtons.length; i++) {
        if ($('#' + rButtons[i]).hasClass("buttonSelected")) {
            return true;
        }
    }
    return false;
}
function toggleButton(pButtons){
    var rButtons = pButtons ? pButtons.replace(/ /g, '').split(",") : []; //each button in the list will be toggled
    for (var i = 0; i < rButtons.length; i++) {
        if ($('#' + rButtons[i]).hasClass("buttonSelected")) {
            selectButton('', rButtons[i]);
            if (rButtons.length == 1) {
                return false;
            }
        } else {
            selectButton(rButtons[i]);
            if (rButtons.length == 1) {
                return true;
            }
        }
    }
}
function resetClick() {
   gAllowClick = true;
}
function disableField(pFieldList) {
   var vFieldList = pFieldList.split(",");
   var vField, vNewClass, vFieldMult, vFocus = '', vTagName;

   for (var i=0; i < vFieldList.length; i++) {
      vField = document.getElementsByName(vFieldList[i])[0]; /* get first element */
      if (vField == undefined) {
         if (document.getElementById(vFieldList[i])) { /* if first element does not exist attempt to obtain element by id */
             vField = document.getElementById(vFieldList[i]);
         } else  { /* element not found */
            continue;
         }
      }
      remColor({target:vField});

      if (gFocus != vField) {
          vFocus = gFocus;
      }
      remColor({'target':vField});
      if (vFocus != '') {
          gFocus = vFocus;
      }
      vNewClass = vField.className.replace(/ EditInputDisabledNum/g,"").replace(/ EditInputDisabled/g,"").replace(/ EditInputFixedDisabled/g,"").replace(/ buttonDisabled/g,"");

      switch (vNewClass.toLowerCase()) {
      case "editinputfixed" : vNewClass = "EditInputFixed EditInputFixedDisabled"; break;
      case "editinputnum" : vNewClass = "EditInputNum EditInputDisabledNum"; break;
      case "button" : vNewClass = "button buttonDisabled"; break;
      case "editinput" : vNewClass = "EditInput EditInputDisabled"; break;
      case "popuplink" : vNewClass = "PopupLink"; break;
      default:
          if (vNewClass != "") { /* If the developer used a custom class */
              vNewClass = vField.className + " EditInputDisabled";
          }
          break;
      }
      vTagName = vField.tagName.toLowerCase();

      if ((vTagName == "input" && vField.getAttribute("type") == "checkbox") || (vTagName == "select" && parseInt(vField.getAttribute("size"),10) > 1)) {
         vField.disabled = true;
         if (vTagName == "select" && parseInt(vField.getAttribute("size"),10) > 1) { /* multi line select box */
            for (var j=0; j < vField.options.length; j++) {
               if (vField.options[j].getAttribute("bgcolor") == null || vField.options[j].getAttribute("bgcolor") == "") {
                   vField.options[j].setAttribute("bgcolor",vField.options[j].style.backgroundColor);
               }
               vField.options[j].style.backgroundColor = "#DDDDDD";
            }
         }
      } else if (vTagName == "select" && parseInt(vField.getAttribute("size"),10) == 1) {
          $(vField).attr('disabled',true);
      } else if (vTagName == "input" && vField.getAttribute("type") == "file") {
          $(vField).attr('disabled','disabled');
      } else if (vTagName == "textarea" && typeof(CKEDITOR)!= "undefined" && CKEDITOR.instances[vField.id] && window.makeEditorReadonly) {
          makeEditorReadonly(vField.id, true);
      } else if (vTagName == "input" && vField.getAttribute("type") == "radio") {
         for (var j=0; j < document.getElementsByName(vField.name).length; j++) {
            vFieldMult = document.getElementsByName(vField.name)[j];
            vFieldMult.disabled = true;
         }
      } else if ((vTagName == "input" && vField.getAttribute("type") == "text" && !document.getElementById(vFieldList[i] + "gy")) || vTagName == "textarea" || (vTagName == "input" && vField.getAttribute("type") == "password")) {
         vField.readOnly = true;
         if (document.getElementById(vFieldList[i] + "ampm")) { /* Time */
             disableField(vFieldList[i] + "ampm");
         }
         if (document.getElementById(vFieldList[i] + "area")) { /* Phone Area Code */
             disableField(vFieldList[i] + "area");
         }
         if (document.getElementById(vFieldList[i] + "ext")) { /* Phone Extension */
             disableField(vFieldList[i] + "ext");
         }
         if (document.getElementById(vFieldList[i] + "anchor")) { /* Date Calendar */
            try {
               if (gCalendar.target && gCalendar.target == vField.form.name + "." + vFieldList[i]) {
                   gCalendar.hide();
               }
            } catch (er) {}
            document.getElementById(vFieldList[i] + "anchor").style.visibility = "hidden";
         }
         if ($(vField).parent().is('.fwColPick')) {
             setPickerDisplay($(vField));
         }
      } else if (vTagName == "input" && vField.getAttribute("type") == "text" && document.getElementById(vFieldList[i] + "gy")) {
         if (vField.tabIndex != -1) /* Grade/GY */ {
            vField.readOnly = true;
         } else /* Grad Year and GY/Grade */ {
            vField = document.getElementById(vFieldList[i] + "gy");
            vNewClass = vField.className.replace(/ EditInputDisabled/g,"") + " EditInputDisabled";
            vField.readOnly = true;
         }
      } else if (vTagName == 'a') {
         if (vField.onclick != "" && vField.onclick != undefined && vField.onclick != returnFalse) {
            vField.onclickdisabled = vField.onclick;
            vField.onclick         = returnFalse;
         } else if (vField.onclick != returnFalse) {
             vField.onclickdisabled = returnTrue;
             vField.onclick         = returnFalse;
         }
         if (!vField.className.match("button")) {
             vNewClass = vField.className.replace(/ linkDisabled/g,"") + " linkDisabled";
         }
      }

      if (vTagName != "select") {
         vField.className = vNewClass;
         if (vField.tabIndex == 0) {
             vField.tabIndex = "-1";
         } else {
             vField.tabIndex  = "-" + Math.abs(vField.tabIndex);
         }
      }

      if (vField.getAttribute("type") != "radio" && vField.getAttribute("type") != "checkbox" && vTagName != "select") {
         if (vField.onkeypress != "" && vField.onkeypress != undefined) {
            vField.onkeypressdisabled = vField.onkeypress;
            vField.onkeypress         = "";
         }
         if (vField.getAttribute("onkeydown") != "") {
            vField.onkeydowndisabled = vField.getAttribute("onkeydown");
            vField.setAttribute("onkeydown","");
         }
         if (vField.onblur != "" && vField.onblur != undefined) {
            vField.onblurdisabled = vField.onblur;
            vField.onblur         = "";
         }
         if (vField.onfocus != "" && vField.onfocus != undefined) {
            vField.onfocusdisabled = vField.onfocus;
            vField.onfocus         = "";
         }
      }
   }
}
function enableField(pFieldList) {
   var vFieldList = pFieldList.split(",");
   var vField, vNewClass, vFieldMult, vTagName;

   for (var i=0; i < vFieldList.length; i++) {
      vField = document.getElementsByName(vFieldList[i])[0];  /* get first element */
      if (vField == undefined) {
         if (document.getElementById(vFieldList[i])) { /* if first element does not exist attempt to obtain element by id */
             vField = document.getElementById(vFieldList[i]);
         } else { /* element not found */
             continue;
         }
      }

      if (vField.className.indexOf("buttonDisabled") >= 0) {
          vNewClass = "button";
      } else {
         vNewClass = vField.className.replace(/ EditInputDisabledNum/g,"").replace(/ EditInputDisabled/g,"").replace(/ EditInputFixedDisabled/g,"").replace(/ buttonDisabled/g,"");
      }

      vTagName = vField.tagName.toLowerCase();

      if ((vTagName == "input" && vField.getAttribute("type") == "checkbox") || (vTagName == "select" && parseInt(vField.getAttribute("size"),10) > 1)) {
         vField.disabled = false;
         if (vTagName == "select" && parseInt(vField.getAttribute("size"),10) > 1) { /* multi line select box */
            for (var j=0; j < vField.options.length; j++) {
               if (vField.options[j].getAttribute("bgcolor") != null && vField.options[j].getAttribute("bgcolor") != "") {
                   vField.options[j].style.backgroundColor = vField.options[j].getAttribute("bgcolor");
               }
               else
                   vField.options[j].style.backgroundColor = "";
            }
         }
      } else if (vTagName == "select" && parseInt(vField.getAttribute("size"),10) == 1) {
          $(vField).removeAttr('disabled');
      } else if (vTagName == "input" && vField.getAttribute("type") == "file") {
          $(vField).removeAttr('disabled');
      } else if (vTagName == "textarea" && typeof(CKEDITOR)!= "undefined" && CKEDITOR.instances[vField.id] && window.makeEditorReadonly) {
          makeEditorReadonly(vField.id, false);
      } else if (vTagName == "input" && vField.getAttribute("type") == "radio") {
         for (var j=0; j < document.getElementsByName(vField.name).length; j++) {
            vFieldMult = document.getElementsByName(vField.name)[j];
            vFieldMult.disabled = false;
         }
      } else if ((vTagName == "input" && vField.getAttribute("type") == "text" && !document.getElementById(vFieldList[i] + "gy")) || vTagName == "textarea" || (vTagName == "input" && vField.getAttribute("type") == "password")) {
         vField.readOnly = false;
         if (document.getElementById(vFieldList[i] + "ampm")) { /* Time */
             enableField(vFieldList[i] + "ampm");
         }
         if (document.getElementById(vFieldList[i] + "area")) { /* Phone Area Code */
             enableField(vFieldList[i] + "area");
         }
         if (document.getElementById(vFieldList[i] + "ext")) { /* Phone Extension */
             enableField(vFieldList[i] + "ext");
         }
         if (document.getElementById(vFieldList[i] + "anchor")) { /* Date Calendar */
             document.getElementById(vFieldList[i] + "anchor").style.visibility = "visible";
         }
      } else if (vTagName == "input" && vField.getAttribute("type") == "text" && document.getElementById(vFieldList[i] + "gy")) {
         if (vField.tabIndex != -1) { /* Grade/GY */
             vField.readOnly = false;
         } else /* Grad Year and GY/Grade */ {
            vField = document.getElementById(vFieldList[i] + "gy");
            vNewClass = vField.className.replace(/ EditInputDisabled/g,"");
            vField.readOnly = false;
         }
      } else if (vTagName == "a") {
          if (vField.onclickdisabled != "" && vField.onclickdisabled != undefined) {
            vField.onclick = vField.onclickdisabled;
         }
         if (!vField.className.match("button")) {
             vNewClass = vField.className.replace(/ linkDisabled/g,"");
         }
      }

      if (vTagName != "select" || (vTagName == "a" && vField.className.indexOf("button") != -1)) {
         vField.className = vNewClass;
         if (vField.tabIndex == -1) {
             vField.tabIndex = 0;
         } else {
             vField.tabIndex  = Math.abs(vField.tabIndex);
         }
         if ($(vField).parent().is('.fwColPick')) {
             setPickerDisplay($(vField));
         }
      }

      if (vField.getAttribute("type") != "radio" && vField.getAttribute("type") != "checkbox" && vTagName != "select") {
         if (vField.onkeypressdisabled != "" && vField.onkeypressdisabled != undefined) {
             vField.onkeypress = vField.onkeypressdisabled;
         }
         if (vField.onkeydowndisabled != "" && vField.onkeydowndisabled != undefined) {
             vField.setAttribute("onkeydown",vField.onkeydowndisabled);
         }
         if (vField.onblurdisabled != "" && vField.onblurdisabled != undefined) {
             vField.onblur = vField.onblurdisabled;
         }
         if (vField.onfocusdisabled != "" && vField.onfocusdisabled != undefined) {
             vField.onfocus = vField.onfocusdisabled;
         }
      }
   }
}
function fwToggleField(pFieldList, enable) {
    if (enable)
        enableField(pFieldList);
    else
        disableField(pFieldList);
    return enable;
}
function returnFalse(){
    return false;
}
function returnTrue(){
    return true;
}
function isEnabled(pFieldId){
    if (!pFieldId) {
        return false;
    }
    var field = document.getElementById(pFieldId);
    if (!field || field.readOnly || field.style.visibility == "hidden" || !$(field).is(':visible') || field.disabled) {
        return false;
    }
    return field.className.match(/disabled/i) == null;
}
function maximizeBrowse(){
    var browseTitleTable = $(document.getElementById(browses + 'TitleTable'));
    if (!gAllowBrowseResize || browseTitleTable.length == 0 || document.getElementById('browseNoMaximize')) {
        return;
    }
    var browseWrap = $('#browseWrap');
    var browsetool_maximize = $('#browsetool_maximize');
    var browseOuterWrap = $('#browseOuterWrap');
    var browseTable = $('#browseTable');
    var BrowseButtonsWidth = $('#BrowseButtons').width() || 0;
    var browseTitle  = $(document.getElementById(browses + 'Title'));

    var browseFirstColumn = $(document.getElementById(browses + 'FirstColumn'));
    var browseHeader = $(document.getElementById(browses + 'Header'));
    var browseHeaderTable = $(document.getElementById(browses + 'HeaderTable'));
    var browseBodyTable = $(document.getElementById(browses + 'BodyTable'));
    var browseBody = $(document.getElementById(browses + 'Body'));
    var dTabs = $('#dTabs');
    var browseBodyFixed = document.getElementById(browses + "BodyFixed");
    var windowSize = getWindowSize();
    var tblQFButtons = $('#tblQFButtons')
    var useWidth;
    var isTabProgram = false;
    var hBrowseHeight = document.getElementById("hBrowseHeight");
    var vNewHeight, browseTop;
    var vQF = $(document.getElementById(browses + 'QF'));
    var parentFieldset = browseOuterWrap.closest('fieldset');
    var minWidth = 0;
    var widthDiff = 0;
    var newWidth;
    var brwsRecCount_scroller = $('#brwsRecCount_scroller');
    var recWrapWidth = 0;
    var tmpTD;

    if (brwsRecCount_scroller.length > 0){
        recWrapWidth = brwsRecCount_scroller.width();
    }

    browseTop = browseBody.offset().top;

    if ($('#tabContentWrap').length > 0 || dTabs.length > 0) {
        isTabProgram = true;
        browseOuterWrap.addClass('tabProgram');
    }

    if (!hasAttribute(browseWrap, 'minwidth')) {
        $('col', browseHeaderTable).each(function(){
            if (this.style.width != 'auto'){
                minWidth += parseInt(this.style.width);
            }
        });
        browseWrap.attr('minwidth', minWidth);
    } else {
        minWidth = parseInt(browseWrap.attr('minwidth'));
    }

    /* move buttons next to browse */
    if (BrowseButtonsWidth == 0) {
        if ($('#browseOuterWrap').parent().siblings('td').eq(0).find('a.button').length > 0) {
            $('#browseTable tr').eq(0).append($('#browseOuterWrap').parent().attr('colspan','2').siblings('td').eq(0).attr('id','BrowseButtons').attr('rowspan','2'));
        }
        BrowseButtonsWidth = $('#BrowseButtons').width() || 0;
    }

    browseOuterWrap.closest('table').removeAttr('align');
    tmpTD = browseOuterWrap.closest('td');
    if (tmpTD.length > 0) {
        tmpTD.removeAttr('align');
    }
    if (parentFieldset.length > 0) {
        windowSize.width = parentFieldset.width() - 5;
        parentFieldset.css('position','relative');
        browseTable.css({
             'position' : 'absolute'
            ,'left' : '1px'
        });
        if (gIsIE) {
            browseTable.css('left', (parseInt(parentFieldset.css('padding-left'), 10) + 1) + 'px');
        }
    } else {
        windowSize.width -= 24;
        BrowseButtonsWidth += 4;
        browseTable.css({
             'position' : 'absolute'
            ,'left' : '4px'
        });
    }


    if (isTabProgram) {
        if (parentFieldset.length == 0) {
            windowSize.width -= browseOuterWrap.offset().left;
        }
        browseOuterWrap.css('position','relative');
    } else {
        browseOuterWrap.css('position','static');

    }
    if (gDetailsView) {
        BrowseButtonsWidth = 4;
    }
    newWidth = Math.round(windowSize.width - BrowseButtonsWidth);

    if (newWidth < 401) {
        newWidth = 401;
    }

    if (newWidth < (minWidth + 19)) {
        widthDiff = minWidth + 1;
    }
    if (widthDiff > 0) {
        browseBodyTable.css('width', widthDiff + 'px');
    } else {
        browseBodyTable.css('width', '100%');
    }

    if (!browseOuterWrap.attr('minimizeWidth')) {
        browseOuterWrap.attr('minimizeWidth', browseTable.width());
        browseOuterWrap.attr('minimizeHight', browseTable.height());
    }

    browseTitle.css({
        'width':newWidth + 'px'
    });
    browseTitleTable.css({
        'width': newWidth + 'px'
    });
    browseWrap.css({
        'width': newWidth + 'px'
    });

    if (document.getElementById("PopupHeight") && document.getElementById("PopupHeight").value != "" && windowSize.height > parseInt(document.getElementById("PopupHeight").value, 10)) {
        vNewHeight = parseInt(hBrowseHeight.value, 10) + windowSize.height - parseInt(document.getElementById("PopupHeight").value, 10);
    } else if (windowSize.height > 695) {
        vNewHeight = parseInt(hBrowseHeight.value, 10) + windowSize.height - 695;
    } else {
        vNewHeight = parseInt(hBrowseHeight.value, 10);
    }
    if (gDetailsView) {
        browseBody.css({
            'width': (newWidth - recWrapWidth) + 'px'
           ,'height' : 'auto'
        });
    } else {
        browseBody.css({
            'width': (newWidth - recWrapWidth) + 'px'
           ,'height' : (vNewHeight) + 'px'
        });
    }
    if (brwsRecCount_scroller.length > 0) {
        brwsRecCount_scroller.css({'height':(vNewHeight - getScrollbarWidth()) + 'px'});
    }
    browseHeaderTable.css('width', browseBodyTable.css('width'));
    if (browseBodyFixed) {
        browseBodyFixed.style.height = (vNewHeight - getScrollbarWidth()) + "px";
    }
    if (gIsIpad) {
        browseFirstColumn.css({
            'width': newWidth + 'px'
        });
        browseHeader.css({
            'width': (newWidth - recWrapWidth) + 'px'
        });
    } else {
        browseFirstColumn.css({
            'width': (newWidth - getScrollbarWidth()) + 'px'
        });
        browseHeader.css({
            'width': (newWidth - getScrollbarWidth() - recWrapWidth) + 'px'
        });
    }

    browseOuterWrap.css({
         'height' : browseTable.css('height')
    });

    if (tmpTD.length > 0) {
        newWidth = browseTable.width();
        if (tmpTD.width() < newWidth) {
            tmpTD.css('width', (newWidth + 20) + 'px')
        }
    }

    vQF.css('width', (vQF.parent().width() - getScrollbarWidth()) + 'px');
    tblQFButtons.css('width', (browseBody.width() - 20) + 'px');
    if (browseBodyTable.hasClass('browseNoRecords')) {
        browseBodyTable.css('width', browseHeaderTable.css('width'));
    }
    fixBrowseColumnWidth();
}
function changeBrowseSize() {
    if (gIsIE7) {
        setTimer('changeBrowseSize', function(){
            continueChangeBrowseSize();
        }, 300);
    } else {
        continueChangeBrowseSize();
    }
}
function continueChangeBrowseSize() {
    if (gIsIE7) {
        clearTimer('changeBrowseSize');
    }
    if (document.getElementById("IsMobile")) {
        return;
    }

    var browsesBody = document.getElementById(browses + "Body");
    var hBrowseWidth = document.getElementById("hBrowseWidth");
    var isPopup = document.getElementById("isPopup");
    var lockDiv = document.getElementById("lockDiv");

    if ($("#dMessage").is(":visible") && $("#dMessage")[0].style.bottom == '') {
         centerFilter("dMessage");
    }
    if ($("#newFilterDiv").is(":visible")) {
         centerFilter("newFilterDiv");
    }
    if ($("#dPrintMessage").is(":visible")) {
         centerFilter("dPrintMessage");
    }

    if (lockDiv && lockDiv.style.visibility != "hidden") {
        setLockDivSize();
    }
    var browseHeaderTable = $(document.getElementById(browses + 'HeaderTable'));
    var browseBodyTable = $(document.getElementById(browses + 'BodyTable'));

    if (isPopup && isPopup.value == 'true' && gAllowBrowseResize==false) {
        browseHeaderTable.css('width',browseBodyTable.width() + 'px');
        $('#qfTable').css('width',browseHeaderTable.width() + 'px');
        return;
    } else if (!browsesBody || !hBrowseWidth) {
        return;
    }

    if (gAllowBrowseResize) { //browse is maximized
        maximizeBrowse();
    }
    browseBodyTable.filter('.browseNoRecords').css('width', $(document.getElementById(browses + 'FirstColumn')).css('width'));
    $('#qfTable').css('width',browseHeaderTable.width() + 'px');
}
function initBrowseDetailView(){
    gDetailsView = true;
    var browseOuterWrap = $('#browseOuterWrap');
    browseOuterWrap.find('.TitleTableWrap').hide().parent().css('height','0');
    $('#browseTable').css('top','34px');
    browseOuterWrap.appendTo(document.body);
}
function finishBrowseDetailView(){
    if (typeof(FusionCharts) !== 'undefined') {
        FusionCharts.setCurrentRenderer('JavaScript');
        FusionCharts.renderMode = 'js';
    }
    var BodyTable = document.getElementById(browses + 'BodyTable');
    var HeaderTable = document.getElementById(browses + 'HeaderTable');
    var currectRec = parent.document.getElementById("currentrecord").value;
    var row = $(parent.document.getElementById(currectRec));
    var detailRow = row.next().clone(false);
   var fetchDetails = [];
    if (detailRow.find('object').length > 0) {
        detailRow.find('object').each(function(){
            var id = $(this).closest('tr[detailrow]');
            if (id.length > 0) {
                id = id.attr('id').replace('detail', '');
            } else {
                return;
            }
            detailRow.find('#' + id + 'div').html('');
            detailRow.find('#' + id + 'detail').css('display','none');
            detailRow.find('#' + id + 'img').removeClass('bd_open').addClass('bd_closed');
            fetchDetails.push(id.replace(new RegExp(currectRec,"g"), ''));
        });
    }
    row = row.clone(false);
    document.getElementById("currentrecord").value = currectRec;
    document.getElementById(browses + 'Lookup').style.display = 'none';
    if (gIsIE7) {
        var parentBodyTable = parent.document.getElementById(browses + 'BodyTable').cloneNode(true);
        for (var i = parentBodyTable.rows.length - 1; i >= 0 ; i--) {
            if (parentBodyTable.rows[i].id.indexOf(currectRec) != 0) {
                parentBodyTable.deleteRow(i)
            }
        }
        var html = parentBodyTable.innerHTML;
        var tmpParent = BodyTable.parentNode;
        tmpParent.innerHTML = "<table cellspacing='0' cellpadding='0'>" + html + "</table>";
        BodyTable = tmpParent.getElementsByTagName("table")[0];
        row = $(BodyTable.rows[0]);
        detailRow = $(BodyTable.rows[1]);
    } else {
        $(BodyTable.rows).remove();
        $(BodyTable).removeClass('browseNoRecords').find('tbody').eq(0).append(row).append(detailRow);
    }
    $(document.getElementById(browses + 'HeaderTable')).find('td').css('cursor','default').removeClass('sortUp').removeClass('sortDown');
    $(HeaderTable).css('width', $(BodyTable).css('width'));
    if (window.getBrowseInfo) {
        try {
          if (currectRec.indexOf("detail") < 0) {
             var rowinfo = document.getElementById(currectRec).getAttribute('pvdata');
             if (rowinfo != null) {
                getBrowseInfo(rowinfo);
             } else {
                 getBrowseInfo();
             }
          }
        } catch(ex){}
   }
    $('#brwsModifyDetails').remove();
    $('#brwsPrintDetails').remove();
    row.get(0).ondblclick = function(){};
    row.get(0).removeAttribute("ondblclick");
    detailRow.get(0).ondblclick = function(){};
    detailRow.get(0).removeAttribute("ondblclick");
    row.on('click','*',function(e){
        cancelEvent(e);
        return false;
    });
    detailRow.on('click','*',function(e){
        var cancel = true;
        var el = e.target;
        if (el && el.nodeName.toLowerCase() == 'a') {
            el = $(el);
            if (el.hasClass('bd_closed') || el.hasClass('bd_open')) {
                cancel = false;
            } else if (el.html() == "Expand All" || el.html() == "Collapse All") {
                cancel = false;
            }
        }
        if (cancel) {
            cancelEvent(e);
            return false;
        }
    });
    for (var i = 0; i < fetchDetails.length; i++) {
        browseDetail(fetchDetails[i]);
    }
}
function toggleLookupLetters(id){
    if (!id) {
        return;
    }
    $('#lookupLetterWrap_' + id).slideToggle(200, function(){
        $('a', this).filter(':visible').eq(0).focus();
    });
}
function openFilterWindow(pModifyFilter) {
   showMessage('Please wait...');
   var BrowseUseTempTable = document.getElementById("BrowseUseTempTable");
   var BrowseFilterTempTable = document.getElementById("BrowseFilterTempTable");
   if (!BrowseUseTempTable || BrowseUseTempTable.value != 'yes' || (BrowseFilterTempTable && BrowseFilterTempTable.value == 'yes')) {
       openNewWindow("qbrwsdisp001.w?eMode=" + pModifyFilter,940,600,1);
   } else {
       openNewWindow("qbrwsdisp001.w?eMode=" + pModifyFilter,610,600,1);
   }
   hideMessage();
}
function getFilterDetail() {
   var vField = document.getElementById("sFilterSelect");
   var bEditFilter = document.getElementById("bEditFilter");
   var vFilter='';
   var vScreen='';

   try {
      if (vField) {
         vFilter = vField.value;
         vScreen = vField.options[vField.selectedIndex].innerHTML;
      }

      if (bEditFilter) {
         if (vScreen.substring(0, 1) == '*') {
            $(bEditFilter).html("View Filter");
            bEditFilter.href = "javascript:openFilterWindow('');";
            disableField("bDeleteFilter,bShareFilter");
         } else {
            $(bEditFilter).html("Edit Filter");
            bEditFilter.href = "javascript:openFilterWindow('edit');";
            enableField("bDeleteFilter,bShareFilter");
         }
      }
      if (gPerformingSearch == false) {
          getExtraInfo('qbrwshttp001.w','filterDetail',vFilter,'dFilterDetails');
      }
   } catch (ex) {}
}
function getFilterDetail2() {
   var vField = document.getElementById("sFilterList");
   var bEditFilter = document.getElementById("bEditFilter");
   var vFilter='';
   var vScreen='';

   try {
      if (vField) {
         vFilter = vField.value;
         vScreen = vField.options[vField.selectedIndex].innerHTML;
      }

      if (bEditFilter) {
         if (vScreen.substring(0, 1) == '*') {
            $(bEditFilter).html("View Filter");
            bEditFilter.href = "javascript:openFilterWindow('');";
            disableField("bDeleteFilter,bShareFilter");
         } else {
            $(bEditFilter).html("Edit Filter");
            bEditFilter.href = "javascript:openFilterWindow('edit');";
            enableField("bDeleteFilter,bShareFilter");
         }
      }
      if (gPerformingSearch == false) {
          getExtraInfo('qbrwshttp001.w','filterDetail',vFilter,'dFilterDetails');
      }
   } catch (ex) {}
}
function getFilterList(pUseFilter,pApplyFilter) {
    if (!pUseFilter) {
        var pUseFilter = '';
    }
    if (pApplyFilter) {
        gApplyFilter = pApplyFilter;
    } else {
        gApplyFilter = false;
    }
    window.setTimeout(function(){continueGetFilterList(pUseFilter);}, 50);
}
function continueGetFilterList(pUseFilter) {
   var vFilter = document.getElementById("sViewList").value;
   if (!pUseFilter) {
       var pUseFilter = $('#sFilterSelect').val();
       if (pUseFilter.split(";").length > 1) {
           pUseFilter = pUseFilter.split(";")[1];
       }
   }
   getExtraInfo('qbrwshttp001.w?hUseFilter=' + pUseFilter, 'filterList', vFilter, 'sFilterList');
}
function checkDeleteFilter() {
   message("Are you sure you wish to delete this filter?","",0,0,0,"Delete Filter","continueDeleteFilter();","Keep Filter","");
}
function continueDeleteFilter() {
    showMessage('Please wait...');
    validateForm('removeFilter','qbrwshttp001.w','donothing');
    hideMessage();
}
function refreshFilters() {
   document.getElementById("vSelectedColumn").value="";
   document.getElementById("vSelectedColumnDirection").value="";

   disableField("bNewApplyFilter,bAddFilter,bEditFilter,bDeleteFilter");
   gPerformingSearch = true;
   if (document.getElementById('hRefreshFilters')) {
       document.getElementById('hRefreshFilters').value = 'true';
   } else {
       $(document.detailform).append("<input type='hidden' id='hRefreshFilters' name='hRefreshFilters' value='true' />");
   }
   document.detailform.submit();
}
function displayFilters() {
    if (document.getElementById('hDisplayFilters')) {
       document.getElementById('hDisplayFilters').value = 'true';
   } else {
       $(document.detailform).append("<input type='hidden' id='hDisplayFilters' name='hDisplayFilters' value='true' />");
   }
   processButton(document.detailform.vMaintOption.value, document.detailform.CurrentProgram.value);
}
function showIframe(pObject, pzIndex) {
    //this function is no longer relevant to the framework and should not be used
    return;
}
function hideIframe(pField) {
    //this function is no longer relevant to the framework and should not be used
    return;
}
function showBrowseProgress(pMessage) {
   var loadingMsg = document.getElementById('loadingMsg');
   if (loadingMsg && !window.showLoadProgress) {
       $(loadingMsg).html(pMessage);
   }
}
function hideWaitMessage(){
    var waitMsg = document.getElementById('brLoading');
    if (waitMsg && !window.showLoadProgress) {
       $(waitMsg).remove();
    }
}
function showHideDetails() {
   openNewWindow('qbrwsdisp003.w',550,425);
}
function loadEnterTab(pField) {
   var vField,vEvent;

   if (gIsSafari)
       vEvent = "keydown";
   else if (gIsMoz || gIsChrome || gIsMicrosoftEdge)
       vEvent = "keypress";
   else
       vEvent = "keyup";

   if (typeof pField == 'string') {
       vField = document.getElementById(pField);
       if (!vField) {
           return;
       }
       addEvent(vField, vEvent, doEnterTab);
   } else {
       if (vField == null) {
           vField = document.body;
       }
       if (!vField) {
           return;
       }
       var elements = vField.getElementsByTagName('input');
       for (var i = 0; i < elements.length; i++) {

           if (elements[i].tabIndex && elements[i].tabIndex != '-1' && elements[i].disabled != true && elements[i].readOnly != true && elements[i].className.toLowerCase().indexOf('disabled') == -1) {
               if (elements[i].getAttribute("det") != "true") {
                   addEvent(elements[i], vEvent, doEnterTab);
                   elements[i].setAttribute("det", "true");
               }
           }
       }
       elements = vField.getElementsByTagName('select');
       for (var i = 0; i < elements.length; i++) {
           if (elements[i].tabIndex && elements[i].tabIndex != '-1' && elements[i].disabled != true && elements[i].readOnly != true && elements[i].className.toLowerCase().indexOf('disabled') == -1) {
               if (elements[i].getAttribute("det") != "true") {
                   addEvent(elements[i], vEvent, doEnterTab);
                   elements[i].setAttribute("det", "true");
               }
           }
       }
   }
}

function doEnterTab(e) {
    if (!e) {
        var e = window.event;
    }
   if (e.keyCode!=13) {
       return;
   }
   try {
      var vTarget;

      //Don't tab when message is displaying
      if (gPreventTab == true) {
          gPreventTab = false;
          return;
      }

      vTarget = getElementForEvent(e);
      var vElements = vTarget.form.elements;
      var vLinks = vTarget.form.getElementsByTagName('a');
      var vTemp;
      var vFocus;
      var vTabOrder;
      var vNewTabOrder;

      try {
         if (vTarget.type.toLowerCase() == 'password') {
             return;
         }
      } catch (er) {}

      //Allows EEL blur events to fire properly
      gDoValidation=true;
      gAllowBlur=true;

      vTabOrder = parseInt(vTarget.tabIndex, 10);
      vNewTabOrder = 99999;

      for (var i=0; i<vElements.length; i++) {
         vTemp = vElements[i];
         if (vTemp.tabIndex && vTemp.tabIndex != '-1' && vTemp.className.toLowerCase().indexOf('disabled')==-1 && vTemp.readOnly!=true && vTemp.disabled!=true) {
            if (parseInt(vTemp.tabIndex, 10) > vTabOrder && parseInt(vTemp.tabIndex, 10)<vNewTabOrder && isVisible(vTemp)) {
               vFocus = vTemp;
               vNewTabOrder = parseInt(vTemp.tabIndex, 10);
            }
         }
      }

      for (var i=0; i < vLinks.length; i++) {
         vTemp = vLinks[i];
         if (vTemp.tabIndex && vTemp.tabIndex != '-1' && vTemp.className.toLowerCase().indexOf('disabled')== -1 && vTemp.disabled!=true) {
            if (parseInt(vTemp.tabIndex, 10) > vTabOrder && parseInt(vTemp.tabIndex, 10) < vNewTabOrder && isVisible(vTemp)) {
               vFocus = vTemp;
               vNewTabOrder = parseInt(vTemp.tabIndex, 10);
            }
         }
      }

      try {
         if (gIsIphone==false) {
             vFocus.focus();
             if(vFocus.type.toLowerCase() == 'text') {
                 vFocus.select();
             }
         }

         //Prevents default windows sound from playing when user hits tab and the form isn't posted
         if (gIsIE) {
             e.returnValue = false;
         }
      } catch (ex) {}
   } catch (ex) {}
}
function isVisible(pField) {
    if (typeof pField == "string") {
        pField = document.getElementById(pField);
    }
    while (pField && pField.nodeName && pField.nodeName.toLowerCase() != 'body' && pField.style.display.toLowerCase() != 'none' && pField.style.visibility.toLowerCase() != 'hidden') {
        pField = pField.parentNode;
    }

    if (pField.nodeName.toLowerCase() == 'body') {
        return true;
    } else {
        return false;
    }
}
function imageError(pImage) {
    pImage.src = "/webspeed/qqwimg11.gif";
    pImage.style.height = "0px";
    pImage.style.width = "0px";
}
function displayLogout() {
   var lTimeout = false;

   if (document.getElementById('hLogoutType')) {
       if (document.getElementById('hLogoutType').value == "security") {
           var vMessage = "It appears that you are attempting to access an area which you don't have security to.<br /><br />";
       }
       else if (document.getElementById('hLogoutType').value == "login") {
           var vMessage = "It appears that you are logged in with a different session.<br /><br />";
       }
       else if (document.getElementById('hLogoutType').value == "timeout") {
           var vMessage = "You have been logged out due to inactivity.<br /><br />";
           lTimeout = true;
       }
   } else {
       var vMessage = "It appears that you are logged in with a different session.<br /><br />";
   }

   var errorCode = "Error Code: ";
   if (document.getElementById('nameid')) {
        errorCode += "N" + document.getElementById('nameid').value + ".";
   } else {
       errorCode += "N0000.";
   }

   if (document.getElementById("hSecurityMenu")) {
       errorCode += "M" + document.getElementById("hSecurityMenu").value + ".";
   } else if (document.getElementById("SecurityMenuID")) {
       errorCode += "M" + document.getElementById("SecurityMenuID").value + ".";
   } else {
       errorCode += "M0000.";
   }
   if (document.getElementById('entity')) {
        errorCode += "E" + document.getElementById('entity').value + ".";
   } else {
       errorCode += "E000.";
   }
   if (document.getElementById('dwd')) {
        errorCode += "D" + document.getElementById('dwd').value;
   } else {
       errorCode += "D0000";
   }

   if (errorCode!="Error Code: N0000.M0000.E000.D0000"&&!lTimeout) {
       vMessage += "Please verify that you are not logged in multiple times.<br /><br />";
       vMessage += errorCode + "<br />";
   }

   if (document.getElementById("hLogoutDetails")) {
       if (document.getElementById('hLogoutDetails').value.indexOf(errorCode) < 0) {
           document.getElementById("hLogoutDetails").value +=  "<br />" + errorCode;
       }
    } else {
       var hLogoutDetails = document.createElement('input');
       hLogoutDetails.id= "hLogoutDetails";
       hLogoutDetails.type = 'hidden';
       hLogoutDetails.value = errorCode;
       document.body.appendChild(hLogoutDetails);
   }

   if (document.getElementById("hLogoutIP")) {
       vMessage += document.getElementById("hLogoutIP").value;
   }
   hideMessage();

   document.getElementById("lockDiv").style.backgroundColor = "#FFFFFF";
   setOpacity("lockDiv",100);

   if (gIsMobile) {
       if (document.getElementById('hLogoutType')) {
           if (document.getElementById('hLogoutType').value == "login"){
               message(vMessage, "Multiple Login Error",0,0,0,"OK","changeCursor(); window.location.replace('mobilelogin.w');", "View Details", "closeMessagex(); displayLogoutDetails();");
           } else if (document.getElementById('hLogoutType').value == "security") {
               message(vMessage, "Security Error",0,0,0,"OK","changeCursor(); window.location.replace('mobilelogin.w');", "View Details", "closeMessagex(); displayLogoutDetails();");
           } else{
               message(vMessage, "Security Error",0,0,0,"OK","changeCursor(); window.location.replace('mobilelogin.w');", "View Details", "closeMessagex(); displayLogoutDetails();");
           }
       } else {
           message(vMessage, "Security Error",0,0,0,"OK","changeCursor(); window.location.replace('mobilelogin.w');", "View Details", "closeMessagex(); displayLogoutDetails();");
       }

   } else {
       document.body.style.overflow = 'hidden';
       if (document.getElementById('hLogoutType')) {
           if (document.getElementById('hLogoutType').value == "login") {
               message(vMessage, "Multiple Login Error",0,0,0,"Close Window","changeCursor(); self.close();", "View Details", "closeMessagex(); displayLogoutDetails();");
           } else if (document.getElementById('hLogoutType').value == "security") {
               message(vMessage, "Security Error",0,0,0,"Close Window","changeCursor(); self.close();", "View Details", "closeMessagex(); displayLogoutDetails();");
           } else{
               message(vMessage, "Security Error",0,0,0,"Close Window","changeCursor(); self.close();", "View Details", "closeMessagex(); displayLogoutDetails();");
           }
       } else{
           message(vMessage, "Security Error",0,0,0,"Close Window","changeCursor(); self.close();", "View Details", "closeMessagex(); displayLogoutDetails();");
       }

   }
}
function displayLogoutDetails() {
   var vDetails = '';

   try {
       vDetails = document.getElementById("hLogoutDetails").value;
   }
   catch(er) {}

   vDetails += "<br><br><b><u>BROWSER INFORMATION</u></b>";

   vDetails += "<br>" + brws.osName + ", " + brws.brwsInfo;

   if (gIsMobile==true) {
       message(vDetails,"Log Out Details",0,350,0,"OK","changeCursor(); window.location.replace('mobilelogin.w');", "Back", "closeMessagex(); displayLogout();");
   }
   else {
       message(vDetails,"Log Out Details",0,350,0,"Close Window","changeCursor(); self.close();", "Back", "closeMessagex(); displayLogout();");
   }
}

function delayLimit(pId, pLimit) {
   setTimeout(function(){limitTextArea(pId, pLimit)}, 25);
}

function limitTextArea(pId, pLimit) {
   try {
      var vBypass;
      var vField = document.getElementById(pId);
      var vIdrem = document.getElementById(pId + "rem");

      if (document.getElementById("h" + pId + "Bypass")) {
          vBypass = true;
      }
      else {
          vBypass = false;
      }

      if (vField.value.length > pLimit && vBypass == false) {
          vField.value = vField.value.substring(0, pLimit);
      }

      if (vIdrem) {
          $(vIdrem).html(pLimit - vField.value.length);
          if (pLimit - vField.value.length >= 0) {
              $(vIdrem).css("color", "#888888");
              $(vIdrem).css("font-weight", "normal");
          }
          else {
              $(vIdrem).css("color", "#ff0000");
              $(vIdrem).css("font-weight", "bold");
          }
      }
   } catch (er) {}
}
function ease(element, fromSize, toSize, dimension, speed, easeRatio, inOut, hideAfter, callAfter, completeAction, count){
    /*
    element         //an id or reference to the element to be eased
    fromSize        //the starting size of the element easing  (default: current size)
    toSize          //the ending size of the element easing    (default: offset size)
    dimension       //'height' or 'width'                      (default: 'height')
    speed           //timeout between ease calls (smaller numbers are faster) (default: 50)
    easeRatio       //the easing ratio (percent change per iteration)         (default: .1)
    inOut           //'in' or 'out' depending if the element is to expand or contract to the new size   (default: fromSize > toSize ? 'in' : 'out')
    hideAfter       //true or false.  If true, the element will be hidden after easeing out (default: false)
    callAfter       //function to call after easing is complete (default: null)
    completeAction  //'true' or 'false' force an action to finish before calling the next action (default:false)
    count           //used internally - do not pass in this parameter
    */
    if (!element) {
        return;
    }

    if (typeof(count) != "number") {
        var count = 0;
    }
    if (typeof(element) == "string") {
        element = document.getElementById(element);
    }
    if (!element || !element.parentNode) {
        return;
    }
    if (!dimension) {
        var dimension = "height";
    }
    if (dimension != "width") {
        dimension = "height";
    }
    if (typeof(fromSize) != "number") {
        var fromSize = (dimension == "height" ? parseInt(element.style.height, 10) : parseInt(element.style.width, 10));
    }
    if (typeof(fromSize) != "number" || isNaN(fromSize)) {
        fromSize = (dimension == "height" ? getElementHeight(element) : getElementWidth(element));
    }
    if (typeof(toSize) != "number" || isNaN(toSize)) {
        var toSize = (dimension == "height" ? getElementHeight(element) : getElementWidth(element));
    }
    if (fromSize == toSize) {
        if (typeof(callAfter) == "function") {
            callAfter();
        }
        return;
    }
    if (typeof(speed) != "number") {
        var speed = 50;
    }
    if (typeof(easeRatio) != "number") {
        var easeRatio = .1;
    }
    if (typeof(hideAfter) != "boolean") {
        var hideAfter = false;
    }
    if (!inOut) {
        var inOut = (fromSize < toSize ? "in" : "out");
    }
    if (typeof(completeAction) == "boolean" && completeAction) {
        if (element.getAttribute("ease_" + dimension) != null && element.getAttribute("ease_" + dimension) != inOut && count == 0) {
            return;
        }
    } else {
        if (element.getAttribute("ease_" + dimension) == inOut && count == 0) {
            return;
        }
    }
    if (dimension == "height") {
        if (element.style.overflowY == "visible" || element.style.overflowY == "") {
            element.style.overflowY = "hidden";
        }
    } else {
        if (element.style.overflowX == "visible" || element.style.overflowX == "") {
            element.style.overflowX = "hidden";
        }
    }
    if (element.style.display == "none") {
        element.style.display = "";
    }
    if (count > 500 || jQuery.fx.off == true) {
        dimension == "height" ? (element.style.height = toSize + "px") : (element.style.width = toSize + "px");
        element.removeAttribute("ease_" + dimension);
        if (typeof(callAfter) == "function") {
            callAfter();
        }
        return;
    }
    count++;
    element.setAttribute("ease_" + dimension, inOut);
    if (inOut == "in") { //element is to expand
        fromSize += Math.ceil((toSize - fromSize) * easeRatio);
        dimension == "height" ? (element.style.height = fromSize + "px") : (element.style.width = fromSize + "px");
        if (fromSize < toSize) {
            window.setTimeout(function(){
                ease(element, fromSize, toSize, dimension, speed, easeRatio, inOut, hideAfter, callAfter, completeAction, count);
            }, speed);
        } else {
            dimension == "height" ? (element.style.height = toSize + "px") : (element.style.width = toSize + "px");
            element.removeAttribute("ease_" + dimension);
            if (typeof(callAfter) == "function") {
                callAfter();
            }
        }
    } else { //element is to contract
        fromSize -= Math.ceil((fromSize - toSize) * easeRatio);
        dimension == "height" ? (element.style.height = fromSize + "px") : (element.style.width = fromSize + "px");
        if (fromSize > toSize) {
            window.setTimeout(function(){
                ease(element, fromSize, toSize, dimension, speed, easeRatio, inOut, hideAfter, callAfter, completeAction, count);
            }, speed);
        } else {
            dimension == "height" ? (element.style.height = toSize + "px") : (element.style.width = toSize + "px");
            if (hideAfter) {
                element.style.display = "none";
            }
            element.removeAttribute("ease_" + dimension);
            if (typeof(callAfter) == "function") {
                callAfter();
            }
        }
    }
}

function updatePrivateData(pPrivateData,pDelimiter,pIndex,pRowId) {
   if (typeof pRowId == "undefined" || pRowId == null) {
       var pRowId = document.getElementById("currentrecord").value;
   }
   var vRowIndex   = document.getElementById(pRowId).getAttribute("delrow");
   var vOrigPvData = document.getElementById(pRowId).getAttribute("pvdata");
   var vNewPvData  = "";
   var vOrigPvDataArray;

   if (typeof pDelimiter == "undefined" || pDelimiter == null || typeof pIndex == "undefined" || pIndex == null) {
       vNewPvData = pPrivateData.replace(/\"/g,'&quot;');
   } else {
      vOrigPvDataArray = document.getElementById(pRowId).getAttribute("pvdata").split(pDelimiter);
      vOrigPvDataArray[pIndex] = pPrivateData.replace(/\"/g,'&quot;');
      for (var i=0; i < vOrigPvDataArray.length; i++) {
         if (vNewPvData != "") {
             vNewPvData += pDelimiter;
         }
         vNewPvData += vOrigPvDataArray[i];
      }
   }
   vBrowseData[vRowIndex] = vBrowseData[vRowIndex].split('pvdata="' + vOrigPvData + '"')[0] + 'pvdata="' + vNewPvData + '"' + vBrowseData[vRowIndex].split('pvdata="' + vOrigPvData + '"')[1];
   document.getElementById(pRowId).setAttribute("pvdata",vNewPvData);
}

function getDetailNbr(pDetail) {
   var vDetailNbrs       = "";
   var vGetDetailList    = pDetail.toLowerCase().split(String.fromCharCode(21));
   var vDetails          = document.getElementById("hBrowseDetails");

   if (vDetails) {
       var vBrowseDetailList = vDetails.value.toLowerCase().split(String.fromCharCode(21));
       for (var i=0; i < vGetDetailList.length; i++) {
          for (var j=0; j < vBrowseDetailList.length; j++) {
             if (vGetDetailList[i] == vBrowseDetailList[j]) {
                if (vDetailNbrs != "") {
                    vDetailNbrs += ",";
                }
                vDetailNbrs += parseInt(j + 1,10).toString();
                break;
             }
          }
       }
       return vDetailNbrs;
   }
}

function autoOpenDetails(a,b){
    gAutoOpenDetails = window.setTimeout(function(){
        if (gQVspan != a) {
            toggleQuickView(a,b);
        }
    }, 750);
}
function getChartDetail() {
   var vChart='';
   if (gOpening == true) {
       return;
   }
   hideChartDetailTip();
   try {
      vChart = document.getElementById("sChartSelect").value;
      document.getElementById("dChartDetails").scrollTop=0;
      var vField, vScreen;
      if (vChart != '') {
         vField = document.getElementById("sChartSelect");
         vScreen = vField.options[vField.selectedIndex].innerHTML;

         enableField("bCreateChart,bEditChart,bCloneChart");
         if (vScreen.substring(0, 1) == '*') {
            $("#bEditChart").html("View Chart");
            document.getElementById("bEditChart").href = "javascript:openChartWindow('view');";
            disableField("bDeleteChart");
         } else {
            $("#bEditChart").html("Edit Chart");
            document.getElementById("bEditChart").href = "javascript:openChartWindow('edit');";
            enableField("bDeleteChart");
         }
      } else {
          disableField("bCreateChart,bEditChart,bDeleteChart,bCloneChart");
      }

      getExtraInfo('qgrphhttp001.w','chartDetail',vChart,'dChartDetails');
   } catch (ex) {}
}
function openChartWindow(pMode) {
   if (document.getElementById("sChartSelect") && document.getElementById("sChartSelect").value == "" && (pMode == 'edit' || pMode == 'clone' || pMode == 'create')) {
      message("A chart must be selected to perform this function.");
      return;
   }

   if (pMode == 'create') {
       window.setTimeout(function(){openIframeDialog(document.getElementById("CurrentProgram").value,725,500,0,"chart");},50);
   } else if (pMode == 'add' || pMode == 'edit' || pMode == 'clone' || pMode == 'view') {
       openNewWindow("qgrphedit001.w?hMode=" + pMode,975,500,1);
   } else {
       openNewWindow(pMode,725,500);
   }
}

function openChildChart(pParams) {
    openNewWindow("qgrphdisp001.w" + pParams,725,550);
}

function openChartExcel(pParams) {
    openIframeDialog("qgrphdisp002.w" + pParams,400,125);
}

function clickChart(pChartNum,pParams) {
   if (getRadioValue(document.detailform["rClickChart" + pChartNum.toString()]) == 'd') {
       openChildChart(pParams);
   } else {
       openChartExcel(pParams);
   }
}

function getChartList(pUseChart) {
   if (!pUseChart) {
       var pUseChart = '';
   }
   window.setTimeout(function(){continueGetChartList(pUseChart);}, 50);
}

function continueGetChartList(pUseChart) {
   var vFilter = "";

   if (document.getElementById("sViewList")) {
       vFilter = document.getElementById("sViewList").value;
   }

   getExtraInfo('qgrphhttp001.w?hUseChart=' + pUseChart,'chartList',vFilter,'chartArea');
}

function checkDeleteChart() {
   message("Are you sure you wish to delete this chart?","",0,0,0,"Delete Chart","continueDeleteChart();","Keep Chart","");
}

function continueDeleteChart() {
   validateForm('removeChart','qgrphhttp001.w','donothing');
}

function openMyPrintQueue() {
   if(document.getElementById("IsMobile") && document.getElementById("IsMobile").value == "true"){
       processButton('', 'myprintqueue002.w');
   }
   else{
       openNewWindow('qprntbrws002.w',1013,520,1,'');
   }
}

function replaceAll(pText, pFind, pReplace, pCaseSensitive) {
    if (pCaseSensitive == null) {
        pCaseSensitive = false;
    }
    if (pCaseSensitive == true) {
        return pText.replace(new RegExp(pFind,"g"), pReplace);
    } else {
        return pText.replace(new RegExp(pFind,"gi"), pReplace);
    }
}
function showQF() {
   var vQF = document.getElementById(browses + 'QF');
   var browsesFixed = document.getElementById(browses + 'Fixed');
   var zeroDetail;
   var vCurrentValue;
   var qfWidth;
   var brwsRecCount_scroller = $('#brwsRecCount_scroller');

   if (vQF) {
      if (vQF.style.display != 'none') {    //'Lock' fixed columns, hide quick filter
          if (brwsRecCount_scroller.length > 0) {
              brwsRecCount_scroller.animate({'margin-top':0});
          }
         $(vQF).slideUp(null, function(){
             vCurrentValue = document.detailform.currentrecord.value;
             $('#browsetool_qf').focus();
             zeroDetail = document.getElementById(vCurrentValue + "0detail");
             if (!zeroDetail || zeroDetail.style.display != "none") {
                 return;
             }
             $(browsesFixed).removeClass('BrowseFixedHidden');
         });
      } else {                            //'Unlock' fixed columns, show quick filter
         $(browsesFixed).addClass('BrowseFixedHidden');
         document.getElementById(browses + 'Body').scrollTop = 0;
         if (brwsRecCount_scroller.length > 0) {
              brwsRecCount_scroller.animate({'margin-top':$(vQF).css('height')});
          }
         $(vQF).slideDown(function(){
              if (document.getElementById(browses + 'Body').scrollLeft == 0) {
                  putFocus('qf1Col1');
              }
         });
      }
      scrollQuickFilter();
   }
}

function updateQF(pProgName) {
   //Make sure filter select is set to current filter
   var vFilter = document.getElementById('qfCurFilter').value;
   var vSel = document.getElementById('sFilterSelect');
   if (vSel.selectedIndex < 0 || vSel.options[vSel.selectedIndex].value != vFilter) {
      var i = 0;
      while(i < vSel.options.length - 1 && vSel.options[i].selectedIndex != vFilter){
          i++;
      }
      vSel.selectedIndex = i;
   }

   //Add hidden field telling browse to update filter upon reload
   var vHidden = document.createElement('input');
   vHidden.type = 'hidden';
   vHidden.name = 'qfUpdate';
   vHidden.id = 'qfUpdate';
   vHidden.value = 'y';
   document.detailform.appendChild(vHidden);

   processSearch(pProgName, 'applyFilter');     //Apply filter
}

function qfTog(pNum) {
   var vHid = document.getElementById('qf1Col' + pNum);
   var vVal;
   if (vHid) {
      vVal = vHid.value.toLowerCase();
      if (vVal == 'both') {
          vVal = 'Yes';
      } else if (vVal == 'yes') {
          vVal = 'No';
      } else {
          vVal = 'Both';
      }

      vHid.value = vVal;
      $('#qfTog' + pNum).html(vVal);

      if (vVal == 'Both') {
         document.getElementById('qfTd' + pNum).style.backgroundColor = '';
         document.getElementById('qfRst' + pNum).style.display = 'none';
      } else {
      	 document.getElementById('qfTd' + pNum).style.backgroundColor = gChangeColor;
         document.getElementById('qfRst' + pNum).style.display = 'block';
      }
   }
}

function qfReset(pNum) {
   var vType = vQfDefaults['qf' + pNum][2];
   var qf1ColElement = document.getElementById('qf1Col' + pNum);
   var qf2ColElement = document.getElementById('qf2Col' + pNum);
   var vLows, vHighs;
   if (vType == 'toggle') {
      document.getElementById('qf1Col' + pNum).value = 'Both';
      $('#qfTog' + pNum).html('Both');
   } else if (vType == 'time') {
      var qf1ColElementampm = document.getElementById('qf1Col' + pNum + 'ampm');
      var qf2ColElementampm = document.getElementById('qf2Col' + pNum + 'ampm');

      vLows  = vQfDefaults['qf' + pNum][0].split(' ');
      vHighs = vQfDefaults['qf' + pNum][1].split(' ');

      qf1ColElement.value = vLows[0];
      qf1ColElementampm.value = vLows[1];
      qf2ColElement.value = vHighs[0];
      qf2ColElementampm.value = vHighs[1];
   } else if (vType == 'datetime') {
      var qf1ColElementTime = document.getElementById('qf1Col' + pNum + 'time');
      var qf2ColElementTime = document.getElementById('qf2Col' + pNum + 'time');
	  var qf1ColElementTimeampm = document.getElementById('qf1Col' + pNum + 'timeampm');
      var qf2ColElementTimeampm = document.getElementById('qf2Col' + pNum + 'timeampm');

      vLows  = vQfDefaults['qf' + pNum][0].split(' ');
      vHighs = vQfDefaults['qf' + pNum][1].split(' ');

      qf1ColElement.value = vLows[0];
      qf1ColElementTime.value = vLows[1];
	  qf1ColElementTimeampm.value = vLows[2];
      qf2ColElement.value = vHighs[0];
      qf2ColElementTime.value = vHighs[1];
	  qf2ColElementTimeampm.value = vHighs[2];
   } else {
      qf1ColElement.value = vQfDefaults['qf' + pNum][0];
      qf2ColElement.value = vQfDefaults['qf' + pNum][1];
   }

   document.getElementById('qfRst' + pNum).style.display = 'none';
   document.getElementById('qfTd' + pNum).style.backgroundColor = '';
   qf1ColElement.style.backgroundColor = '';
   if (vType != 'toggle') {
       qf2ColElement.style.backgroundColor = '';
   }
}

function getElementForEvent(e) {
    var vReturn = null;
    if (!e) var e = window.event;	//Get event in IE
    if (!e) {
        return false;
    }
    if (e.target) {
        vReturn = e.target;			//Get element
    } else if (e.srcElement) {
        vReturn = e.srcElement;	//Get element in IE
    }
    if (vReturn && vReturn.nodeType == 3) { // for Safari bug
        vReturn = vReturn.parentNode;
    }
    return vReturn;
}
/*
handle scrolling of fixed browse divs using a trackpad
*/
function addFixedScroll(pBrowse) {
    if (browses == '') {
        browses = pBrowse;
    }
    $(document.getElementById(browses + "BodyFixed")).mousedown(function(e){
        if (e.which == 2){
           window.gFixedX = e.clientX;
           window.gFixedY = e.clientY;
           $(document).on('mousemove', trackFixedMouseDown);
        }
    });
    $(document).mouseup(function(e){
        if (e.which == 2){
           window.gFixedX = null;
           window.gFixedY = null;
           $(document).off('mousemove', trackFixedMouseDown);
        }
    });
}
function trackFixedMouseDown(e){
    var browseBody = $(document.getElementById(browses + "Body"));
    if (browseBody.length > 0) {
        if (window.gFixedX && e.clientX){
            browseBody.scrollLeft(browseBody.scrollLeft() + (e.clientX - window.gFixedX));
            window.gFixedX = e.clientX;
        }
        if (window.gFixedY && e.clientY){
            browseBody.scrollTop(browseBody.scrollTop() + (e.clientY - window.gFixedY));
            window.gFixedY = e.clientY;
        }
    }
}
function validateFilter(){
    if (gReturnMsg != "") {
        var filterList = document.getElementById("sFilterSelect");
        var rNewFilter = gReturnMsg.split("|filter|");
        var curFilter = document.getElementById("qfCurFilter");
        if (rNewFilter.length == 2 && filterList) {
            filterList.options[filterList.length] = new Option(rNewFilter[1], rNewFilter[0], true, true);
            if (curFilter) {
                curFilter.value = rNewFilter[0];
            }
        }
    }
}
function toggleQuickView(el, pNodeNumber){
    if (gDetailsView) {
        return;
    }
    gQVspan = el;
    var vCurrentValue = document.detailform.currentrecord.value;
    var contentDiv = document.getElementById(vCurrentValue + pNodeNumber + "div");
    if (contentDiv && contentDiv.style.display != "none") { //only display the tooltip if the detail is hidden
        return;
    }

    var elPosition = {}; //x,y
    var elSize = {}; //width,height
    var qvTitle, innerWrap;


    if (!gQVdivs.wrap) {gQVdivs.wrap = document.getElementById("quickViewWrap");}
    if (!gQVdivs.pointer) {gQVdivs.pointer = document.getElementById("qvpointer");}
    if (!gQVdivs.content) {gQVdivs.content = document.getElementById("quickViewContent");}
    if (!gQVdivs.body) {gQVdivs.body = document.getElementById(browses + "Body");}
    if (!gQVdivs.title) {gQVdivs.title = document.getElementById("qvTitle");}

    if (!gQVdivs.wrap) {
        gQVdivs.wrap = document.createElement("div");
        gQVdivs.wrap.id = "quickViewWrap";
        gQVdivs.wrap.style.zIndex = "200";
        gQVdivs.wrap.style.position = "absolute";
        gQVdivs.wrap.style.display = "none";
        document.getElementById("detailform").appendChild(gQVdivs.wrap);

        innerWrap = document.createElement("div");
        gQVdivs.wrap.appendChild(innerWrap);
        //innerWrap.style.border = "3px solid #ffffff";
        innerWrap.style.paddingLeft = "1px";
        innerWrap.style.paddingRight = "1px";
        innerWrap.style.paddingBottom = "1px";

        gQVdivs.title = document.createElement("div");
        innerWrap.appendChild(gQVdivs.title);
        gQVdivs.title.id = "qvTitle";
        gQVdivs.title.style.padding = "2px;"
        gQVdivs.title.style.marginBottom = "2px";

        gQVdivs.content = document.createElement("div");
        innerWrap.appendChild(gQVdivs.content);
        gQVdivs.content.id = "quickViewContent";
        gQVdivs.content.style.border = "1px solid #4E4E4E";
        gQVdivs.content.style.backgroundColor = "#FFFFFF";

        gQVdivs.pointer = document.createElement("div");
        document.getElementById("detailform").appendChild(gQVdivs.pointer);
        gQVdivs.pointer.id = "qvpointer";
        $(gQVdivs.pointer).html("&nbsp;");
        gQVdivs.pointer.style.display = "none";
    }
    gQVdivs.wrap.style.top = 0;
    gQVdivs.wrap.style.left = 0;

    if (gQVdivs.wrap && gQVdivs.wrap.style.display == "none" || gQVdivs.wrap.getAttribute("forRow") != pNodeNumber) {
        gQVdivs.wrap.style.display = "none";
        gQVdivs.pointer.style.display = "none";
        gQVdivs.wrap.setAttribute("forRow", pNodeNumber);
        gQVdivs.wrap.setAttribute("rowId", vCurrentValue);
        $(gQVdivs.title).html("<a id='qvClose' href='javascript:void(0)' onclick='closeQuickView();'>&nbsp;</a>&nbsp;" + el.innerHTML);

        if(contentDiv.innerHTML.length == 0 || gAlwaysFetch==true){
            setQuickViewVars();
            getbrowseDetail(browseDetailsProc,pNodeNumber, true);
        } else {
            $(gQVdivs.content).html(contentDiv.innerHTML.replace("<table width=","<table xwidth=")); //override default table widths
            $(contentDiv).html("");
            setQuickViewVars();
            gQVdivs.wrap.style.display = "inline";
            gQVdivs.pointer.style.display = "block";
            positionQuickView();
        }
    } else {
        closeQuickView();
    }
}
function repositionQuickView(){
    if (gQVdivs.wrap && gQVdivs.wrap.style.display != "none") {
       gQVdivs.wrap.style.top = 0;
       gQVdivs.wrap.style.left = 0;
       setQuickViewVars();
       positionQuickView();
    }
}
function closeQuickView(){
    var detailDiv;
    gQVspan = null;
    if (gQVdivs.wrap && gQVdivs.pointer && gQVdivs.content && gQVdivs.content.innerHTML != "") {
        gQVdivs.pointer.style.display = "none";
        gQVdivs.wrap.style.display = "none";
        detailDiv = document.getElementById(gQVdivs.wrap.getAttribute("rowid") + gQVdivs.wrap.getAttribute("forrow") + "div");
        if (detailDiv) {
            $(detailDiv).html(gQVdivs.content.innerHTML.replace("<table xwidth=", "<table width="));
        }
        $(gQVdivs.content).html("");
    }
}
function setQuickViewVars(){
    if (gQVspan) {
        var dialogMarginLeft = 105;
        var dialogMarginTop = -27;
        var elSize = getSize(gQVspan);
        var elPosition = getXY(gQVspan);

        if (elSize.width > 60) {
            dialogMarginLeft += 25;
        } else if (elSize.width < 40) {
            dialogMarginLeft -= 25;
        }
        dialogMarginLeft = 0;
        dialogMarginTop = 0;

        gQVpositions.qvLeft = (elPosition.x + dialogMarginLeft);
        gQVpositions.pTop = (elPosition.y - 0);
        gQVpositions.pLeft = (elPosition.x + elSize.width - 3);
        gQVpositions.qvTop = null;

        gQVdivs.wrap.style.left = gQVpositions.qvLeft + "px";
        gQVdivs.pointer.style.top = (gQVpositions.pTop - 1) + "px";
        gQVdivs.pointer.style.left = gQVpositions.pLeft + "px";
        gQVdivs.wrap.style.top =  (elPosition.y + dialogMarginTop) + "px";
    }
}
function positionQuickView(){
    var bufferTop = 75;
    var bufferBottom;
    if (gQVdivs.body && gQVdivs.wrap && gQVdivs.pointer) {
        bufferBottom = parseInt(gQVdivs.body.style.height, 10) + bufferTop - 25;
        if (!gQVpositions.qvTop) {
            gQVpositions.qvTop = parseInt(gQVdivs.wrap.style.top, 10) - Math.ceil(getSize(gQVdivs.wrap).height/2);
        }
        gQVdivs.wrap.style.top = (gQVpositions.qvTop - gQVdivs.body.scrollTop) + "px";
        gQVdivs.wrap.style.left = (gQVpositions.qvLeft - gQVdivs.body.scrollLeft) + "px";
        gQVdivs.pointer.style.top = (gQVpositions.pTop - gQVdivs.body.scrollTop) + "px";
        gQVdivs.pointer.style.left = (gQVpositions.pLeft - gQVdivs.body.scrollLeft) + "px";

        if (parseInt(gQVdivs.wrap.style.top, 10) < bufferTop) {
            if (parseInt(gQVdivs.pointer.style.top, 10) > bufferTop) {
                gQVdivs.wrap.style.top = bufferTop + "px";
            } else {
                gQVdivs.wrap.style.top = gQVdivs.pointer.style.top;
            }
        } else if (parseInt(gQVdivs.wrap.style.top, 10) + getSize(gQVdivs.wrap).height > bufferBottom) {
            if (parseInt(gQVdivs.pointer.style.top, 10) + parseInt(gQVdivs.pointer.style.height, 10) < bufferBottom) {
                gQVdivs.wrap.style.top = (bufferBottom - getSize(gQVdivs.wrap).height) + "px";
            } else {
                gQVdivs.wrap.style.top = (parseInt(gQVdivs.pointer.style.top, 10) - getSize(gQVdivs.wrap).height + parseInt(gQVdivs.pointer.style.height, 10)) + "px";
            }
        } else if (parseInt(gQVdivs.wrap.style.top, 10) > parseInt(gQVdivs.pointer.style.top, 10)) {
            gQVdivs.wrap.style.top = gQVdivs.pointer.style.top;
        }
        if (parseInt(gQVdivs.wrap.style.left, 10) < (parseInt(gQVdivs.pointer.style.left, 10) + 20)) {
            gQVdivs.wrap.style.left = (parseInt(gQVdivs.pointer.style.left, 10) + 20) + "px";
        }
    }
}
function prepareBrowse() {
    prepareBrowseData();
    var browsesBodyFixed = document.getElementById(browses + "BodyFixed");
    var browsesBody = document.getElementById(browses + "Body");
    /* This will disable text selection in the browses.  Disabled per PR#1674763
    if (gIsIE) {
        browsesBody.onselectstart = disableSelect;
        if (browsesBodyFixed) {
            browsesBodyFixed.onselectstart = disableSelect;
        }
    } else {
        browsesBody.onmousedown = disableSelect;
        if (browsesBodyFixed) {
            browsesBodyFixed.onmousedown = disableSelect;
        }
    }
    */
    fixBrowses();
    if (browsesBodyFixed) {
        addFixedScroll();
    }
}
function getXY(el) {
    var curleft = 0;
    var curtop = 0;
    if(el.offsetParent){
        while(1) {
          curleft += el.offsetLeft;
          curtop += el.offsetTop;
          if(!el.offsetParent) {
              break;
          }
          el = el.offsetParent;
        }
    } else if(el.x){
        curtop += el.y;
        curleft += el.x;
    }
    return {"x":curleft,"y":curtop};
}
function getSize(el) {
    return {"width":getElementWidth(el),"height":getElementHeight(el)};
}
function getElementHeight(el) {
    var height = 0;
    if (el) {
        height = el.offsetHeight;
        if (!height) {
            height = el.scrollHeight;
            if (!height) {
                height = el.clientHeight;
            }
        }
    }
    return height;
}
function getElementWidth(el) {
    var width = 0;
    if (el) {
        width = el.offsetWidth ;
        if (!width) {
            width = el.scrollWidth;
            if (!width) {
                width = el.clientWidth;
            }
        }
    }
    return width;
}
function getWindowSize(){
    return {"height":getWindowHeight(),"width":getWindowWidth()};
}
function getWindowHeight(){
    if (gIsIE || gIsOpera) {
      if( document.documentElement && (document.documentElement.clientHeight) && !gIsOpera ) {
           return document.documentElement.clientHeight;
       } else {
           return document.body.clientHeight;
       }
   } else {
       return window.innerHeight;
   }
}
function getWindowWidth(){
    if (gIsIE || gIsOpera) {
      if( document.documentElement && (document.documentElement.clientWidth) && !gIsOpera ) {
           return document.documentElement.clientWidth;
       } else {
           return document.body.clientWidth;
       }
   } else {
       return window.innerWidth;
   }
}
function getDocumentSize(){
    return {"height":getDocumentHeight(),"width":getDocumentWidth()}
}
function getDocumentHeight(){
    return document.body.scrollHeight;
}
function getDocumentWidth(){
    return document.body.scrollWidth;
}
function prepareBrowseData() {
    var vNumRows = parseInt(document.getElementById("numRows").value, 10);
    var vNumCols = parseInt(document.getElementById("numCols").value, 10);
    var vNumLocked = parseInt(document.getElementById("numLocked").value, 10);
    var vDblClick = document.getElementById("dblClick").value;
    var vR1 = new RegExp(" !rc!", "gi");
    var vR2 = new RegExp("!r!link", "gi");
    var vR3 = new RegExp('"', "gi");
    var vF1;
    var vF2;
    var vRR1;

    if (vDblClick!='') {
        if (vDblClick.toLowerCase().indexOf("ondblclick")==-1) {
            vDblClick = 'onDblclick="' + vDblClick.replace(vR3, '\\"') + '"';
        }
    }

    for (var i = 1; i <= vNumRows; i++) {
        vBrowseData[i] = "<tr " + zR[i] + " delRow='" + i + "' class='BB' " + vDblClick + " onclick=BRS(this.id)>";
        if (vNumLocked>0){
             vBrowseDataFixed[i] = "<tr id='" + gRowHeight[i] + "fixed' class='BB' " + vDblClick + " onclick=BRS(this.id)>";
        }
        for (var j = 1; j <= vNumCols; j++) {
            try {
                if (zF && zF[i] &&  zF[i][j] && zF[i][j] != undefined && zF[i][j] != '') {
                     vF1 = "<span style='color:" + zF[i][j] + ";'>"; vF2 = "</span>";
                } else {
                     vF1 = ""; vF2 = "";
                }
            } catch(er) { vF1 = ""; vF2 = ""; }

            try {
                if (zB && zB[i] && zB[i][j] && zB[i][j] != undefined && zB[i][j] != ''){
                    vRR1 = zB[i][j];
                 } else {
                     vRR1 = "";
                 }
             } catch(er) { vRR1 = ""; }

            vBrowseData[i] += "<td " + (j == 1 ? 'scope="row" ' : '') + zO[j].replace(vR1, vRR1) + vF1 + zD[i][j] + vF2 + zC[j] + "</td>";
            if (j<=vNumLocked) {
                vBrowseDataFixed[i] += "<td " + zO[j].replace(vR1, vRR1) + vF1 + zD[i][j].replace(vR2, "!r!linkfixed") + vF2 + zC[j] + "</td>";
            }
        }
        vBrowseData[i] += "</tr>" + zBD;
        if (vNumLocked > 0) {
            vBrowseDataFixed[i] += "</tr>";
        }
    }
}
function showFieldHotKeys(el, fieldType){
    var fieldKeys = {
        'date' : {
            't' : 'today',
            'm/r' : 'tomorrow',
            'y' : 'yesterday'
        },
        'time' : {
            'a' : 'AM',
            'p' : 'PM',
            'n' : 'noon',
            'm' : 'midnight',
            'c/t': 'current time'
        }
    };
    if (!el || !fieldType || !fieldKeys[fieldType]) {
        return;
    }
    if (fieldKeys[fieldType]) {
        var tipWrap, keyWrap, keyDiv, txtDiv, tipWidth, xyPos, elHeight;
        tipWidth = 106;
        xyPos = getXY(el);
        elHeight = getElementHeight(el);
        tipWrap = document.getElementById('tipWrap');
        if (!tipWrap) {
            tipWrap = document.createElement('div');
            tipWrap.id = 'tipWrap';
            tipWrap.style.position = 'absolute';
            tipWrap.style.backgroundColor = "#FFFFFF";
            tipWrap.style.width = tipWidth + "px";
            tipWrap.style.padding = "1px";
            tipWrap.style.border = "1px solid black";
            document.body.appendChild(tipWrap);
        }
        $(tipWrap).html("");
        tipWrap.style.top = (xyPos.y + elHeight + 1) + 'px';
        tipWrap.style.left = xyPos.x + 'px';
        for (var key in fieldKeys[fieldType]) {
            keyWrap = document.createElement('div');
            keyWrap.style.cssFloat = "left";
            keyWrap.style.styleFloat = "left";
            keyWrap.style.width = tipWidth + "px";
            keyWrap.style.paddingBottom = "1px";

            keyDiv = document.createElement('div');
            txtDiv = document.createElement('div');

            keyDiv.style.cssFloat = "left";
            keyDiv.style.styleFloat = "left";
            keyDiv.style.textAlign = "right";
            keyDiv.style.width = '26px';
            keyDiv.style.whiteSpace = 'nowrap';

            $(keyDiv).html("<b>" + key + "</b> : ");

            txtDiv.style.cssFloat = "left";
            txtDiv.style.styleFloat = "left";
            txtDiv.style.whiteSpace = 'nowrap';
            $(txtDiv).html("&nbsp;" + fieldKeys[fieldType][key]);

            keyWrap.appendChild(keyDiv);
            keyWrap.appendChild(txtDiv);
            tipWrap.appendChild(keyWrap);
        }
        tipWrap.style.display = 'block';
    }
}
function hideFieldHotKeys(){
    var tipWrap = document.getElementById('tipWrap');
    if (tipWrap) {
        tipWrap.style.display = 'none';
    }
}
function attachCleanup(pList) {
    if(gIsOpera){
         return;
    }
    var vFieldList = pList.split(",");
    var vField;
    var vFieldById;

   for (var i = 0; i < vFieldList.length; i++) {
      vField = document.getElementsByName(vFieldList[i])[0]; /* get first element */
      if (vField == undefined) {
          vFieldById = document.getElementById(vFieldList[i]);
         if (vFieldById) { /* if first element does not exist attempt to obtain element by id */
             vField = vFieldById;
         }
      }

      if (vField != undefined) {
          addEvent(vField, 'blur', cleanupText);
      }
   }
}
function cleanupText(e) {
    if (!e) {
        var e = window.event;
    }

    var hElement = getElementForEvent(e);
    if (hElement.value != ""){
        var str = hElement.value;
        //define the range of the ASCII (decimal) characters we want to accept
        var charLowLimit  = 32;
        var charHighLimit = 126;

        //define the codes that we want to replace with an equivalent character
        var specialCharsToReplace = {
              "8216" : String.fromCharCode(39) //slanty single quote forward (‘)
             ,"8217" : String.fromCharCode(39) //slanty single quote backward (’)
             ,"8220" : String.fromCharCode(34) //slanty double quotes forward (“)
             ,"8221" : String.fromCharCode(34) //slanty double quotes backward (”)
             ,"8222" : String.fromCharCode(34) //lower double quotes backward („)
             ,"8223" : String.fromCharCode(34) //another slanty double quotes forward
             ,"8226" : "*" //bullet(•)
             ,"8230" : "..." //ellipsis (…)
             ,"8209" : String.fromCharCode(45) // dash (-)
             ,"8211" : String.fromCharCode(45) // dash (-)
             ,"8215" : String.fromCharCode(95) // non-standard underscore
             ,"8299" : String.fromCharCode(32) // non-standard space
             ,"188" : "1/4" // unrecognized space // super-script 1/4
             ,"189" : "1/2" // unrecognized space // super-script 1/2
             ,"190" : "3/4" // unrecognized space // super-script 3/4
             ,"169" : "(C)"
             ,"174" : "(R)"
             ,"8482" : "(TM)"
             ,"8364" : "(E)"
             ,"8252" : "!!"
             ,"8759" : "::"
             ,"8788" : ":="
             ,"8773" : "~="
             ,"177" : "+-"
             ,"8723" : "-+"
             ,"8810" : "<<"
             ,"8804" : "<="
             ,"8594" : "->"
             ,"8805" : ">="
             ,"8811" : ">>"
             ,"8211" : "-"
        };

        // Spanish and accented characters below - only do this when not allowing special ..only do this when using UTF-8
        if (document.getElementById('AllowSpecial').value == 'false') { /* document.inputEncoding.toLowerCase() == 'utf-8') { */
            $.extend(specialCharsToReplace, {
                "241" : "n"
               ,"209" : "N"
               ,"225" : "a"
               ,"193" : "A"
               ,"233" : "e"
               ,"201" : "E"
               ,"237" : "i"
               ,"205" : "I"
               ,"243" : "o"
               ,"211" : "O"
               ,"250" : "u"
               ,"218" : "U"
               ,"191" : "?"
               ,"161" : "!" });
        };

        //replace linebreaks with a temp char
        str = str.replace(/\n/g, String.fromCharCode(224));

        //replace tabs tabs
        str = str.replace(/\t/g, "        ");

        //replace special characters and omit non-standard characters
        for (var i = 0; i < str.length; i++) {
            //replace special characters with their equivalent values
            if (specialCharsToReplace[str.charCodeAt(i)]){
                str = str.replace(str.charAt(i), specialCharsToReplace[str.charCodeAt(i)]);
            }


            /* if (document.inputEncoding.toLowerCase() == 'utf-8') { */
            if (document.getElementById('AllowSpecial').value == 'false') {
                //if the char is not within the specified range, mark it with a temp char.
                if ((str.charCodeAt(i) < charLowLimit || str.charCodeAt(i) > charHighLimit) && str.charAt(i) != String.fromCharCode(224)){
                    str = str.replace(str.charAt(i), String.fromCharCode(181));
                }
            }
        }

        //replace temp chars with their actual values.
        var rExp1 = new RegExp(String.fromCharCode(224), "g");
        str = str.replace(rExp1, String.fromCharCode(10)); //replace all linebreak chars with a linefeed char

        var rExp2 = new RegExp(String.fromCharCode(181), "g");
        str = str.replace(rExp2, ""); //replace all characters marked for removal

        //set the filtered value back into the textarea
        hElement.value = str;
    }
}
function checkSpelling(){
    message("Spell Checking is no longer supported.");
}
function addQuickPrint(cReportName,cProgram,cParams){
    if(!cParams)cParams='';
    validateForm('quickPrint','quickhttp000.w' + '?qpReportName=' + cReportName + '&qpReportProgram=' + cProgram + '&qpParams=' + cParams,'donothing');
}
function detectClose(e){
    if (window.doBeforeClose) {
        if (gDoClosingActions != "no") {
            gDoClosingActions = "yes";
            gSynchronous = false;
            doBeforeClose();
        }
    }

    //Prevent Chrome/Edge from looking busy after new pages loads
    try {
        if (gIsChrome || gIsMicrosoftEdge)
            unChangeCursor();
    }
    catch(er) {}
}
function setBrowseResize(){
    if (gDetailsView) {
        changeBrowseSize();
        addEvent(window, "resize", changeBrowseSize);
        return;
    }
    var isPopup = document.getElementById('isPopup');
   //add resize events to browse table header cells
   if (browses != "") {
       var cells;
       var browseHeader = document.getElementById(browses + "HeaderTable");
       var browseHeaderFixed = document.getElementById(browses + "Fixed");
       if (browseHeaderFixed) {
           for (var i = 0; i < browseHeaderFixed.childNodes.length; i++) {
               if (browseHeaderFixed.childNodes[i].tagName == "TABLE") {
                   browseHeaderFixed = browseHeaderFixed.childNodes[i];
                   break;
               }
           }
       }
       if (browseHeader) {
           if (!isPopup || isPopup.value != "true" || document.getElementById('BrowseFillColumn')) {
               browseHeader.style.width = '100%';
           }
           cells = browseHeader.rows[0].cells;
           for (var i = 0; i < cells.length; i++) {
               addEvent(cells[i], "mousemove", watchBrowseHeaderResize);
               addEvent(cells[i], "mouseout", finishBrowseHeaderResize);
               if (browseHeaderFixed && browseHeaderFixed.rows[0] && browseHeaderFixed.rows[0].cells[i]){
                   addEvent(browseHeaderFixed.rows[0].cells[i], "mousemove", watchBrowseHeaderResize);
                   addEvent(browseHeaderFixed.rows[0].cells[i], "mouseout", finishBrowseHeaderResize);
               }
           }
       }
       changeBrowseSize();
       addEvent(window, "resize", changeBrowseSize);
   }
}

function clearSecCache() {
    message("Are you sure you wish to clear your security cache?","", 0,0,0,"Yes",'validateForm("clearCache","securitycachehttp.w", "donothing")', "No", "");
}
function initButtonHotKeys(){
    if (!gIsMac) {
        var hotKeyIDs = document.getElementById('hButtonHotKeyIDs');
        var hotKeys = document.getElementById('hButtonHotKeys');
        if (hotKeyIDs && hotKeys) {
            hotKeyIDs = hotKeyIDs.value.split(",");
            hotKeys = hotKeys.value.split(",");
            if (hotKeyIDs.length == hotKeys.length) {
                for (var i = 0; i < hotKeys.length; i++) {
                    gButtonHotKeys["_" + hotKeys[i].charCodeAt(0)] = hotKeyIDs[i];
                }
            }
        }
        addEvent(document, "keydown", checkHotKeys);
    }
}
function initColorPickers(){
    $('.fwColPick').each(function(){
        var $this = $(this);
        var $input = $this.find('input');
        var oCallbacks = {};
        rCallbacks = ['onBeforeShow','onShow','onChange','onSubmit','onHide'];
        for (var i = 0; i < rCallbacks.length; i++) {
            if ($this.attr('data-callback-' + rCallbacks[i])) {
                oCallbacks[rCallbacks[i]] = eval($this.attr('data-callback-' + rCallbacks[i]));
            }
        }
        $input.on('keydown', function(e){
            if (/* num pad numbers */
                (e.keyCode >= 96 && e.keyCode <= 105) ||
                 /* regular number keys */
                (e.keyCode >= 48 && e.keyCode <= 57 && !e.shiftKey) ||
                /* letters A - F */
                (e.keyCode >= 55 && e.keyCode <= 70) ||
                /* enter,tab,delete,backspace,left &right arrows */
                (e.keyCode == 13 || e.keyCode == 9 || e.keyCode == 8  || e.keyCode == 46 || e.keyCode == 37 || e.keyCode == 39)) {
                return true;
            } else {
                e.preventDefault();
                return false;
            }
        }).on('blur', function(){
            var color1 = this.value.toUpperCase();
            var color2 = $.colpickHsbToHex($.colpickHexToHsb(color1)).toUpperCase();
            if (color1 != color2) {
                this.value = '';
                $this.css('background-color', '#FFFFFF');
                setPickerDisplay($input);
            } else {
                this.value = color1;
                $this.colpickHide();
                $this.colpickSetColor(color1);
                $this.css('background-color', '#' + color1);
                setPickerDisplay($input);
                if (oCallbacks['onSubmit']) {
                     oCallbacks['onSubmit']($input.get(0), $this.get(0), hex);
                }
            }
        });

        setPickerDisplay($input);
        $this.colpick({
        	colorScheme:'dark',
        	layout:$this.attr('data-layout'),
        	color:$input.val() || 'FFFFFF',
            onBeforeShow:function(el) {
                $this.data('apply', false);
                $(el).data('uiEl', $this);
                if (oCallbacks['onBeforeShow']) {
                    oCallbacks['onBeforeShow']($input.get(0), el);
                }
        	},
            onShow:function(el) {
                if (!isEnabled($input.attr('id'))) {
                    $(el).hide();
                    return false;
                }
                window.setTimeout(function(){
                    positionPicker(el);
                }, 0);
                setPickerDisplay($input);
                if (oCallbacks['onShow']) {
                    oCallbacks['onShow']($input.get(0), el);;
                }
        	},
            onHide:function(el) {
                if (!$this.data('apply')) {
                    $this.css('background-color', '#' + ($input.val() || 'FFFFFF'));
                    setPickerDisplay($input);
                }
                if (oCallbacks['onHide']) {
                    oCallbacks['onHide']($input.get(0), el);
                }
            },
            onChange:function(hsb,hex,rgb,el) {
                $this.css('background-color', '#' + hex);
                setPickerDisplay($input,hsb);
                if (oCallbacks['onChange']) {
                    oCallbacks['onChange']($input.get(0), el, hex);
                }
        	},
            onSubmit:function(hsb,hex,rgb,el) {
                 $this.data('apply', true);
                 $input.val(hex.toUpperCase());
                 $this.colpickHide();
                 $this.css('background-color', '#' + ($input.val() || 'FFFFFF'));
                 setPickerDisplay($input, hsb);
                 if (oCallbacks['onSubmit']) {
                     oCallbacks['onSubmit']($input.get(0), el, hex);
                 }
            }
        });
    });
    function positionPicker(el){
        var $el = $(el);
        var elOffsets = $el.offset();
        var elHeight = $el.height();
        var elWidth = $el.width();
        var windowHeight = getWindowHeight();
        var windowWidth = getWindowWidth();
        var scrollTop = $(window).scrollTop();
        var scrollLeft = $(window).scrollLeft();
        var uiEl = $el.data('uiEl');
        var buffer = getScrollbarWidth()+ 5;
        if (elOffsets.top < 0) {
            $el.css('top', (uiEl.offset().top + 20) + 'px');
            elOffsets = $el.offset();
        }
        if (elOffsets.left < 0) {
            $el.css('left', uiEl.offset().left + 'px');
            elOffsets = $el.offset();
        }
        if (elOffsets.top + elHeight + buffer > windowHeight + scrollTop) {
            $el.css('top', '-=' + (elHeight + 20));
            if ($el.offset().top < scrollTop) {
                $el.css('top', scrollTop + 'px');
            }
        }
        if (elOffsets.left < 0 || (elOffsets.left + elWidth + buffer> windowWidth + scrollLeft)) {
            $el.css('left', (windowWidth + scrollLeft - (elWidth + buffer)));
        }
    }
}
function setPickerDisplay(input, hsb){
    var el = $(input).parent();
    var color = input.val() || 'FFFFFF';
    if (isEnabled(input.attr('id'))) {
        if (!hsb) {
            hsb = $.colpickHexToHsb(color);
        }
        el.removeClass("hidePicker");
        if (hsb.b < 60) {
            el.addClass("lightPicker");
        } else {
            el.removeClass("lightPicker");
        }
    } else {
        el.addClass("hidePicker");
    }
}
function clearTimer(key){
    if (!key) {
        return;
    }
    if (gTimer[key]) {
        window.clearTimeout(gTimer[key]);
        delete gTimer[key];
    }
}
function setTimer(key, fn, delay){
    clearTimer(key);
    if (!key || typeof fn != 'function' || typeof delay != 'number') {
        return;
    }
    gTimer[key] = window.setTimeout(fn, delay);
}
function showFilterMenu(){
    var sFilterList = $('#sFilterList');
    var sFilterSelect = $('#sFilterSelect');

    $('option', sFilterList).remove();
    $('option', sFilterSelect).clone().appendTo(sFilterList);
    getFilterDetail2();
}
function showChartDetailTip() {
    if (gDialogIFrame) {
        skyTip.hide();
        return;
    }
    skyTip.show($('#menu_chart')
        .attr('tooltip', $('#dChartDetails').html())
        .attr('tooltip-position', 'top'));
}
function closeFilterMenu(){
    hideFilterDetailTip();
}
function closeChartMenu(){
    hideChartDetailTip();
}
function hideChartDetailTip() {
    skyTip.hide();
}
function hideFilterDetailTip() {
    skyTip.hide();
}
function showFilterDetailTip() {
    skyTip.show($('#menu_filters')
        .attr('tooltip', $('#dFilterDetails').html())
        .attr('tooltip-position', 'top'))
}
function reflowPage(){
    window.setTimeout(function(){
        document.body.className = document.body.className;
    }, 100);
}
function initEelWatch(){
    var eelWraps  = $('div.eelWrap');
    if (eelWraps.length > 0) {
        window.gEels = [];
        eelWraps.each(function(){
            addEllToWatch(this);
        });
        watchEels();
        window.setInterval(watchEels, 1000);
    }
}
function addEllToWatch(DOMeelWrap){
    if (!DOMeelWrap) {
        return;
    }
    if (gIsIE7) {
        if (!$(DOMeelWrap).is(':reallyvisible')) {
            DOMeelWrap.setAttribute("hidden", "hidden");
        }
    }
    if (!window.gEels) {
        window.gEels = [];
    }
    window.gEels.push({'eelWrap':DOMeelWrap, 'eelValue': $('td.eelValue input', DOMeelWrap).get(0),'eelDesc': $('td.eelDesc input', DOMeelWrap).get(0)});
}
function watchEels(){
    var eelWrap, eelValue, eelDesc;
    for (var i = 0; i < gEels.length; i ++) {
        try {
            eelWrap = gEels[i].eelWrap;
            eelValue = gEels[i].eelValue;
            eelDesc = gEels[i].eelDesc;
            if (eelWrap && eelValue) {
                if (eelWrap.style.visibility != eelValue.style.visibility) {
                    if (gIsIE7) {
                       if (eelValue.style.visibility == 'hidden') {
                           eelWrap.setAttribute('hidden','true');
                        } else {
                            eelWrap.removeAttribute('hidden');
                        }
                    }
                    eelWrap.style.visibility = eelValue.style.visibility;
                }
                if (eelWrap.style.display != eelValue.style.display) {
                    eelWrap.style.display = eelValue.style.display;
                }
                if (eelDesc) {
                    if (eelDesc.style.visibility == 'hidden' || eelDesc.style.display == 'none') {
                        $(eelDesc).parent().css('display','none');
                    } else {
                        $(eelDesc).parent().css('display','table-cell');
                    }
                }
                eelWrap.style.width = ($('table', eelWrap).width() - 1) + 'px';
            }
            if (gIsIE7) {
                if (hasAttribute(eelWrap, "hidden")) {
                    if ($(eelWrap).is(':reallyvisible')) {
                        eelWrap.removeAttribute("hidden");
                    }
                } else {
                    if (!$(eelWrap).is(':reallyvisible')) {
                        eelWrap.setAttribute("hidden","hidden");
                    }
                }
            }
        } catch(ex){}
    }
}
function showEel(pId){
    if (!pId) {
        return;
    }
    var eelInput, eelWrap, idList = pId.split(',');
    for (var i = 0; i < idList.length; i++) {
        eelInput = document.getElementById(idList[i]);
        eelWrap = document.getElementById(idList[i] + "wrap");
        if (!eelInput || !eelWrap) {
            continue;
        }
        eelInput.style.visibility = 'visible';
        eelWrap.style.visibility = 'visible';
        eelWrap.removeAttribute("hidden");
    }
}
function hideEel(pId){
    if (!pId) {
        return;
    }
    var eelInput, eelWrap, idList = pId.split(',');
    for (var i = 0; i < idList.length; i++) {
        eelInput = document.getElementById(idList[i]);
        eelWrap = document.getElementById(idList[i] + "wrap");
        if (!eelInput || !eelWrap) {
            continue;
        }
        eelInput.style.visibility = 'hidden';
        eelWrap.style.visibility = 'hidden';
        eelWrap.setAttribute("hidden", "hidden");
    }
}
function openAddCustomArea(pHomePage, pDisplayOrder) {
    if (document.detailform.hCustomAreaHomePage) {
        document.detailform.hCustomAreaHomePage.value = pHomePage;
    } else {
        $(document.detailform).append("<input type='hidden' id='hCustomAreaHomePage' name='hCustomAreaHomePage' value='" + pHomePage + "' />");
    }
    if (document.detailform.hCustomAreaDisplayOrder) {
        document.detailform.hCustomAreaDisplayOrder.value = pDisplayOrder;
    } else {
        $(document.detailform).append("<input type='hidden' id='hCustomAreaDisplayOrder' name='hCustomAreaDisplayOrder' value='" + pDisplayOrder + "' />");
    }
    openNewWindow('ssecrbrws021.w', 1000, 700, 0, 'browse');
}
function removeLoadingClasses(){
    $('#pageOuterWrap').removeClass('loading');
    $('#pageContentWrap').removeClass('loading');
    $('#pageFooterWrap').removeClass('loading');
}
function fixIEFieldsets(container){
    if (gIsIE || (gIsChrome && brws.version > 54 && brws.version < 102)) {               
        if (!container) {
            var container = document.body;
        }
        $('fieldset legend', container).each(function(){
           $(this).replaceWith("<div class='legend' id='" + this.id + "'>" + this.innerHTML + "</div>");
        });
        reflowPage();
    }
}
function setToolLinkEvents(){
    if (gIsIpad) {
        return;
    }
    $('#controlBarRight li a.toolLink').mouseenter(function(){
        var _this = this;
        setTimer('controlBarRightLinks', function(){
            var span = $('span.expandText', _this);
            span.animate({'width':(getAutoSize(span,'width')) + "px"}, 200);
        }, 500);
    }).mouseleave(function(){
        clearTimer('controlBarRightLinks')
    });
    $('#controlBarRight').mouseleave(function(){
        clearTimer('controlBarRightLinks');
        $('a.toolLink span.expandText', this).stop().animate({'width':'0px'}, 200);
    });

    if (browses != "") {
        $('ul.TitleButtonTable li a.toolLink').mouseenter(function(){
            var _this = this;
            setTimer('TitleButtonTable', function(){
                clearTimer('TitleButtonTable');
                $(_this).animate({'width':getAutoSize(_this,'width') + "px"}, 200);
            }, 500);
        }).mouseleave(function(){
            clearTimer('TitleButtonTable');
        });
        $('ul.TitleButtonTable').mouseleave(function(){
            var _this = this;
            setTimer('TitleButtonTable', function(){
                $('a.toolLink', _this).stop().animate({'width':'1px'}, 200);
            },200);
        });

        $('#filterButtons a').mouseenter(function(){
            var _this = this;
            setTimer('filterButtons', function(){
                clearTimer('filterButtons');
                $(_this).animate({'width':getAutoSize(_this,'width') + "px"}, 200);
            }, 500);
        }).mouseleave(function(){
            clearTimer('filterButtons');
        });
        $('#filterButtons').mouseleave(function(){
            var _this = this;
            setTimer('filterButtons', function(){
                clearTimer('filterButtons');
                $('a', _this).stop().animate({'width':'1px'}, 200);
            },200);
        });
    }
}
function getAutoSize(el, prop){
    if (!el) {
        return 0;
    }
    if (!prop) {
        var prop = 'width';
    } else if (prop != 'width') {
        prop = 'height';
    }
    el = $(el);
    var isVisible = el.is(':visible');
    var elem;
    if (isVisible) {
        elem = el.clone().css(prop,"auto").insertBefore(el);
    } else {
        elem = el.clone().css({prop:"auto",'visibility':'visible','display':'inline-block'}).insertBefore(el);
    }
    var size;
    if (prop == "width"){
        size = elem.width();
    } else {
        size = elem.height();
    }
    elem.remove();
    return size;
}



/*-skycoder functions----------------------------------------------------------------------------------------*/
function hideFields(pFieldList) {
   var vFieldList = pFieldList.split(",");
   var vField, vNewClass, vFieldMult;

   for (var i=0; i < vFieldList.length; i++) {
      vField = document.getElementsByName(vFieldList[i])[0]; /* get first element */
      if (vField == undefined) {
         if (document.getElementById(vFieldList[i])) { /* if first element does not exist attempt to obtain element by id */
             vField = document.getElementById(vFieldList[i]);
         } else  { /* element not found */
            continue;
         }
      }
      if (vField) {
          vField.style.display = 'none';
      }
      if ((vField.tagName.toLowerCase() == "input" && vField.getAttribute("type") == "text" && !document.getElementById(vFieldList[i] + "gy")) || vField.tagName.toLowerCase() == "textarea") {
         vField.readOnly = true;
         if (document.getElementById(vFieldList[i] + "ampm")) { /* Time */
             document.getElementById(vFieldList[i] + "ampm").style.display = 'none';
         }
         if (document.getElementById(vFieldList[i] + "area")) { /* Phone Area Code */
             document.getElementById(vFieldList[i] + "area").style.display = 'none';
         }
         if (document.getElementById(vFieldList[i] + "ext")) { /* Phone Extension */
             document.getElementById(vFieldList[i] + "ext").style.display = 'none';
         }
         if (document.getElementById(vFieldList[i] + "anchor")) { /* Date Calendar */
            try {
               if (gCalendar.target && gCalendar.target == vField.form.name + "." + vFieldList[i]) {
                   gCalendar.hide();
               }
            } catch (er) {}
            document.getElementById(vFieldList[i] + "anchor").style.display = 'none';
         }
      }
   }
}
function showFields(pFieldList) {
   var vFieldList = pFieldList.split(",");
   var vField, vNewClass, vFieldMult;

   for (var i=0; i < vFieldList.length; i++) {
      vField = document.getElementsByName(vFieldList[i])[0]; /* get first element */
      if (vField == undefined) {
         if (document.getElementById(vFieldList[i])) { /* if first element does not exist attempt to obtain element by id */
             vField = document.getElementById(vFieldList[i]);
         } else  { /* element not found */
            continue;
         }
      }
      if (vField) {
          vField.style.display = '';
      }
      if ((vField.tagName.toLowerCase() == "input" && vField.getAttribute("type") == "text" && !document.getElementById(vFieldList[i] + "gy")) || vField.tagName.toLowerCase() == "textarea") {
         vField.readOnly = true;
         if (document.getElementById(vFieldList[i] + "ampm")) { /* Time */
             document.getElementById(vFieldList[i] + "ampm").style.display = '';
         }
         if (document.getElementById(vFieldList[i] + "area")) { /* Phone Area Code */
             document.getElementById(vFieldList[i] + "area").style.display = '';
         }
         if (document.getElementById(vFieldList[i] + "ext")) { /* Phone Extension */
             document.getElementById(vFieldList[i] + "ext").style.display = '';
         }
         if (document.getElementById(vFieldList[i] + "anchor")) { /* Date Calendar */
            try {
               if (gCalendar.target && gCalendar.target == vField.form.name + "." + vFieldList[i]) {
                   gCalendar.hide();
               }
            } catch (er) {}
            document.getElementById(vFieldList[i] + "anchor").style.display = '';
         }
      }
   }
}
function flagAsRequired(pField,pLabel) {
    if (!pField || !pLabel) {
        return;
    }
    pField = pField.replace(/ /g, '');
    pLabel = pLabel.replace(/ /g, '');
    var vEelLinkId;
    if (document.getElementById(pField)) {
        gExtraValidationField.push(pField);
    }
    if (document.getElementById(pLabel)) {
        gExtraValidationLabel.push(pLabel);
        if (document.getElementById(pLabel).innerHTML.indexOf("*&nbsp;") < 0) {
            $(document.getElementById(pLabel)).html(document.getElementById(pLabel).innerHTML.replace("&nbsp;&nbsp;","*&nbsp;"));
        }
        if(document.getElementById(pLabel).firstChild.id != "undefined"){
            vEelLinkId = document.getElementById(pLabel).firstChild.id;
            if (document.getElementById(vEelLinkId)) {
                if(document.getElementById(vEelLinkId).innerHTML.indexOf("*&nbsp;")< 0) {
                    $(document.getElementById(vEelLinkId)).html("*&nbsp;" + document.getElementById(vEelLinkId).innerHTML);
                }
            }
        }
    }
}
function initSkycoderUI(){
    addEvent(document, "contextmenu", showSkycoderContextMenu);
    addEvent(document, 'click', hideSkycoderContextMenu);
}
function hideSkycoderContextMenu(e){
    var contextMenu = document.getElementById('skycoder_context');
    if (contextMenu) {
        if (!e) {
            var e = window.event;
        }
        var isRightClick = false;
        if (e) {
            if (e.which) {
                isRightClick = (e.which == 3);
            } else if (e.button) {
                isRightClick = (e.button == 2);
            }
        }
        if (!isRightClick) {
            contextMenu.style.display = 'none';
            $(".skycoderEdit").removeClass("skycoderEdit");
        }
    }
}
function showSkycoderContextMenu(e){
    if (!e) {
        var e = window.event;
    }

    if (e["altKey"] || e["ctrlKey"] || e["metaKey"]) {
        return;
    }
    var el = getElementForEvent(e);
    if (!el) {
        return;
    }
    if (el.tagName != "INPUT" && el.tagName != "LABEL" && el.tagName != "TEXTAREA") {
        return;
    }
    cancelEvent(e);
    e.returnValue = false;

    var contextMenu = document.getElementById('skycoder_context');
    if (!contextMenu) {
        var aTag;
        var menuItems = [
            {
                'label' : 'Required',
                'href' : 'alert("required");hideSkycoderContextMenu();'
            },{
                'label' : 'Hide',
                'href' : 'alert("hide");hideSkycoderContextMenu();'
            },{
                'label' : 'Show',
                'href' : 'alert("show");hideSkycoderContextMenu();'
            }
        ];
        contextMenu = document.createElement('div');
        contextMenu.id = 'skycoder_context';
        contextMenu.style.position = 'absolute';
        contextMenu.style.width = '100px';
        contextMenu.style.backgroundColor = '#FFFFFF';
        for (var i = 0; i < menuItems.length; i++) {
            aTag = document.createElement('a');
            aTag.style.display = 'block';
            aTag.style.padding = '2px';
            aTag.style.margin = '1px';
            aTag.href = menuItems[i].href;
            $(aTag).html(menuItems[i].label);
            contextMenu.appendChild(aTag);
        }
        document.body.appendChild(contextMenu);
    }
    $(".skycoderEdit").removeClass("skycoderEdit");
    $(el).addClass("skycoderEdit");
    contextMenu.style.top = e.clientY + getScrollY() + 'px';
    contextMenu.style.left = e.clientX + getScrollX() + 'px';
    contextMenu.style.display = 'block';

}

function toggleQPLink(){
    vQuickPrintDiv = document.getElementById('quickPrintDiv');
    if(vQuickPrintDiv){
        var rQPTemplate = $('#rQPTemplate');
        if (rQPTemplate.length > 0 && $('option', rQPTemplate).length == 0 && rQPTemplate.data('httpChecked') != true) {
            rQPTemplate.data('httpChecked', true);
            vQPSetup.toggleQPReport($('input[name^=rQPReport]:checked', vQuickPrintDiv).get(0), null, function(){
                hideMessage();
                toggleQPLink();
            });
            showMessage("Please Wait...");
            return;
        }
        if ($(vQuickPrintDiv).closest('#tabProgramWrap').length > 0) {
            $(vQuickPrintDiv).appendTo($('#pageInnerWrap'));
        }
        if(vQuickPrintDiv.style.visibility=='hidden'){
            if(vQPSetup.loadOnDisplay) {
                vQPSetup.toggleQPReport();
            }
            displayLockDiv();
            vQuickPrintDiv.style.visibility='visible';
            vQuickPrintDiv.style.display='block';
            centerFilter('quickPrintDiv');
            setOpacity('quickPrintDiv',100);
            $(vQuickPrintDiv).find('a, select, input').filter(':visible:not([tabindex^="-"])').eq(0).focus();
        } else {
            hideLockDiv();
            vQuickPrintDiv.style.visibility='hidden';
            vQuickPrintDiv.style.display='none';
            $('#QPLink a').eq(0).focus();
        }
    }
}

function return_template(rid){

    showMessage("Please Wait...");

    var fn = function(){
        addAfterRefresh('toggleQPLink();');
        vQPSetup.saveSelection();
        document.detailform.submit();
    }

    vQPSetup.toggleQPReport(vQPSetup.selectedReport,rid,fn);
}

function validateDateOnSave(pField,pLowDate,pHighDate,pLabel){
    /*Assigns lists for date validation*/
    if (document.getElementById(pField)) {
        if (gExDtValField != "") {
            gExDtValField += "," + pField;
        }
        else{
            gExDtValField = pField;
        }
    }
    if (gExDtValLowDate != "") {
        gExDtValLowDate += "," + pLowDate;
    }
    else{
        gExDtValLowDate  = pLowDate;
    }
    if (gExDtValHighDate != "") {
        gExDtValHighDate += "," + pHighDate;
    }
    else{
        gExDtValHighDate = pHighDate;
    }
    if (document.getElementById(pLabel)) {
        if (gExDtValLabel != "") {
            gExDtValLabel += "," + document.getElementById(pLabel).innerHTML;
        }
        else{
            gExDtValLabel = document.getElementById(pLabel).innerHTML;
        }
    }
}

function continueValidateDateOnSave(pField, pLowDate, pHighDate){
    /*Validates date to make sure its in a given range and
      returns a message to validateForm*/
    var Fields = pField.split(",");
    var vLowDate = pLowDate.split(",");
    var vHighDate = pHighDate.split(",");
    var vLabel = gExDtValLabel.split(",");
    var vValue;
    var vLowMonth;
    var vLowDay;
    var vLowYear;
    var vHighMonth;
    var vHighDay;
    var vHighYear;
    var vValueMonth;
    var vValueDay;
    var vValueYear;
    var vDate;
    var vDateLow;
    var vDateHigh;

    for (i=0;i<Fields.length;i++) {
        if (document.getElementById(Fields[i])) {
            vValue = document.getElementById(Fields[i]).value;
        }

        vLowMonth   = parseInt(vLowDate[i].substring(0,2),10) - 1;
        vLowDay     = parseInt(vLowDate[i].substring(3,5),10);
        vLowYear    = parseInt(vLowDate[i].substring(6,10),10);
        vHighMonth  = parseInt(vHighDate[i].substring(0,2),10) - 1;
        vHighDay    = parseInt(vHighDate[i].substring(3,5),10);
        vHighYear   = parseInt(vHighDate[i].substring(6,10),10);
        vValueMonth = parseInt(vValue.substring(0,2),10) - 1;
        vValueDay   = parseInt(vValue.substring(3,5),10);
        vValueYear  = parseInt(vValue.substring(6,10),10);

        vDate     = new Date(vValueYear, vValueMonth, vValueDay);
        vDateLow  = new Date(vLowYear, vLowMonth, vLowDay);
        vDateHigh = new Date(vHighYear, vHighMonth, vHighDay);

        if (vDate < vDateLow) {
            gExtraDateValidationMessage += vLabel[i].replace(":","").replace("*&nbsp;","") + " must be between " + vLowDate[i] + " and " + vHighDate[i] + ".\n\n";
        }
        else if (vDate > vDateHigh) {
            gExtraDateValidationMessage += vLabel[i].replace(":","").replace("*&nbsp;","") + " must be between " + vLowDate[i] + " and " + vHighDate[i] + ".\n\n";
        }
        else{
            gExtraDateValidationMessage = "";
        }
    }
}

function openPrintView(){
    var currentProgram = document.getElementById('CurrentProgram').value;
    openIframeDialog(currentProgram,1024,768,1,'print');
}

function openDetailsPrintView(){
    var currentProgram = document.getElementById('CurrentProgram').value;
    openIframeDialog(currentProgram,1024,768,1,'details');
    doOnResize();
}

//gets the code or description of text returned by the http request
function getData(pDataLabel,pText,pIsDesc) {
   var vStart;
   var vStop;
   var vLookup;
   var vText;
   var vFieldList;

   if (pIsDesc==null)
      pIsDesc=false;

   vLookup='<li>';
   vStart=pText.toLowerCase().search(vLookup)+vLookup.length;

   vLookup='</li>';
   vStop=pText.toLowerCase().search(vLookup);

   pText=pText.substring(vStart,vStop);

   if (pIsDesc==true) {
       if (pText.toLowerCase().indexOf('<rv returnvalue=')>=0) {
           pText = pText.substring(0,pText.toLowerCase().indexOf('<rv returnvalue='));
       }
       vFieldList=pText.split(']');

       if (pDataLabel=='code') {
           vText = fullTrim(formatCode(vFieldList[1]));
       } else if (pDataLabel=='desc') {
           vText = rightTrim(vFieldList[0].split('[')[1]);
       } else {
           vText='';
       }
   }
   else {
       if (gAllowRightCurlyEEL)
           vFieldList=pText.split(' [');
       else
           vFieldList=pText.split('[');

       if (vFieldList.length==1 && pText.toLowerCase().indexOf('<rv returnvalue=')>=0) {
           vFieldList[0]=pText.substring(0,pText.toLowerCase().indexOf('<rv returnvalue='));
       }
       if (pDataLabel=='code') {
           vText = formatCode(vFieldList[0]);
       } else if (pDataLabel=='desc' && vFieldList.length>1) {
           vText = formatDesc(vFieldList[1]);
       } else if (pDataLabel=='returnValue') {
           vText = formatReturnValue(pText);
       } else if (pDataLabel=='extra') {
           vText = pText;
       } else {
           vText='';
       }
   }

   return vText;
}

//performs the request based on data currently in the code field
function runSearch(pUriFunc,pDisplayResultsFunc,pDivField,pCodeType,pCodeField,pRandom) {
   var vExtraParams = "";
   $(pCodeField).addClass('loading');
   //creates the http request and opens it
   function createRequest() {
      if (pRandom!=gRandom && gRandom!='*init*') {
          return;
      }
      var gs;
      gCodeType = pCodeType;
      gs = pUriFunc().split('?');

      var gEELSearchXmlHttp = XmlHttp.create();
      if (gEELSearchXmlHttp) {
          gEELSearchXmlHttp.open("POST",gs[0],true);
          gEELSearchXmlHttp.onreadystatechange = function () {
            if (gAbortRequests) {
                return;
            }
            if (gEELSearchXmlHttp.readyState == 4) {
               //Safari doesn't hide properly when no entries are found, so hide before sending request
               if (gIsSafari && gEELSearchXmlHttp.status==undefined) {
                   hideEELDiv(pDivField);
               }
               if (gEELSearchXmlHttp.status == 200) {
                  if (pRandom != gRandom && gRandom!='*init*') {
                      return;
                  }
                  $(pCodeField).removeClass('loading');
                  var vText;
                  vText = "<ul>" + gEELSearchXmlHttp.responseText + "</ul>";
                  $(pDivField).html(vText);
                  pDisplayResultsFunc();
               }
            }
        }
        if (window.assignEelParams) {
            vExtraParams = assignEelParams(gCodeType);
            if (vExtraParams == undefined)
                vExtraParams = '';
        }
        var vParams = gs[1] + vExtraParams;
        gEELSearchXmlHttp.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        if (gIsMoz || gIsIE) {
            gEELSearchXmlHttp.setRequestHeader("Connection", "close");
            gEELSearchXmlHttp.setRequestHeader("Content-length", vParams.length);
        }
        gEELSearchXmlHttp.send(vParams);
      }
      return;
   }
   return createRequest;
}

function getFieldValue(pParam) {
   var gParamField;
   try {
      gParamField = document.getElementById(pParam);
      if (gParamField.type != "select-one") {
          return gParamField.value;
      } else if (gParamField[gParamField.selectedIndex]) {
          return gParamField[gParamField.selectedIndex].value;
      }
   }
   catch (ex) {
      return "";
   }
}
function getRadioValue(pField) {
   //Must pass in the actual field on the form, do not use getElementById to pass in the field!
   try {
      var vLength = pField.length;

      if (vLength!=undefined) {
          for(var i = 0; i < vLength; i++) {
             if(pField[i].checked) {
                 return pField[i].value;
             }
          }
      } else {
          return pField.value;
      }
   }
   catch (ex) {}
   return "";
}
function setRadioValue(pField, pValue) {
    if (!pField) {
        return;
    }
    for (var i = 0; i < pField.length; i++) {
        if (pField[i].value == pValue) {
            pField[i].checked = true;
        } else {
            pField[i].checked = false;
        }
    }
}
function setSelectedValue(pField, pValue) {
    if (!pField) {
        return;
    }
    pField.value = pValue;
    if (!pField.options) {
        return;
    }
    for (var i = 0; i < pField.options.length; i++) {
        if (pField.options[i].value == pValue) {
            pField.options[i].selected = true;
        } else {
            pField.options[i].selected = false;
        }
    }
}
//sets up the autocomplete list for each field that has an EEL
function autocomplete(pProgName,pCodeField,pDescField,pDivField,pCodeType,pAddOn,pIsDesc) {
   var vReplace = "/&amp;/g";
   vReplace = eval(vReplace);

   pDivField = document.getElementById(pDivField);
   pDivField.className = 'autocomplete';

   if (pIsDesc==null)
       pIsDesc=false;

   var vCurrent = -1;
   addEvent(pDivField, "mouseover", overDiv, false);
   addEvent(pDivField, "mouseout", leaveDiv, false);

   //creates the URL on the fly with the current code value
   function createUri() {
       var $DataValue = $(pCodeField).data('searchValue');
       return pProgName + "?requestAction=eel&method=list&codeType=" + pCodeType + "&isDescEel=" + pIsDesc + "&codeSearchValue=" + (typeof $DataValue == 'string' ? encodeURIComponent($DataValue) : '') + "&codeValue=" + (typeof $DataValue == 'string' ? '' : encodeURIComponent(pCodeField.value))  + buildFormData();
   }

   function setRandomValue() {
      gRandom = Math.random();
      return gRandom;
   }

   //handles the click of the list that displays
   function clickDiv(pField) {
      var vFieldText;
      var vFieldList;
      var vReturnValue;

      vFieldText=pField.innerHTML;

      if (pIsDesc==true) {
          vFieldList=vFieldText.split(']');

          if (vFieldList.length==1 && vFieldText.toLowerCase().indexOf('<rv returnvalue=')>=0)
             vFieldList[0]=vFieldText.substring(0,vFieldText.toLowerCase().indexOf('<rv returnvalue='));

          vFieldList[1]=vFieldList[1].replace(vReplace,'&');
          vFieldList[0]=vFieldList[0].replace(vReplace,'&');
          vFieldList[0]=rightTrim(vFieldList[0].split('[')[1]);

          pDescField.value = formatDesc(vFieldList[0]);
          pCodeField.value = fullTrim(formatCode(vFieldList[1]));
      }
      else {
           if (gAllowRightCurlyEEL)
               vFieldList=vFieldText.split(' [');
           else
               vFieldList=vFieldText.split('[');

          if (vFieldList.length==1 && vFieldText.toLowerCase().indexOf('<rv returnvalue=')>=0)
             vFieldList[0]=vFieldText.substring(0,vFieldText.toLowerCase().indexOf('<rv returnvalue='));

          vFieldList[0] = vFieldList[0].replace(vReplace,'&');

          if (vFieldList.length > 1) {
             vFieldList[1]=vFieldList[1].replace(vReplace,'&');
             vFieldList[1]=rightTrim(vFieldList[1].split(']')[0]);
          }

          pCodeField.value = formatCode(vFieldList[0]);
          if (pDescField!='' && vFieldList.length > 1)
             pDescField.value = formatDesc(vFieldList[1]);
      }

      if (window.customExtraInfo) {
         vReturnValue=formatReturnValue(vFieldText);
         if (vReturnValue != undefined) {
             customExtraInfo(pCodeType,vReturnValue,pCodeField);
         }
      }

      if (!gIsIphone && !gIsIpad) {
           pCodeField.focus();
      }

      hideEELDiv(pDivField);
      leaveDiv();

      //If in a tab program, prevent validation from firing an HTTP request right before posting form to prevent hanging brokers
      try {
         if (pCodeField.onblur && pCodeField.onblur.toString().toLowerCase().indexOf("checkuser()") >= 0)
             gSkipFinalValidation = true;

         if (pCodeField.onchange && pCodeField.onchange.toString().toLowerCase().indexOf("checkuser()") >= 0)
             gSkipFinalValidation = true;
      }
      catch(er) {}

      //fire blur right away
      try {
         if (pCodeField.onblur) {
             pCodeField.onblur();
         }
         if (pCodeField.onchange) {
             pCodeField.onchange();
         }
      }
      catch(er) {}
   }

   //follows the mouse when it is moved over the EEL list
   //also cancels allowing the blur function to prevent browser problems
   function overDiv(e) {
      gDoValidation=false;
      gAllowBlur=false;
   }

   function overItem(pField) {
      /*IE has issues--remember last element in case of error*/
      var vOldCurrent;
      gAllowBlur=false;
      try {
         if (vCurrent>=0) {
             pDivField.firstChild.childNodes[vCurrent].className = '';
         }
         vOldCurrent=vCurrent;
         vCurrent = pField.index;
         if (vCurrent>=0) {
             pDivField.firstChild.childNodes[vCurrent].className = 'selected';
         }
      }
      catch (ex) {
         vCurrent=vOldCurrent;
         if (vCurrent>=0) {
             pDivField.firstChild.childNodes[vCurrent].className = 'selected';
         }
      }
   }

   function outItem(pField) {
      try {
         if (vCurrent>=0) {
             pDivField.firstChild.childNodes[vCurrent].className = '';
         }
         vCurrent = -1;
      }
      catch (ex) {}
   }

   //turns the blur function back on for the current code field
   function leaveDiv(e) {
      gDoValidation=true;
      gAllowBlur=true;
   }

   //creates the result list for displaying in the EEL
   function displayResultsList() {
      var vPosition;
      var vUlText;
      vCurrent = -1;
      gAllowBlur=true;

      (function(){ //reset the searchValue flag that is set when the eel arrow is clicked
          var $CodeField = $(pCodeField);
          var $DataValue = $CodeField.data('searchValue');
          if (typeof $DataValue == 'string') {
              $CodeField.data('searchValue', null);
          }
      })()

      vPosition=pDivField.innerHTML.toLowerCase().search('<li>');
      if (pDivField.innerHTML.search('<ul>') >= 0) {
          vUlText='<ul>';
      } else {
          vUlText='<UL>';
      }

      //Doing this allows the list to be the proper height at all times for IE
      if (gIsIE) {
          pDivField.style.height='0px';
      }
      if (vPosition<0) {
          pDivField.innerHTML="<ul></ul>";
      } else {
          //due to some browsers not handling innerHTML properly, text is stripped out from the innerHTML that is no good
         $(pDivField).html(vUlText + pDivField.innerHTML.substring(vPosition, pDivField.innerHTML.length));
      }

      //remove any type of line feeds to prevent problems in safari
      var vExp1 = new RegExp("\x0A", "gi");
      $(pDivField).html(pDivField.innerHTML.replace(vExp1, ''));
      var vExp2 = new RegExp("\\n", "gi");
      $(pDivField).html(pDivField.innerHTML.replace(vExp2, ''));
      var vExp3 = new RegExp("<li></li>", "gi");
      $(pDivField).html(pDivField.innerHTML.replace(vExp3, '<li>&nbsp;</li>').replace(/<li/gi, '<li role="option"'));

      //removes undefined nodes--safari creates undefined nodes for some reason
      for (var i = 0; i < pDivField.firstChild.childNodes.length; i++) {
         if (pDivField.firstChild.childNodes[i].innerHTML == undefined) {
            pDivField.firstChild.removeChild(pDivField.firstChild.childNodes[i]);
            i--;
         }
      }

      var vOptions = pDivField.firstChild.childNodes;
      if (vOptions[0]) {
         //display EEL list if it has some entries
         if(vOptions.length >= 1) {
            for(var i = 0; i < vOptions.length; i++) {
               vOptions[i].index = i;
               addOptionHandlers(vOptions[i]);
            }
            pDivField.nItemsDisplayed = i;
            window.setTimeout(displayDiv, 10);
         } else { //else hide the EEL list
            hideEELDiv(pDivField);
         }
      } else {
          hideEELDiv(pDivField);
      }

      if (pIsDesc==true) {
         pDescField.value='';
         try {
             var vCodeValue=vOptions[0].innerHTML.split(']');
             var vDescValue=vCodeValue[0].split('[');
             vCodeValue=formatCode(vCodeValue[1]);

             if (fullTrim(pCodeField.value.toLowerCase())==fullTrim(vCodeValue.toLowerCase())) {
                 pDescField.value=formatCode(vDescValue[1]);
             }
         }
         catch(er) {}
      }
      else if (pDescField) {
         pDescField.value='';
         try {
             var vCodeValue=vOptions[0].innerHTML.split('[');
             var vDescValue=vCodeValue[1].split(']');
             vCodeValue=formatCode(vCodeValue[0]);

             if (pCodeField.value.toLowerCase()==vCodeValue.toLowerCase()) {
                 pDescField.value=formatCode(vDescValue[0]);
             }
         }
         catch(er) {}
      }
   }

   //displays the EEL list and resizes it appropriately
   function displayDiv() {
      var vDivHeight, winWidthAvail, winHeightAvail, windowSize, nTop, nLeft;

      //hide tooltips when eel list is shown
      skyTip.hide();

      if(gIsIE) {
         pDivField.style.overflowY = 'auto';
         pDivField.style.overflowX = 'hidden';
      } else {
         pDivField.style.overflow = 'auto';
      }

      // width of the div, will not shrink.
      if (pDescField!='') {
          pDivField.style.width = (cDomObject.getWidth(pCodeField) + cDomObject.getWidth(pDescField) + 25 + gAddOn) + "px";
      } else {
          pDivField.style.width = (cDomObject.getWidth(pCodeField) + 25 + gAddOn) + "px";
      }

      pDivField.scrollTop = 0;
      pDivField.style.height = 'auto';
      pDivField.style.display = 'none';

      vDivHeight = getAutoSize(pDivField,'height');
      if (vDivHeight > gEELHeight) {
          vDivHeight = gEELHeight;
      }
      windowSize = getWindowSize();
      winWidthAvail = windowSize.width;
      winWidthAvail += getScrollX();
      winHeightAvail = windowSize.height;
      winHeightAvail += getScrollY();

      nTop = $(pCodeField).offset().top;

      if (pIsDesc==true) {
          nLeft = $(pDescField).offset().left - 1;
      } else {
          nLeft = $(pCodeField).offset().left - 1;
      }

      if (parseInt(pDivField.style.width, 10) + nLeft + 25 > winWidthAvail) {
          nLeft -= (parseInt(pDivField.style.width, 10) + nLeft + 25 - winWidthAvail);
      }

      //subtract field height and position down on the page
      winHeightAvail = winHeightAvail - 30 - nTop;

      if (vDivHeight > winHeightAvail && winHeightAvail <= 60) {
          nTop = nTop - vDivHeight - 3;
      } else {
          nTop += pCodeField.offsetHeight + 3;
      }
      if (vDivHeight > winHeightAvail && winHeightAvail > 60) {
          pDivField.style.height = (winHeightAvail - 20) + 'px';
      } else if (vDivHeight == gEELHeight) {
          pDivField.style.height = vDivHeight + 'px';
      } else {
          pDivField.style.height = "auto";
      }

      $(pDivField).css({
          'top'     : nTop + 'px',
          'left'    : nLeft + 'px',
          'display' : 'none'
      });
      $(pCodeField).removeClass('loading');

      if (gFocus!=pCodeField.id && gFocus!='^') {
         hideEELDiv(pDivField);
         return;
      }

      gAllowArrows = false; //disables arrows for browses
      $(pDivField).css({
          'visibility'  : 'visible',
          'display'     : 'block'
      });
      //select the first exact match in the list
      var fieldValue = $(pCodeField).val().toLowerCase();
      $(pDivField).find('> ul > li').each(function(i){
          var pValue = getData('code','<li>' + $(this).html() + "</li>",pIsDesc);
          if (pValue.toLowerCase() == fieldValue) {
              $(this).addClass('selected');
              vCurrent = i;
              return false;
          }
      });
   }

   //adds mouse event handlers for items in the EEL list
   function addOptionHandlers(pField) {
       addEvent(pField, "click", function(){clickDiv(pField)}, false);
       addEvent(pField, "mouseover", function(){overItem(pField)}, false);
       addEvent(pField, "mouseout", function(){outItem(pField)}, false);
   }

   //handles the keyboard events for the code field
   function start(e) {
      var vFieldText, vFieldList, vLength, vRandom, vSearchFunc, vElement, vSelected, vTmp;
      if (pCodeField.readOnly == true || gSkipFinalValidation == true) {
          return false;
      }
      if (e.altKey || e.ctrlKey) {
          return true;
      }
      gDoValidation = true;
      gAllowBlur = true;

      if (pAddOn) {
          gAddOn = pAddOn;
      } else {
          gAddOn = 0;
      }
      //up arrow in code field
      if(e.which == 38) {
         if (vCurrent>=0) {
            $(pDivField.firstChild.childNodes[vCurrent])
                .removeClass('selected');
            vCurrent--;
         }

         if (vCurrent>=0) {
            $(pDivField.firstChild.childNodes[vCurrent])
                .addClass('selected')
                .scrollintoview();
         }

         //Prevents this event from firing twice!
         if (gIsSafari) {
             cancelEvent(e);
         }
      } else if(e.which == 40 && pDivField.style.visibility == 'visible') { //down arrow in code field
         if(pDivField.firstChild) {
            if(vCurrent < pDivField.firstChild.childNodes.length - 1) {
               if (vCurrent>=0) {
                   $(pDivField.firstChild.childNodes[vCurrent])
                   .removeClass('selected');
               }
               vCurrent++;
               $(pDivField.firstChild.childNodes[vCurrent])
                    .addClass('selected')
                    .scrollintoview();
            }
         }

         //Prevents this event from firing twice!
         if (gIsSafari) {
             cancelEvent(e);
         }
      } else if(e.which == 27 || e.which == 113 || e.which == 18) { //Esc in code field or Alt or F2
         hideEELDiv(pDivField);

         if (e.which == 27) {
            pCodeField.value = "";
            if (pDescField) {
                pDescField.value = "";
            }
         }
      } else if((e.which == 13 || e.which == 9) && pDivField.style.visibility == 'visible') { //enter or tab in code field
          vElement = $('li.selected', pDivField);
          if (vElement.length === 0) {
              if (!($('#' + pCodeField.id).attr("data-disable-auto-select")=="true"))
                  vElement = $(pDivField).find('li').eq(0);
              vTmp = getElementForEvent(e);
              if (vTmp && vTmp.value) {
                  vTmp = vTmp.value;
              } else {
                  vTmp = '';
              }
              if (vTmp == '' || vElement.text().toLowerCase().indexOf(vTmp.toLowerCase()) !== 0) {
                  return;
              }
          }
          if (vElement.length > 0) {
              clickDiv(vElement.get(0));
              return;
          }

          vFieldText = pDivField.firstChild.childNodes[vCurrent].innerHTML;

          if (pIsDesc) {
              vFieldList = vFieldText.split(']');

              if (vFieldList.length == 1 && vFieldText.toLowerCase().indexOf('<rv returnvalue=')>=0) {
                  vFieldList[0] = vFieldText.substring(0,vFieldText.toLowerCase().indexOf('<rv returnvalue='));
              }
              vFieldList[1] = vFieldList[1].replace(vReplace,'&');
              vFieldList[0] = vFieldList[0].replace(vReplace,'&');
              vFieldList[0] = rightTrim(vFieldList[0].split('[')[1]);

              //Prevents accidental selection when mouse is over EEL list but typed value is different
              vLength = fullTrim(pCodeField.value).length;

              if (fullTrim(pCodeField.value).toUpperCase() == formatCode(fullTrim(vFieldList[1])).substring(0, vLength).toUpperCase() || fullTrim(pCodeField.value).toUpperCase() == formatCode(fullTrim(vFieldList[1]), true).substring(0, vLength).toUpperCase()) {
                  pCodeField.value = fullTrim(formatCode(vFieldList[1]));
                  pDescField.value = formatDesc(vFieldList[0]);

                  if (window.customExtraInfo) {
                      vReturnValue=formatReturnValue(vFieldText);
                      if (vReturnValue != undefined) {
                          customExtraInfo(pCodeType,vReturnValue,pCodeField);
                      }
                  }
              }
          } else {
              vFieldList = vFieldText.split('[');

              if (vFieldList.length == 1 && vFieldText.toLowerCase().indexOf('<rv returnvalue=')>=0) {
                  vFieldList[0] = vFieldText.substring(0,vFieldText.toLowerCase().indexOf('<rv returnvalue='));
              }
              vFieldList[0] = vFieldList[0].replace(vReplace,'&');

              if (vFieldList.length > 1) {
                  vFieldList[1] = vFieldList[1].replace(vReplace,'&');
                  vFieldList[1] = rightTrim(vFieldList[1].split(']')[0]);
              }

              //Prevents accidental selection when mouse is over EEL list but typed value is different
              vLength = fullTrim(pCodeField.value).length;
              if (fullTrim(pCodeField.value).toUpperCase()==formatCode(fullTrim(vFieldList[0])).substring(0, vLength).toUpperCase() || fullTrim(pCodeField.value).toUpperCase()==formatCode(fullTrim(vFieldList[0]), true).substring(0, vLength).toUpperCase()) {
                  pCodeField.value = formatCode(vFieldList[0]);
                  if (pDescField != '' && vFieldList.length > 1) {
                      pDescField.value = formatDesc(vFieldList[1]);
                  }
                  if (window.customExtraInfo) {
                      vReturnValue = formatReturnValue(vFieldText);
                      if (vReturnValue != undefined) {
                          customExtraInfo(pCodeType,vReturnValue,pCodeField);
                      }
                  }
              }
          }

          //basically cancels the listing event since blur will be firing now anyway
          vRandom = setRandomValue();
          hideEELDiv(pDivField);
          leaveDiv();

          //If in a tab program, prevent validation from firing an HTTP request right before posting form to prevent hanging brokers
          try {
             if (pCodeField.onblur && pCodeField.onblur.toString().toLowerCase().indexOf("checkuser()") >= 0) {
                 gSkipFinalValidation = true;
             }
             if (pCodeField.onchange && pCodeField.onchange.toString().toLowerCase().indexOf("checkuser()") >= 0) {
                 gSkipFinalValidation = true;
             }
          } catch(er) {}

          //fire blur right away
          try {
             if (pCodeField.onblur) {
                 pCodeField.onblur();
             }
             if (pCodeField.onchange) {
                 pCodeField.onchange();
             }
          } catch(er) {}
      } else if(e.which == 9 || e.which == 13 || (gIsSafari && e.which == 0)) { //Shift-tab in Safari = 0
         //basically cancels the listing event since blur will be firing now anyway
         vRandom = setRandomValue();
         hideEELDiv(pDivField);
      } else {
         if (e.which == 1) { //the down arrow was pressed
             $(pCodeField).data('searchValue', pCodeField.value);
         }
         vRandom = setRandomValue();
         vSearchFunc = runSearch(createUri, displayResultsList, pDivField, pCodeType, pCodeField, vRandom);
         vTimeout = window.setTimeout(vSearchFunc, gTimeout);
      }
      vSelected = $(pDivField).find('li.selected');
      if (vSelected.length) {
          readText(vSelected.html());
      }
   } //end start function

   addEvent(pCodeField, "keydown", start, false);

   //adds leave events for the code field
   addBlurListener(pCodeField, function() {
      if (gAllowBlur == true) {
          hideEELDiv(pDivField);
      }
   });

   //adds focus events for the code field
   addFocusListener(pCodeField, function() {
       gAllowArrows = false;
   });
}
function hideEELDiv(pDivField) {
   gAllowArrows = true; //enables arrows for browses
   gDoValidation = true;
   $(pDivField).css({
       'visibility' : 'hidden',
       'display' : 'none'
   });

   $(document.getElementById(pDivField.id.substring(0, pDivField.id.lastIndexOf('div'))))
       .removeClass('loading');
}
function rgb2hex(rgb) {
    if (!rgb) {
        return "";
    } else if (rgb.match("#") != null) {
        return rgb;
    }
    rgb = rgb.match(/^rgb\((\d+),\s*(\d+),\s*(\d+)\)$/);
    function hex(x) {
        return ("0" + parseInt(x).toString(16)).slice(-2);
    }
    return "#" + hex(rgb[1]) + hex(rgb[2]) + hex(rgb[3]);
}
function readText(pText){
    var ariaElement = $('#hAriaElement');
    if (ariaElement.length) {
        ariaElement.html(pText);
    }
}
function formatCode(pCodeValue, pRemoveSpaces) {
   if (pRemoveSpaces == undefined) {
       pRemoveSpaces = false;
   }
   var vExp1 = new RegExp('<p class="EEL">', "gi");
   var vExp2 = new RegExp('<p class=EEL>', "gi");
   var vExp3 = new RegExp("</p>", "gi");
   var vExp6 = new RegExp("&lt;", "gi");
   var vExp7 = new RegExp("&gt;", "gi");
   var vExp9 = new RegExp("&#x005B;", "gi");
   var vExp10 = new RegExp("&#x005D;", "gi");
   var vExp11 = new RegExp("&amp;", "gi");

   var vCodeValue = '';
   var vSplit;
   var vEvent;

   if (pCodeValue.indexOf("<br>")>=0) {
      vSplit=pCodeValue.split("<br>");
      vCodeValue=vSplit[0];
   } else if (pCodeValue.indexOf("<BR>")>=0) {
      vSplit=pCodeValue.split("<BR>");
      vCodeValue=vSplit[0];
   } else {
       vCodeValue=pCodeValue;
   }

   vCodeValue = rightTrim(replaceSpace(vCodeValue));
   vCodeValue = vCodeValue.replace(vExp1, "");
   vCodeValue = vCodeValue.replace(vExp2, "");
   vCodeValue = vCodeValue.replace(vExp3, "");
   vCodeValue = vCodeValue.replace(vExp6, "<");
   vCodeValue = vCodeValue.replace(vExp7, ">");
   vCodeValue = vCodeValue.replace(vExp9, "[");
   vCodeValue = vCodeValue.replace(vExp10, "]");
   vCodeValue = vCodeValue.replace(vExp11, "&");

   //Safari was treating space as chr(160)
   if (gIsSafari || gIsChrome) {
      var vExp8 = new RegExp(String.fromCharCode(160), "gi");
      vCodeValue = vCodeValue.replace(vExp8, " ");
   }

   //Allows Account to work properly in Fin
   if (pRemoveSpaces==true) {
      var vExp4 = new RegExp("&nbsp;", "gi");
      vCodeValue = vCodeValue.replace(vExp4, "");
      var vExp5 = new RegExp(" ", "gi");
      vCodeValue = vCodeValue.replace(vExp5, "");
   }

   return vCodeValue;
}
function displayEelList(pField) {
   pField = $(document.getElementById(pField));

   if (!gIsIphone && !gIsIpad) {
       pField.focus();
   }
   pField.trigger($.Event("keydown", {'which' : 1}));
}
function formatDesc(pDescValue) {
   var vFieldList=pDescValue.split(']');

   pDescValue=vFieldList[0];
   pDescValue = rightTrim(replaceSpace(pDescValue)).replace(/&#x005B;/gi, "[").replace(/&#x005D;/gi, "]");
   return pDescValue;
}
function formatReturnValue(pReturnValue) {
   var vReturnText;
   if (pReturnValue.toLowerCase().indexOf('<rv returnvalue=')>= 0) {
      vReturnText = pReturnValue.substring(pReturnValue.toLowerCase().indexOf('<rv returnvalue=') + 17,pReturnValue.toLowerCase().indexOf('></rv>') - 1);
      vReturnText = vReturnText.replace(/&amp;/gi,'&');
      vReturnText = vReturnText.replace(/&quot;/gi,'"');
      vReturnText = vReturnText.replace(/&quot;/gi,'"');
      vReturnText = vReturnText.replace(/&lt;/gi,'<');
      vReturnText = vReturnText.replace(/&gt;/gi,'>');
      vReturnText = vReturnText.replace(/&#x005B;/gi, "[").replace(/&#x005D;/gi, "]");
      return vReturnText;
   }
   return undefined;
}

//returns the appropriate object for the EEL list
function eventElement(e) {
    if (!e) {
        var e = window.event;
    }
    getElementForEvent(e);
}

//creates the blur event for the code field
function addBlurListener(pField,pEvent) {
    addEvent(pField, "blur", pEvent, false);
}

//creates the focus event for the code field
function addFocusListener(pField,pEvent) {
    addEvent(pField, "focus", pEvent, false);
}

//right trims the value passed in
function rightTrim(pValue){
   while(pValue.charAt(pValue.length-1) == ' ' || pValue.charCodeAt(pValue.length-1) == 13 || pValue.charCodeAt(pValue.length-1) == 10) {
       pValue=pValue.substring(0,pValue.length-1);
   }
   return pValue;
}
function leftTrim(pValue){
   var i = 0;
   while(pValue.charAt(i) == ' ' || pValue.charCodeAt(i) == 13 || pValue.charCodeAt(i) == 10) {
      i++;
   }

   pValue=pValue.substring(i,pValue.length);
   return pValue;
}
function fullTrim(pValue){
   pValue = rightTrim(pValue);
   pValue = leftTrim(pValue);
   return pValue;
}
//keeps code popup windows on top of the main window
function processClick(e) {
    gUsrIdle.clearIdle();
    if (gIsIE && window.doBeforeClose) {
        if (!e) {
            var e = window.event;
        }
        var clickEl = getElementForEvent(e);
        if (clickEl && clickEl.parentNode) {
            do {
                if (clickEl.tagName == "A") {
                    gDoClosingActions = "no";
                    window.setTimeout(function(){ gDoClosingActions = "default";}, 1000);
                    break;
                }
                clickEl = clickEl.parentNode;
            } while ( clickEl.tagName );
        }
    }
    if (!gIsIphone && !gIsIpad) {
        try {
            if (gCodePopup && !gCodePopup.closed) {
                gCodePopup.focus();
                window.setTimeout(moveWindow, 125); //must delay for IE 7
            }
        }
        catch (ex) {};
    }
    if (gFilter != '') {
        return false;
    }
}
function processClickUp() {
   gFilter='';
   processClick();
}
function moveWindow(async) {
    if (gIsIE7 || gIsIE8) {
        return;
    }
    try {
        if (gCodePopup && !gCodePopup.closed) {
            getCoord(0,0);
            gCodePopup.moveTo(gCoordX,gCoordY);
        }
    }
    catch (ex) {};
}
//retrieves additional information from the database w/o posting the page
function getExtraInfo(pProgName,pCodeType,pCodeField,pExtraField) {
    var vCodeField;
    if (typeof(pCodeField) === 'string') {
        vCodeField = pCodeField;
    } else if (typeof(pCodeField) === 'object'){
        vCodeField = pCodeField.id;
    }
    if (vCodeField) {
        gCheckEels[vCodeField] = false;
    }
   function continueGetExtraInfo() {
       var tmpEl;
      //delay so that 2 processing at the same time don't overlap each other
      if (gOpenRequest) {
          window.setTimeout(continueGetExtraInfo, 100);
      } else {
         if (gLoginMessage != '') {
            showMessage(gLoginMessage);
            //gLoginMessage = '';
         } else if (pProgName != 'qbrwshttp001.w' && pProgName != 'qprnthttp002.w' && pProgName != 'sgradhttp026.w' && pProgName != 'qgrphhttp001.w') {
             //showMessage('Retrieving data...');
         }
         gOpenRequest = true;
         if (tmpEl = document.getElementById(pExtraField)) {
             pExtraField = tmpEl;
         }
         gExtraHandle = pExtraField;

         if (pCodeField != '' && document.getElementById(pCodeField)) {
             gCodeValue = getFieldValue(pCodeField);
         } else {
             gCodeValue = pCodeField;
         }
         abortHttpRequest(false);
         gAbortExtraInfo = false;
         gExtraInfoXmlHttp  = XmlHttp.create();
         if (gExtraInfoXmlHttp) {
             gExtraInfoXmlHttp.open("POST",pProgName,true);
             gExtraInfoXmlHttp.onreadystatechange = function () {
                if (gAbortRequests || gAbortExtraInfo) {
                    if (gLoginMessage!='') {
                         gLoginMessage = '';
	                     hideMessage();
	                 }
                    if (vCodeField) {
                        gCheckEels[vCodeField] = true;
                    }
                    return;
                }
              var vExtraInfo;
              if (gExtraInfoXmlHttp.readyState == 4) {
                  gOpenRequest = false;
			  	if (gExtraInfoXmlHttp.status == 200) {
	                 vExtraInfo=getData('extra',gExtraInfoXmlHttp.responseText);
                     try {
                         if (pExtraField != '') {
                             if (pExtraField.id == 'sFilterList') {
                                 $('#sFilterSelect').replaceWith(vExtraInfo);
                             } else {
                                 pExtraField.value = vExtraInfo;
                             }

							 if (pExtraField.innerHTML && pExtraField.tagName != "SELECT" && pExtraField.tagName != "TEXTAREA") {
    	                        if (vExtraInfo == '') {
    	                            vExtraInfo='&nbsp;';
    	                        }
    	                        $(pExtraField).html('&nbsp');
    	                        //prevents scrolling data issue
    	                        if (vExtraInfo.indexOf("'")==-1) {
    	                            window.setTimeout(function(){dispHTMLinfo(pExtraField.id,vExtraInfo)}, 1);
    	                        } else {
    	                            $(pExtraField).html(vExtraInfo);
    	                        }
                                if (pExtraField.id == 'dFilterDetails') {
                                    showFilterDetailTip();
                                } else if (pExtraField.id == 'dChartDetails') {
                                    showChartDetailTip();
                                }
    	                     }
    	                 }
                     }
                     catch(er) {}

	                 if (gLoginMessage!='' /*|| (pProgName!='qbrwshttp001.w' && pProgName!='qprnthttp002.w')*/ ) {
                         gLoginMessage = '';
	                     hideMessage();
	                 }
	                 if (window.customExtraInfo) {
                         vExtraInfo = vExtraInfo.replace(/&#x005B;/gi, "[").replace(/&#x005D;/gi, "]");
	                     customExtraInfo(pCodeType,vExtraInfo,pExtraField);
	                 }
	                 if (pCodeType=='filterList') {
	                    if (gApplyFilter==true) {
	                        processSearch(document.getElementById("CurrentProgram").value,"applyFilter");
	                    }
	                 } else if (pCodeType=='chartList') {
	                     getChartDetail();
                         if (gApplyFilter == true) {
                             openChartWindow('create');
                             gApplyFilter = false;
                         }
	                 }
                     if (vCodeField) {
                        gCheckEels[vCodeField] = true;
                     }
	              }
			  }
           }
           var vParams = "requestAction=eel&method=extrainfo&codeType=" + pCodeType + "&codeValue=" + encodeURIComponent(gCodeValue) +  buildFormData();
           gExtraInfoXmlHttp.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
           if (gIsMoz || gIsIE) {
               gExtraInfoXmlHttp.setRequestHeader("Connection", "close");
               gExtraInfoXmlHttp.setRequestHeader("Content-length", vParams.length);
           }
           gExtraInfoXmlHttp.send(vParams);


         } else {
             gOpenRequest = false;
         }
         return false;
      }
   }
   //delayed here as well to prevent first process that fires from having issues in firefox
   if (!gOpenRequest) {
       window.setTimeout(continueGetExtraInfo, 100);
   } else {
       continueGetExtraInfo();
   }
}
function dispHTMLinfo(pFieldId,pInfo) {
   $(document.getElementById(pFieldId)).html(pInfo);
}

//validates on the leave of a code field that the code is valid
function codeValidation(pProgName,pCodeType,pCodeField,pDescField,pIsDesc) {
    gCheckEels[pCodeField.id] = false;
    window.setTimeout(function(){
        continueCodeValidation(pProgName,pCodeType,pCodeField,pDescField,pIsDesc);
    }, 100);
}

function continueCodeValidation(pProgName,pCodeType,pCodeField,pDescField,pIsDesc) {
   var focusElement = $(document.activeElement);
   if (focusElement.length && focusElement.hasClass('PopupLink')) {
       focusElement.addClass("revalidateEel").data('revalidateEel', pCodeField);
       return true;
   }
   var vStartValue;
   var vExtraParams = "";

   if (gCheckDone == false || gAllowBlur == false || gDoValidation == false || gSkipFinalValidation == true || gDontValidate[pCodeField.id]) {
       gCheckEels[pCodeField.id] = true;
       return true;
   }

   if (pIsDesc==null)
       pIsDesc=false;

   vStartValue = pCodeField.value;
   gCodeHandle=pCodeField;
   gDescHandle=pDescField;
   gCheckFailed=false;

   if (pCodeField.value=='') {
      if (pDescField && pDescField != '') {
          pDescField.value = '';
      }
      gCheckEels[pCodeField.id] = true;
      return false;
   }

   var gEELValXmlHttp = XmlHttp.create();
   if (gEELValXmlHttp) {
      gCheckDone = false;
      gEELValXmlHttp.open("POST",pProgName,true);
      gEELValXmlHttp.onreadystatechange = function () {
        if (gAbortRequests) {
            return;
        }
         var vCode;
         var vDesc;
         var vReturnValue;
         if (gEELValXmlHttp.readyState == 4) {
            gCheckDone = true;
		 	if (gEELValXmlHttp.status == 200) {
	            if (pCodeField.value != vStartValue) {
	               gCheckDone = true;
                   gCheckEels[pCodeField.id] = true;
	               return false;
	            }
	            if (gEELValXmlHttp.responseText.indexOf("!@#zyx#@!") == -1) {
                   vCode = getData('code',gEELValXmlHttp.responseText,pIsDesc);
	               vDesc = getData('desc',gEELValXmlHttp.responseText,pIsDesc);

                   if (vCode == "*Invalid*" || vDesc == "*Invalid*") {
	                  if (gDescHandle && gDescHandle!='') {
	                      gDescHandle.value = '';
	                  }
	                  if (rightTrim(replaceSpace(gCodeHandle.value))!='') {
                         gCheckFailed = true;
	                     if (!gCodePopup || gCodePopup.closed) {
                            if (gCodeHandle.readOnly!=true && gCodeHandle.disabled!=true) {
                                try {
                                    gCodeHandle.focus();

	                                var vTemp = '';
	                                if (window.customEELMessage)
	                                   vTemp = customEELMessage(pCodeType);

	                                if (vTemp==null || vTemp=='')
	                                    vTemp = 'The ' + pCodeType + ' entered is not valid.';
                                    message(vTemp,"", 0,0,0,"OK",(window.openCodePopup) ? ('openCodePopup("' + pCodeType + '")') : "");
                                }
                                catch(er) {}
                            }
	                     }
	                  }
                      gCodeHandle.value = '';
	               } else {
	                  gCodeHandle.value=vCode;
	                  if (gDescHandle && gDescHandle!='') {
	                      gDescHandle.value=vDesc;
	                  }
	                  if (window.customExtraInfo) {
	                     vReturnValue=getData('returnValue',gEELValXmlHttp.responseText);
	                     if (vReturnValue!=undefined) {
                             gCheckDone = true; //Just in case customExtraInfo fails
	                         customExtraInfo(pCodeType,vReturnValue,gCodeHandle);
	                     }
	                  }
	                  if (window.afterEELValidation) {
                          gCheckDone = true; //Just in case afterEELValidation fails
	                      afterEELValidation(pCodeType,vReturnValue,gCodeHandle);
	                  }
	               }
	            } else { //this is common name eel logic
	               var vFieldValues = gEELValXmlHttp.responseText.split('!@#zyx#@!');
	               return_name_eel_values(vFieldValues,false);
	            }
	            gCheckDone = true;
                gCheckEels[pCodeField.id] = true;
			 }
         }
      }
      if (window.assignEelParams) {
          vExtraParams = assignEelParams(pCodeType,gCodeHandle);
          if (vExtraParams == undefined)
              vExtraParams = '';
      }
      var vParams = "requestAction=eel&method=validate&codeType=" + pCodeType + "&isDescEel=" + pIsDesc + "&codeValue=" + encodeURIComponent(pCodeField.value) + vExtraParams + buildFormData();
      gEELValXmlHttp.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
      if (gIsMoz || gIsIE) {
          gEELValXmlHttp.setRequestHeader("Connection", "close");
          gEELValXmlHttp.setRequestHeader("Content-length", vParams.length);
      }
      gEELValXmlHttp.send(vParams);
   }
   return false;
}
function openTutWindow(pOpen,pWidth,pHeight,pResizable,pMode,pMenuBar,pIndepWin,pToolbar) {
   gPostForm = false;
   openNewWindow(pOpen,pWidth,pHeight,pResizable,pMode,pMenuBar,pIndepWin,pToolbar);
}

function openNewWindow(pOpen,pWidth,pHeight,pResizable,pMode,pMenuBar,pIndepWin,pToolbar) {
   if (gOpening == true || window.preventNewWindows) {
       return;
   }
   if (pOpen == '') {
       return;
   }
   gOpening=true;

   closeQuickView();

   if (window.gShowPopupAlert) {
       if (!window.gPopupOk) {
           var vExtraCancel    = (window.cancelledPopup) ? 'cancelledPopup()' : '';
           var q = function(obj){
               if (typeof obj == 'string') {
                   obj = '"' + obj + '"';
               }
               return obj;
           };

           gOpening = false;
           message("The action you have chosen requires a new window to be opened.<br><br>Click OK to open the window or Cancel to stay on the current page.",
                   "Pop-up Window Warning",0,400,0,
                   "OK",'window.gPopupOk=true;openNewWindow(' + q(pOpen) + ',' + q(pWidth) + ',' + q(pHeight) + ',' + q(pResizable) + ',' + q(pMode) + ',' + q(pMenuBar) + ',' + q(pIndepWin) + ',' + q(pToolbar) + ');',
                   "Cancel",vExtraCancel);
           return;
       }
       window.gPopupOk = false;
   }

   showMessage('Please wait...');
   var v21 = String.fromCharCode(21);
   var v22 = String.fromCharCode(22);
   var v23 = String.fromCharCode(23);
   var vExp1, vExp1, vExp1;
   var vList

   if (pOpen.indexOf(v21)>=0 || pOpen.indexOf(v22)>=0 || pOpen.indexOf(v23)>=0) {
      var vSplit = pOpen.split('?');

      if (vSplit.length>1) {
         pOpen = vSplit[0] + "?";
         vList = vSplit[1].split('&');

         for (var i=0; i<vList.length; i++) {
            vExp1 = new RegExp(v21, "gi");
            vExp2 = new RegExp(v22, "gi");
            vExp3 = new RegExp(v23, "gi");

            vList[i] = vList[i].replace(vExp1, '%15');
            vList[i] = vList[i].replace(vExp2, '%16');
            vList[i] = vList[i].replace(vExp3, '%17');

            if (i == 0) {
                pOpen += vList[i];
            } else {
                pOpen += "&" + vList[i];
            }
         }
      }
   }

   if (!pMode) {
       pMode = "";
   }
   if (!pIndepWin) {
       pIndepWin = 0;
   }
   if (!pMenuBar) {
       pMenuBar = 0;
   }
   if (!pToolbar) {
       pToolbar = 0;
   }
   if (!pResizable || (pResizable!= 1 && pResizable!=0)) {
       pResizable = 0;
   }
   if ((pMode.toLowerCase() == "edit" || pMode.toLowerCase().indexOf("view")>=0) && document.getElementById("currentrecord").value=="" && gNewWinEmpBrwsChk==true && browses!="" && !document.getElementById("isPopup") && gDisplayRecordWarning==true) {
      gOpening=false;
      unChangeCursor();
      hideMessage();
      message('Please select a record before proceeding.');
      return;
   }
   gOpening = false;    //Set to false so openMyWindow can run (necessary because many programs call openMyWindow directly)
   openMyWindow(pOpen,pWidth,pHeight,pResizable,pMode,pMenuBar,pIndepWin,pToolbar);
   gNewWinEmpBrwsChk=true;
   hideMessage();
}

function openMyWindow(pOpen,pWidth,pHeight,pResizable,pMode,pMenuBar,pIndepWin,pToolbar) {
   var oldnoheader, oldMaint, oldTarget, oldAction, oldSelectMode, oldRefreshMode,
       oldIsPopup, oldPopupWidth, oldPopupHeight, oldMenuId, oldSecMenuId, temp;

   if (gOpening == true) {
      return;
   }
   gOpening = true;

   if (gCodePopup && !gCodePopup.closed) {
      gOpening = false;
      try {
          gCodePopup.focus();
      } catch(er) {}
   } else {
      gDoValidation=false;

      if (pResizable==0) {
          pWidth += 20;
      }
      pHeight += 30;
      if (gCheckDimensions==true) {
         if (gIsIE == true) {
            if (pWidth > 1008) {
                pWidth = 1008;
            }
         } else {
            if (pWidth > 1013) {
                pWidth = 1013;
            }
         }
         if (pHeight > 671) {
             pHeight = 671;
         }
      }

      gWidth = pWidth;
      gHeight = pHeight;

      getCoord(pWidth,pHeight);

      if (pIndepWin==1 || pIndepWin==2) {
          gCoordX += 20;
          gCoordY -= 20;
          if (gCoordY < 0) {
              gCoordY = 0;
          }

          if (document.detailform.CurrentProgram.value != 'skyportlogin.w') {
              if (document.getElementById("NewSession")) {
                  document.getElementById("NewSession").value = 'true';
              } else {
                  $(document.detailform).append("<input type='hidden' id='NewSession' name='NewSession' value='true' />");
              }
          }
      }

      //open window
      var cp = window.document.detailform.CurrentProgram.value.replace(".","");

      //needed to allow many simultaneous user sessions
      var vTime;
      vTime = new Date();
      vTime = vTime.getTime();
      cp+=vTime;

      if (!pMenuBar) {
          pMenuBar = 0;
      }
      if (!pToolbar) {
          pToolbar = 0;
      }
      var vUseWidth = gWidth;
      var vUseHeight = gHeight;

      if (document.getElementById('maximizeWindows') && vUseWidth > 950 && vUseHeight > 650) {
          vUseWidth = screen.availWidth;
          vUseHeight = screen.availHeight;
      }

      if (gIsChrome || gIsMoz || gIsMicrosoftEdge) {
         vUseWidth += 4;
         vUseHeight += 26;
      } else if (gIsSafari && gIsMac) {
         vUseWidth += 6;
         vUseHeight += 52;
      } else if (gIsSafari && !gIsMac) {
         vUseWidth -= 2;
         vUseHeight += 43;
      }

      function storeOldValuesAndPrepForm() {
          oldnoheader = window.document.detailform.noheader.value;
          oldMaint = window.document.detailform.vMaintOption.value;
          oldTarget = window.document.detailform.target;
          oldAction = window.document.detailform.action;
          oldSelectMode = window.document.detailform.vSelectMode.value;
          if (window.document.detailform.isPopup) {
              oldIsPopup = window.document.detailform.isPopup.value;
          }

          if (typeof(window.document.detailform.RefreshMode) != "undefined") {
              oldRefreshMode = window.document.detailform.RefreshMode.value;
          } else {
              oldRefreshMode = "";
          }

          if (window.document.detailform.PopupWidth) {
              oldPopupWidth = window.document.detailform.PopupWidth.value;
              if (!gIsIphone && !gIsIpad)
                  window.document.detailform.PopupWidth.value = gWidth;
          }
          if (window.document.detailform.PopupHeight) {
              oldPopupHeight = window.document.detailform.PopupHeight.value;
              if (!gIsIphone && !gIsIpad)
                  window.document.detailform.PopupHeight.value = gHeight;
          }
          if (gUseMenuId != '' && window.document.detailform.HomePageMenuID) {
             oldMenuId = window.document.detailform.HomePageMenuID.value;
             window.document.detailform.HomePageMenuID.value=gUseMenuId;
          }
          if (gUseMenuId != '' && window.document.detailform.SecurityMenuID) {
             oldSecMenuId = window.document.detailform.SecurityMenuID.value;
             window.document.detailform.SecurityMenuID.value=gUseMenuId;
          }
          if (gNoPopup == false && pIndepWin == 0) {
              window.document.detailform.noheader.value = "yes";
          }
          if (window.document.detailform.vMaintOption) {
              window.document.detailform.vMaintOption.value = pMode;
          }

          if (pMode.toUpperCase() != "SELECT") {
              window.document.detailform.vSelectMode.value="N";
          } else {
              window.document.detailform.vSelectMode.value="Y";
          }
          if (window.document.detailform.RefreshMode) {
              window.document.detailform.RefreshMode.value="";
          }
          if (gNoPopup && window.document.detailform.isPopup) {
              window.document.detailform.isPopup.value = "false";
          }
      }

      function restoreOldValues() {
          window.document.detailform.noheader.value = oldnoheader;
          window.document.detailform.vMaintOption.value = oldMaint;
          window.document.detailform.target=oldTarget;
          window.document.detailform.action=oldAction;
          window.document.detailform.vSelectMode.value = oldSelectMode;
          if (window.document.detailform.isPopup){
              window.document.detailform.isPopup.value = oldIsPopup;
          }

          if (typeof(window.document.detailform.RefreshMode) != "undefined") {
              window.document.detailform.RefreshMode.value = oldRefreshMode;
          }
          if (window.document.detailform.PopupWidth) {
              window.document.detailform.PopupWidth.value = oldPopupWidth;
          }
          if (window.document.detailform.PopupHeight) {
              window.document.detailform.PopupHeight.value = oldPopupHeight;
          }
          if (gUseMenuId!='' && window.document.detailform.HomePageMenuID) {
             window.document.detailform.HomePageMenuID.value=oldMenuId;
             gUseMenuId = '';
             if (window.document.detailform.SecurityMenuID) {
                 window.document.detailform.SecurityMenuID.value=oldSecMenuId;
             }
          }
          $('#NewSession').remove();
      }

      if ((!gIsIphone && !gIsIpad) || !gPostForm) {
          if (gPostForm) {
             if (brws.osName == 'Android') {
                 gCodePopup = window.open("qnewwindw000.w",cp,"width=" + vUseWidth + ",height=" + vUseHeight + ",fullscreen=yes,status=1,location=0,menubar=" + pMenuBar + ",top=" + gCoordY + ",left=" + gCoordX + ",resizable=1,scrollbars=1,toolbar=" + pToolbar);
             } else if (gIsSafari && (gCoordX < 0 || gCoordX > screen.availWidth)) {
                 gCodePopup = window.open("qnewwindw000.w",cp,"width=" + vUseWidth + ",height=" + vUseHeight + ",status=1,location=0,menubar=" + pMenuBar + "top=" + gCoordY + ",resizable=1,scrollbars=1,toolbar=" + pToolbar);
             } else {
                 gCodePopup = window.open("qnewwindw000.w",cp,"width=" + vUseWidth + ",height=" + vUseHeight + ",status=1,location=0,menubar=" + pMenuBar + ",top=" + gCoordY + ",left=" + gCoordX + ",resizable=1,scrollbars=1,toolbar=" + pToolbar);
             }
          } else {
             if (brws.osName == 'Android')
                 gCodePopup = window.open(pOpen,cp,"width=" + vUseWidth + ",height=" + vUseHeight + ",fullscreen=yes,status=1,location=0,menubar=" + pMenuBar + ",top=" + gCoordY + ",left=" + gCoordX + ",resizable=1,scrollbars=1,toolbar=" + pToolbar);
             else
                 gCodePopup = window.open(pOpen,cp,"width=" + vUseWidth + ",height=" + vUseHeight + ",status=1,location=0,menubar=" + pMenuBar + ",top=" + gCoordY + ",left=" + gCoordX + ",resizable=1,scrollbars=1,toolbar=" + pToolbar);

             finishPopup();

             if (pIndepWin == 1 || pIndepWin == 2) {
                if (pIndepWin == 2 && gCodePopup && gCodePopup.opener) {
                    gCodePopup.opener = null;
                }
                gCodePopup = null;
             }
             gPostForm=true;
             return;
          }

          //This does not work for Chrome, since Chrome doesn't actually block the pop-up, but opens it in a tiny minimized window at the lower right corner.  --RH 9/17/10
          if (!gCodePopup) {
             gOpening = false;
             unChangeCursor();
             var vMessage='';
             if (document.getElementById("CurrentProgram") && document.getElementById("CurrentProgram").value=='skyportlogin.w')
                 vMessage += "This warning is to let you know that your pop-up blocker has prevented the system from opening up the application.\n\n";
             else
                 vMessage += "This warning is to let you know that your pop-up blocker has prevented the system from opening up a new window.\n\n";
             vMessage += "We recommend you modify your browser settings to allow pop-ups from this site to prevent this warning in the future.\n\n";
             vMessage += "<a href='https://support.skyward.com/DeptDocs/Corporate/Documentation/Public%20Website/Tutorials/FQ/IT_SA_ER_WB_1461348_000_M.html' target='_blank' style='text-decoration:underline;'>Click here for instructions on disabling your pop-up blocker</a>.\n\n";
             vMessage += "You may also click the Retry option below to try opening the window again.";

             var vExtraCancel = '';
             if (window.cancelledPopup)
                 vExtraCancel = 'cancelledPopup()';

             message(vMessage,'Pop-up Blocker Warning',0,0,0,'Retry','openNewWindow("' + pOpen + '",' + pWidth + ',' + pHeight + ',' + pResizable + ',"' + pMode + '",' + pMenuBar + ',' + pIndepWin + ',' + pToolbar + ');','Cancel',vExtraCancel);
             return;
          }

          try {
             var html;
             if (gAnimate) {
                var safari11 = (gIsSafari && brws.version >= 11);
                if (pMode=='export') {
                   html = "Exporting to Excel";
                } else if (pMode=='chart') {
                   html = "Creating chart";
                } else if (pMode=='print') {
                   html = "Exporting For Print";
                } else {
                   html = "Loading";
                }
                if (safari11) {
                    $(gCodePopup.document.body).append("<div style='font-family:monospace;color:#123479;font-size:13pt;padding-top:12px'>" + html + "</div>");
                }
                else {
                    html = "<table height='90%' width='100%'><tr valign='center' align='center'><td>" +
                           "<table><tr height='41px'><td id='loading' align='center' style='font-family:monospace;color:#123479;font-size:13pt'>" +
                           html +
                           "<div id='loadmsg' style='display:inline'>&nbsp;&nbsp;&nbsp;</div></td>" +
                           "</tr></table>" +
                           "</td></tr></table>" +
                           "<script language='Javascript'>" +
                           "var i=0,p=['.&nbsp;&nbsp;','..&nbsp;','...','&nbsp;&nbsp;&nbsp;'];" +
                           "function a() {if (!document.getElementById('loadmsg')) return; document.getElementById('loadmsg').innerHTML=p[i]; if (i===3) {i=0} else {++i;} setTimeout(a, 300);}" +
                           "setTimeout(a, 300);" +
                           "</script>";
                    gCodePopup.document.write(html);
                }

             } else {
                 html = '<table style="height:100%;width:100%"><tr valign="center" align="center"><td><b>After viewing your file, please close this window.</b></td></tr></table>';
                 if (safari11)
                     $(gCodePopup.document.body).append(html);
                 else
                     gCodePopup.document.write(html);
                 gAnimate = true;
             }

          } catch(ex) {}
      }

      if (!gNoPopup && pIndepWin == 0) {
         if (pOpen.indexOf('?') == -1) {
             pOpen += '?isPopup=true';
         } else {
             pOpen += '&isPopup=true';
         }
      }

      if (window.custStartPopup) {// after all returns and before submit
          custStartPopup();
      }
      storeOldValuesAndPrepForm();  //Set form fields to submit to popup

      if (gIsIphone || gIsIpad)
          gCodePopup = window.open("qnewwindw000.w", cp, "", false);  // Have reference to popup in case it is needed (iPhone and iPad skip the more complex ways of initializing gCodePopup)
      window.document.detailform.target = cp;
      window.document.detailform.action = pOpen;
      window.document.detailform.submit();
      restoreOldValues();

      finishPopup();
      if (pIndepWin == 1 || pIndepWin == 2) {
          if (pIndepWin == 2 && gCodePopup && gCodePopup.opener) {
              gCodePopup.opener = null;
          }
          gCodePopup = null;
      }
   }
}

function finishPopup() {
   if (window.custFinishPopup) {
       custFinishPopup();
   }
   if (gCodePopup && !gIsIphone && !gIsIpad && !document.getElementById('maximizeWindows') && !gIsChrome && !gIsMoz && !gIsMicrosoftEdge) {
      try {
         if (gIsIE) {
             gCodePopup.moveTo(gCoordX,gCoordY);
             if (!gIsIE7 && !gIsIE8) {
                gCodePopup.resizeTo(gWidth + 11,gHeight + 92);
             }
         }
         else if (gIsSafari) {
             if (gCoordX >= 0 && gCoordX < screen.availWidth) {
                 gCodePopup.resizeTo(gWidth + 6, gHeight + 92);
             }
         } else {
             gCodePopup.resizeTo(gWidth + 6, gHeight + 92);
         }         
      }
      catch(er) {}
   }

   gNoPopup = false;
   gDoValidation = true;
   gOpening = false;
   unChangeCursor();
}
function getCoord(pWidth,pHeight) {
   var vWinHeight;
   var vWinWidth;
   var vWinLeft;
   var vWinTop;
   var windowSize = getWindowSize();

   vWinHeight = windowSize.height;
   vWinWidth = windowSize.width;

   if (gIsIE || gIsOpera) {
      if( document.documentElement && (document.documentElement.clientWidth && document.documentElement.clientHeight) && !gIsOpera ) {
           vWinLeft = window.screenLeft;
           vWinTop = window.screenTop;
           if (pWidth==0 && pHeight==0) {
             pHeight = gCodePopup.document.documentElement.clientHeight;
             pWidth = gCodePopup.document.documentElement.clientWidth + 16;
           }
       } else {
           vWinLeft = window.screenLeft;
           vWinTop = window.screenTop;
           if (pWidth==0 && pHeight==0) {
             pHeight = gCodePopup.document.body.clientHeight;
             pWidth = gCodePopup.document.body.clientWidth + 16;
          }
       }
   } else {
       vWinLeft = window.screenX;
       vWinTop = window.screenY;
       if (pWidth==0 && pHeight==0) {
          pHeight = gCodePopup.innerHeight;
          pWidth = gCodePopup.innerWidth;
       }
   }

   if (gIsIE6) {
      vWinHeight -= 45;
   } else if (gIsIE) {
      vWinHeight -= 110;
   } else if (gIsChrome) {
      vWinHeight -= 66;
      vWinWidth  += 6;
   } else if (gIsMac) {
      vWinHeight -= 22;
      vWinWidth  -= 6;
   } else {
      vWinHeight -= 8;
      vWinWidth  += 10;
   }

   gCoordY = ((vWinHeight / 2) + vWinTop - (pHeight / 2));
   gCoordX = ((vWinWidth / 2) + vWinLeft - (pWidth / 2));

   if (gCoordY < 0) {
       gCoordY = 0;
   }
}

function abortHttpRequest(pReset) {
   try {
       if (pReset != false) {
           gDoValidation=false;
           gAllowBlur=false;
           gAbortRequests = true;
           for (var i = gXmlHTTPObjects.length - 1; i >= 0; i--) {
               if (gXmlHTTPObjects[i] != null) {
                   gXmlHTTPObjects[i].abort();
                   gXmlHTTPObjects[i] = null;
               }
           }
       } else {
           if (gExtraInfoXmlHttp != null) {
              gAbortExtraInfo = true;
              gExtraInfoXmlHttp.abort();
              gExtraInfoXmlHttp = null;
           }
       }
   } catch(er) {}
}

function padZero(num){
   return ((num <= 9) ? ("0" + num) : num);
}

function validateCalDate(dateTextboxID, dayOfWeekTextboxID){
   if (!gDoValidation || gDontValidate[dateTextboxID]) {
       return true;
   }

   var dateTextbox = document.getElementById(dateTextboxID);
   var dateVal = rightTrim(dateTextbox.value);
   var dateYear = 0;
   var invalidYear = false;
   dateTextbox.value = dateVal;

   if (dateVal.length >= 4 && dateVal.length < 11) {
       dateVal = formatDateString(dateVal.slice(0,10));
   } else {
       dateVal = '';
   }

   if (dateVal != '') {
      try {
          dateYear = parseInt(dateVal.substring(6, 10), 10);;
      } catch(er) {}
      if (dateYear < 1900) {
         invalidYear = true;
         dateVal='';
      }
   }

   if (dateVal != '') {
      dateTextbox.value = dateVal;
      if (document.getElementById(dayOfWeekTextboxID)) {
          document.getElementById(dayOfWeekTextboxID).value = getDayOfWeek(dateVal);
      }
      validDate = true;
   } else if (dateTextbox.className.match(/disabled/i) === null) {
      validDate = false;
      if (dateTextbox.value != ''){
         if (gDoValidation==true) {
            if (gDispMsg==true) {
               gDispMsg=false;

               if (invalidYear) {
                   message('The date entered must be on or after 01/01/1900.','',0,0,0,'OK','gDispMsg=true; putFocus("' + dateTextboxID + '");');
               } else {
                   message('The value entered is not a valid date.','',0,0,0,'OK','gDispMsg=true; putFocus("' + dateTextboxID + '");');
               }
            } else {
                putFocus(dateTextboxID);
            }
         }
      }
      if (document.getElementById(dayOfWeekTextboxID)) {
          document.getElementById(dayOfWeekTextboxID).value='';
      }
   }
   return validDate;
}

function getDayOfWeek(dateString){
   var myDate   = new Date(dateString);
   var myDayString;

   switch(myDate.getDay()){
   case 0:
      myDayString = 'Sunday';
      break;
   case 1:
      myDayString = 'Monday';
      break;
   case 2:
      myDayString = 'Tuesday';
      break;
   case 3:
      myDayString = 'Wednesday';
      break;
   case 4:
      myDayString = 'Thursday';
      break;
   case 5:
      myDayString = 'Friday';
      break;
   case 6:
      myDayString = 'Saturday';
      break;
   }
   return myDayString;
}

function formatDateString(unformatted){
   var dateVal;
   var delimit1;
   var delimit2;

   delimit1 = getDelimiter(unformatted, 0);

   if (delimit1 == -1) {
       dateVal = getDate_noDelimit(unformatted);
   } else if (delimit1 == 0) {
       dateVal = '';
   } else {
      delimit2 = getDelimiter(unformatted, delimit1 + 1);
      if (delimit2 == -1 || delimit2 == delimit1 + 1) {
          dateVal = '';
      } else {
          dateVal = getDate_delimited(unformatted, delimit1, delimit2);
      }
   }
   return dateVal;
}

function getDelimiter(theString, startPos){
   var firstDelimiterPos;

   //Find the position of each possible delimiter
   var fSlash = theString.indexOf("/",  startPos);
   var bSlash = theString.indexOf("\\", startPos);
   var dash   = theString.indexOf("-",  startPos);

   //If delimiter is not found, make sure it won't have the lowest position
   if (fSlash == -1){
       fSlash = 999;
   }
   if (bSlash == -1) {
       bSlash = 999;
   }
   if (dash   == -1){
       dash   = 999;
   }

   //Determine which delimiter is used first
   if (fSlash < 999 && fSlash <= bSlash && fSlash <= dash) {
       firstDelimiterPos = fSlash;
   } else if (bSlash < 999 && bSlash <= fSlash && bSlash <= dash) {
       firstDelimiterPos = bSlash;
   } else if (dash < 999 && dash <= fSlash && dash <= bSlash) {
       firstDelimiterPos = dash;
   } else {
       firstDelimiterPos = -1;
   }

   return firstDelimiterPos;  //Return the position of the delimiter
}

function getDate_noDelimit(unformatted){
   var month;
   var day;
   var year;
   var doFindDate = true;
   var dateVal;

   //Try to guess which part of the date string is which
   if (unformatted.length == 4){
      month = unformatted.slice(0, 1);
      day   = unformatted.slice(1, 2);
      year  = unformatted.slice(2, 4);
   } else if (unformatted.length == 5){
      month = unformatted.slice(0, 1);
      day   = unformatted.slice(1, 3);
      year  = unformatted.slice(3, 5);
   } else if (unformatted.length == 6){
      month = unformatted.slice(0, 2);
      day   = unformatted.slice(2, 4);
      year  = unformatted.slice(4, 6);
   } else if (unformatted.length == 7){
      month = unformatted.slice(0, 1);
      day   = unformatted.slice(1, 3);
      year  = unformatted.slice(3, 7);
   } else if (unformatted.length == 8){
      month = unformatted.slice(0, 2);
      day   = unformatted.slice(2, 4);
      year  = unformatted.slice(4, 8);
   } else {
       doFindDate = false;
   }

   if (doFindDate) {
       dateVal = findDate(month, day, year); //Try to find this date
   } else {
       dateVal = '';  //Invalid date
   }

   return dateVal;
}

function getDate_delimited(theString, delimit1, delimit2){
   //Grab each delimited part out
   var month = theString.slice(0, delimit1);
   var day   = theString.slice(delimit1 + 1, delimit2);
   var year  = theString.slice(delimit2 + 1, theString.length);

   return findDate(month, day, year);
}

function findDate(monthIn, dayIn, yearIn){
   //Make sure year is a 4-digit number
   if (yearIn.length == 2){
      if (parseInt(yearIn,10) <= 30){
         yearIn = '20' + yearIn;
      } else {
         yearIn = '19' + yearIn;
      }
   } else if (yearIn.length == 1) {
       yearIn = '200' + yearIn;
   }

   //Get date values as integers
   var month = parseInt(monthIn, 10);
   var day   = parseInt(dayIn, 10);
   var year  = parseInt(yearIn, 10);
   var dateVal;

   //Date validation
   if (isNaN(month) || isNaN(day) || isNaN(year)) {
       dateVal = '';
   } else if (month < 1 || day < 1 || year < 1) {
       dateVal = '';
   } else if (year > 9999) {
       dateVal = '';
   } else if (!isDayValid(month, day, year)) {
       dateVal = '';
   } else {
      //Add a day if set up to do so (when + button is clicked)
      if (doAddDay == 'add'){
         day += 1;
         if (!isDayValid(month, day, year)){
            day = 1;
            month += 1;
            if (!isDayValid(month, day, year)){
               month = 1;
               year += 1;
            }
         }
      }

      //Subtract a day if set up to do so (when - button is clicked)
      if (doAddDay == 'subtract'){
         day -= 1;
         if (day == 0){
            if (month == 1){    //If January 1st, just go to December 31st of last year
               day = 31;
               month = 12;
               year -= 1;
            } else {               //Otherwise, go to last month and find the correct last day
               month -= 1;
               day = 31;
               while (!isDayValid(month, day, year)){
                  day -= 1;
               }
            }
         }
      }

      //Format date for output
      if (String(month).length == 1) {
          month = '0' + month;
      }
      if (String(day).length == 1) {
          day = '0' + day;
      }
      if (String(year).length == 1) {
          year = '200' + year;
      } else if (String(year).length == 2){
         if (parseInt(year,10) <= 30){
            year = '20' + year;
         } else {
            year = '19' + year;
         }
      } else if (String(year).length == 3) {
          year = '0' + year;
      }

      dateVal = month + '/' + day + '/' + year;
   }
   return dateVal;
}

function isDayValid(month, day, year){
   var returnVal = true;

   if (month > 12 || day > 31) {
       //Can't have a 13th month
       //No month has more than 31 days
       returnVal = false;
   } else if (month == 2){  //February has 28 days, or 29 on leap year
      if (Date.isLeapYear(year)){
         if (day > 29) {
             returnVal = false;
         }
      } else if (day > 28) {
          returnVal = false;
      }
   } else if (month == 4 || month == 6 || month == 9 || month == 11){//These months only have 30 days
      if (day > 30) {
          returnVal = false;
      }
   }
   return returnVal;
}

function keyHandler(e){
    if (!e) {
        var e = window.event;
    }
   var returnVal = true;

   returnVal = calKeyPress(e);

   doAddDay = '';    //Always reset the add/subtract day indicator

   // Prevent the character from actually printing into the textbox
   if (!returnVal){
      cancelEvent(e);
   }
   return returnVal;
}

function calKeyPress(e){
   if (!e) {
       var e = window.event;
   }
   var keyCode = e.keyCode;
   var vTarget = getElementForEvent(e);

   if (keyCode == 107 || keyCode == 187 || keyCode == 61){ // plus key for add one day
      if (vTarget.className.toLowerCase().indexOf("disabled")!=-1) return false;

      validateCalDate(vTarget.name, vTarget.name + "day");
      if (validDate) {
         doAddDay = 'add';
         validateCalDate(vTarget.name, vTarget.name + "day");
      }
      return false;
   } else if (keyCode == 109 || keyCode == 189 || keyCode == 173){ // minus key for subtract one day
      if (vTarget.className.toLowerCase().indexOf("disabled")!=-1) return false;

      validateCalDate(vTarget.name, vTarget.name + "day");
      if (validDate) {
         doAddDay = 'subtract';
         validateCalDate(vTarget.name, vTarget.name + "day");
      }
      return false;
   } else if (keyCode == 84){ // t or T for today
      if (vTarget.className.toLowerCase().indexOf("disabled")!=-1) return false;

      var today = new Date();
      document.getElementById(vTarget.name).value = (today.getMonth() + 1) + "/" + today.getDate() + "/" + today.getFullYear();
      validateCalDate(vTarget.name, vTarget.name + "day");
      return false;
   } else if (keyCode == 89){ // y or Y for yesterday
      if (vTarget.className.toLowerCase().indexOf("disabled")!=-1) return false;

      var today = new Date();
      today.setDate(today.getDate()-1);
      document.getElementById(vTarget.name).value = (today.getMonth() + 1) + "/" + today.getDate() + "/" + today.getFullYear();
      validateCalDate(vTarget.name, vTarget.name + "day");
      return false;
   } else if (keyCode == 77 || keyCode == 82 || keyCode == 87){ // m/M, r/R, w/W for tomorrow
      if (vTarget.className.toLowerCase().indexOf("disabled")!=-1) return false;

      var today = new Date();
      today.setDate(today.getDate()+1);

      document.getElementById(vTarget.name).value = (today.getMonth() + 1) + "/" + today.getDate() + "/" + today.getFullYear();
      validateCalDate(vTarget.name, vTarget.name + "day");
      return false;
   } else {
       return true;
   }
}
function outputNumber(pParent,numberName,numberValue,numberSensitive,tabIndex,privateInfo,numberTitle,numberJs,numberStyle,numberFormat,numberSize){
    if (!numberName) {
        return;
    }
    if (typeof pParent == 'string') {
        pParent = document.getElementById('pParent');
    }
    var vNumberString = "";

    if (!numberValue) {
        var numberValue = "";
    }
    if (!numberFormat) {
        var numberFormat = "";
    }
    if (!numberJs) {
        var numberJs = "";
    }
    if (!numberSize) {
        var numberSize = 0;
    }
    if (numberFormat.match(/\./) != null) {
        /*If format such as >>>.99 is passed in and value = 0, suppress to a blank value*/
        if (numberFormat.split(".")[0].match(/9/) == null && parseFloat(prepareNumber(numberValue)) == 0) {
            numberValue = "";
        } else {
            numberValue = formatNumber(prepareNumber(numberValue), numberFormat);
        }
    } else {
        numberValue = formatNumber(prepareNumber(numberValue), numberFormat);
    }

    /*Fills in default if no override was passed in*/
    if (numberSize == 0) {
        numberSize = numberFormat.length + 2;
    }

    numberJs = numberJs.replace(/'/g, '"');
    numberJs = "onfocus='removeCommas(\"" + numberName + "\")' onKeyPress='return checkNumberKey(event,\"" + numberName + "\",\"" + numberFormat + "\")' onblur='checkNumberBlur(\"" + numberName + "\",\"" + numberFormat + "\"); " + numberJs + "'";

    return outputText(pParent, numberName, numberValue, numberSensitive, tabIndex, privateInfo, numberTitle, numberJs, numberStyle, numberFormat, numberSize, true, false);

}
function outputText(pParent,textName,textValue,textSensitive,tabIndex,privateInfo,textTitle,textJs,textStyle,textMaxLength,textSize, lIsNum, vSpellcheck){
    /*
     *  pParent: html element to append the textbox to.  if passed, the textbox will be appended to this element, else the HTML string for the textbox will be returned
     */
    if (!textName) {
        return;
    }
    if (typeof pParent == 'string') {
        pParent = document.getElementById('pParent');
    }
    var vType, vTextboxString;

    if (!textValue) {
        textValue = "";
    }
    if (!privateInfo) {
        var privateInfo = '';
    }
    if (trim(textValue) == "") {
        textValue = trim(textValue);
    }
    textStyle = textStyle.replace(/'/g, '"');
    if (textMaxLength == 0) {
        textMaxLength = 10;
    }
    if (textSize == 0) {
        textSize = 10;
    }
    if (!tabIndex) {
        var tabIndex = -1;
    }
    if (textStyle.toLowerCase() == "password") {
        vType = 'password';
        textStyle = '';
    } else {
        vType = 'text';
    }
    if (!lIsNum) {
        var lIsNum = false;
    }
    if (!vSpellcheck) {
        var vSpellcheck = false;
    }

    textStyle = getTextWidth(textSize, textStyle);

    if (!lIsNum) {
        var lIsNum = false;
    }

    if (textJs != '' &&
        textJs.match(/onblur/i) == null &&
        textJs.match(/onfocus/i) == null &&
        textJs.match(/onchange/i) == null &&
        textJs.match(/onkeypress/i) == null &&
        textJs.match(/onkeydown/i) == null) {
        textJs = "onblur='" + textJs.replace(/'/g, '"') + "'";
    }

    if (gIsMobile) {
        textStyle = "height:30px;" + textStyle;
    }
    if (checkOption(textSensitive)) {
        if (privateInfo.toLowerCase() == 'skip') {
            privateInfo = '';
        }
        vTextboxString = "<input type='" + vType + "' class='EditInput" + (lIsNum ? 'Num' : '') + "' " +
             "name='" + textName + "' " +
             "id='" + textName + "' " +
             (vSpellcheck ? "spellcheck='true' " : "spellcheck='false' ") +
             "autocomplete='off' " +
             (textValue == "" ? "" : 'value="' + Encoder.htmlEncode(textValue) + '" ') +
             "tabIndex='" + parseInt(tabIndex, 10) + "' " +
             (privateInfo == "" ? "" : "pv-data='" + privateInfo + "' ") +
             (textTitle == "" ? "" : 'tooltip="' + textTitle + '" ') +
             (textJs == "" ? "" : textJs + " ") +
             (textStyle == "" ? "" : "style='" + textStyle + "' " ) +
             "maxlength='" + textMaxLength + "' " +
             "size='" + textSize + "'" +
             " />";
       vTextboxString += "<script type='text/javascript'>document.getElementById('" + textName + "').origValue = '" + Encoder.htmlEncode(textValue) + "';atchColor(document.getElementById('" + textName + "'));</script>";
    } else {
        vTextboxString = "<input type='" + vType + "' class='EditInputDisabled" + (lIsNum ? 'Num' : '') + "' " +
           "name='" + textName + "' " +
           "id='" + textName + "' " +
           (textValue == ""  ? "" : 'value="' + Encoder.htmlEncode(textValue) + '" ') +
           "tabIndex='-" + parseInt(tabIndex, 10) + "' " +
           (textTitle == "" ? "" : 'tooltip="' + textTitle + '" ') +
           (textStyle == "" ? "" : "style='" + textStyle + "' " ) +
           "size='" + textSize + "' " +
           "readonly='readonly' />";
    }

    if (pParent) {
        $(pParent).append(vTextboxString);
        return document.getElementById(textName);
    } else {
        return vTextboxString;
    }
}

function outputEEL(pParent,pCodeName,pCodeValue,pDescValue,pWhenSensitive,pTabIndex,pPrivateInfo,pTitle,pJs,pStyle,pCodeMaxLength,pDescSize,pEelProgram,pCodeType,pReturnFunc,lEnableEELDesc, EELWidthAddOn){
    /*
     *  pParent: html element to append the eel to.  if passed, the eel will be appended to this element, else the HTML string for the eel will be returned
     */
    if (!pCodeName || !pEelProgram) {
        return;
    }
    if (typeof pParent == 'string') {
        pParent = document.getElementById('pParent');
    }
    var pJsDesc, vEELWidth, vEELStyle, vEELString, vSensitive;
    if (!pCodeValue) {
        var pCodeValue = "";
    }
    if (!pDescValue) {
        var pDescValue = "";
    }
    if (!EELEnableDesc) {
        var EELEnableDesc = false;
    }
    if (!pCodeMaxLength || pCodeMaxLength == 0) {
        var pCodeMaxLength = 3;
    }
    if (!pDescSize) {
        var pDescSize = 0;
    }
    if (pDescSize > 1) {
        pDescSize -= 1;
    }
    if (!pStyle) {
        var pStyle = "";
    }
    if (!pReturnFunc) {
        var pReturnFunc = "";
    }
    if (!EELWidthAddOn) {
        var EELWidthAddOn = 0;
    }
    pStyle = pStyle.replace(/'/g, '"');
    if (!pTitle) {
        var pTitle = "";
    }
    vSensitive = checkOption(pWhenSensitive);
    if (pStyle.match(/width/gi) != null && pStyle.match(/width/gi).length < 2) {
        vEELWidth = (pCodeMaxLength * 5) + 32;
        if (pDescSize > 0) {
            vEELWidth += (pDescSize * 5 ) + 24;
        }
        if (lEnableEELDesc) {
            vEELWidth += 12;
        }
        if (checkOption(pWhenSensitive)) {
            vEELWidth += 15;
        }
        vEELString = "<div id='" +  pCodeName + "wrap' class='eelWrap' style='width:" + (vEELWidth - 1) + "px'><table cellspacing='0' cellpadding='0'><tbody><tr>";
    } else {
        vEELString = "<div id='" +  pCodeName + "wrap' class='eelWrap'><table cellspacing='0' cellpadding='0'><tbody><tr>";
    }

    if (vSensitive) {
        if (gIsMobile) {
            pTitle = "";
        }
        pJs = pJs.replace(/"/g, "'").replace(/javascript:/gi, "").replace(/onblur=/gi, "");
        if (pDescSize > 0) {
            if (lEnableEELDesc) {
                pJsDesc = "onblur=" + String.fromCharCode(34) + "codeValidation('" + pEelProgram + "','" + pCodeType + "',this,window.document.detailform." + pCodeName + ",true); " + pJs + String.fromCharCode(34);
            }
            pJs = "onblur=" + String.fromCharCode(34) + "codeValidation('" + pEelProgram + "','" + pCodeType + "',this,window.document.detailform." + pCodeName + "desc); " + pJs + String.fromCharCode(34);
        } else {
            pJs = "onblur=" + String.fromCharCode(34) + "codeValidation('" + pEelProgram + "','" + pCodeType + "',this,''); " + pJs + String.fromCharCode(34);
        }
        vEELString += "<td class='eelValue'>";
        if (vSensitive) {
            vEELString += outputText(null, pCodeName, pCodeValue, pWhenSensitive, pTabIndex, pPrivateInfo, pTitle, pJs, pStyle, pCodeMaxLength, pCodeMaxLength + 2);
        }
        vEELString += "</td>";


       vEELString +=  "<td class='eelArrow'>";
           vEELString +=  "<a href=\"javascript:displayEelList('" + pCodeName + "')\" tabIndex='-1' id='" + pCodeName + "img' tooltiptop='Click to display a list of valid entries.' onmouseover='gDoValidation=false;' onmouseout='gDoValidation=true;'>&nbsp;</a>";
       vEELString += "</td>";

    } else {
        vEELString += "<td class='eelValue'>";
          vEELString += outputText(null, pCodeName, pCodeValue, "", 0, "", pTitle, "", pStyle, pCodeMaxLength, pCodeMaxLength + 2);
        vEELString += "</td>";
    }


    if (lEnableEELDesc && vSensitive) {
        vEELString += "<td class='eelDesc'>";
            vEELString += outputText(pCodeName + "desc", pDescValue, pWhenSensitive, pTabIndex + 1, pPrivateInfo, pTitle, pJsDesc, pStyle, pDescSize, pDescSize);
        vEELString += "</td>";
        vEELString += "<td class='eelArrow'>";
            vEELString += "<a href=\"javascript:displayEelList('" + pCodeName + "desc')\" tabIndex='-1' id='" + pCodeName + "descimg' tooltiptop='Click to display a list of valid entries.' onmouseover='gDoValidation=false;' onmouseout='gDoValidation=true;'>&nbsp;</a>";
        vEELString += "</td>";
    } else if (pDescSize > 0) {
        vEELStyle = getTextWidth(pDescSize, "");
        vEELString += "<td class='eelDesc'>";
            vEELString += "<input type='text' class='EditInputDisabledEel'" +
                  " name='" + pCodeName + "desc'" +
                  " id='" + pCodeName + "desc'" +
                  ' value="' + Encoder.htmlEncode(pDescValue) + '"' +
                  (pTitle == "" ? "" : ' tooltiptop="' + pTitle + '"') +
                  " tabIndex='-" + parseInt(pTabIndex, 10) + "'" +
                  (vEELStyle == "" ? "" : " style='" + vEELStyle + "'" ) +
                  " size='" + pDescSize + "'" +
                  " readonly='readonly' />";
        vEELString += "</td>";
    }

    vEELString += "</tr></table></div>";

    if (vSensitive) {
        vEELString += "<div class='autocomplete' style='z-index:250;' id='" + pCodeName + "div'  name='" + pCodeName + "div'></div>";
        vEELString += "<script type='text/javascript'>";
        if (pDescSize > 0){
            vEELString += "autocomplete('" + pEelProgram + "',window.document.detailform." + pCodeName + ", window.document.detailform." + pCodeName + "desc, '" + pCodeName + "div', '" + pCodeType + "'," + EELWidthAddOn + ");";
        } else {
            vEELString += "autocomplete('" + pEelProgram + "',window.document.detailform." + pCodeName + ", '', '" + pCodeName + "div', '" + pCodeType + "'," + EELWidthAddOn + ");";
        }
        if (pReturnFunc != "") {
            vEELString += "function " + pReturnFunc + "(pCodeValue,pDescValue) {";
                if (pDescSize > 0) {
                   vEELString += "window.document.detailform." + pCodeName + "desc.value=pDescValue;";
                }
                vEELString += "window.document.detailform." + pCodeName + ".value=pCodeValue;";
                vEELString += "window.document.detailform." + pCodeName + ".focus();";
            vEELString += "}";
        }
        if (lEnableEELDesc) {
            vEELString += "autocomplete('" + pEelProgram + "',window.document.detailform." + pCodeName + "desc, window.document.detailform." + pCodeName + ", '" + pCodeName + "div', '" + pCodeType + "'," + EELWidthAddOn + ", true);";
            vEELString += "atchColor(document.getElementById('" + pCodeName + "desc'));";
        }
        vEELString += "addEllToWatch(document.getElementById('" + pCodeName + "wrap'));";
        vEELString += "</script>";
    }

    if (pParent) {
        $(pParent).append(vEELString);
        return document.getElementById(pCodeName);
    } else {
        return vEELString;
    }
}
function outputHiddenField(pID, pValue) {
    var field = document.detailform[pID];
    if (field) {
        field.value = pValue;
        return field;
    } else {
        field = $("<input type='hidden' />")
                    .attr('id', pID)
                    .attr('name', pID)
                    .attr('value', pValue)
                    .val(pValue)
                    .appendTo(document.detailform);
        return field.get(0);
    }
}
function getTextWidth(pSize, pStyle){
    if (!pSize) {
        return;
    }
    if (!pStyle) {
        var pStyle = "";
    }
    if (pStyle.match(/width:/g) != null) {
        return;
    }
    if (pStyle == 'plain') {
        pStyle = 23 + (parseInt(pSize, 10) * 5);
    } else if (pStyle == 'bold') {
        pStyle = "width:" + (28 + (parseInt(pSize, 10) * 6)) + "px; " + pStyle;
    } else if (pStyle == 'monospace') {
        pStyle = "width:" + (11 + (parseInt(pSize, 10) * 5)) + "px; " + pStyle;
    } else {
        pStyle = "width:" + (23 + (parseInt(pSize, 10) * 5)) + "px; " + pStyle;
    }
    return pStyle;
}
function prepareNumber(pString){
    if (!pString) {
        return "";
    }
    return pString.replace(/\$/g, "")
                  .replace(/\%/g, "")
            	  .replace(/\,/g, "")
                  .replace(/\<u>/gi, "")
                  .replace(/\<\/u>/gi, "")
                  .replace(/\<b>/gi, "")
                  .replace(/\<\/b>/gi, "");
}
function checkOption(pOption){
    if (!pOption) {
        var pOption = "";
    }
    pOption = pOption.toLowerCase();
    var vMaintOption = document.getElementById('vMaintOption').value;
    if (vMaintOption == "" && (pOption.indexOf("b") >= 0 || pOption.indexOf("v") >= 0)) {
        return true;
    } else if (vMaintOption.match(/add/i) && pOption.indexOf("a") >= 0) {
        return true;
    } else if (vMaintOption.match(/edit/i) && pOption.indexOf("e") >= 0) {
        return true;
    } else if (vMaintOption.match(/select/i) && pOption.indexOf("s") >= 0) {
        return true;
    } else {
        return false;
    }
}


function getElementTextNS(prefix, local, parentElem, index) {
   var result = "";

   if (prefix && isIE) {
       result = parentElem.getElementsByTagName(prefix + ":" + local)[index];
   } else {
       result = parentElem.getElementsByTagName(local)[index];
   }

   if (result) {
      if (result.childNodes.length > 1) {
         var vResult = "";
         for (var i = 0; i < result.childNodes.length; i++) {
            vResult += result.childNodes[i].nodeValue;
         }
         vResult = trim(vResult);
         return vResult;
      } else if ( result.childNodes.length != 0) {
          return result.firstChild.nodeValue;
      } else {
          return "";
      }
   } else {
       return "n/a";
   }
}

function trim(s) {
  while (s.substring(0,1) == " ") {
    s = s.substring(1,s.length);
  }
  while (s.substring(s.length-1,s.length) == " ") {
    s = s.substring(0,s.length-1);
  }
  return s;
}

function getDomDocumentPrefix() {
   if (getDomDocumentPrefix.prefix) {
       return getDomDocumentPrefix.prefix;
   }
	var prefixes = ["MSXML2", "Microsoft", "MSXML", "MSXML3"];
	var o;
	for (var i = 0; i < prefixes.length; i++) {
      try {
         o = new ActiveXObject(prefixes[i] + ".DomDocument");
			return getDomDocumentPrefix.prefix = prefixes[i];
		}
		catch (ex) {};
	}
	throw new Error("Could not find an installed XML parser");
}

function validateRequired(pFieldId,pFieldLabel) {
   if (!gDoValidation || gDontValidate[pFieldId])
      return true;

   if (!document.getElementById(pFieldId))
      return false;

   var vValue=document.getElementById(pFieldId).value;
   if (vValue==null || rightTrim(vValue)=='') {
      if (pFieldLabel && pFieldLabel!='' && gDispMsg==true) {
         gDispMsg=false;
         message(pFieldLabel + ' is a required field.','',0,0,0,'OK','gDispMsg=true; putFocus("' + pFieldId + '");');
      }
      else
         putFocus(pFieldId);
      return false;
   }
   return true;
}
function validateDecimal(pFieldId,pFieldLabel) {
   if (!gDoValidation || gDontValidate[pFieldId])
      return true;

   if (!document.getElementById(pFieldId))
      return false;

   var vValue=document.getElementById(pFieldId).value;
   vValue=vValue.replace(/,/g,'');
   vValue=vValue.replace(/\$/g,'');
	if(parseFloat(vValue) != vValue) {
      if (pFieldLabel && pFieldLabel!='' && gDispMsg==true) {
         gDispMsg=false;
         message(pFieldLabel + ' must be a decimal.','',0,0,0,'OK','gDispMsg=true; putFocus("' + pFieldId + '");');
      }
      else
         putFocus(pFieldId);
      return false;
   }
   return true;
}
function validateInteger(pFieldId,pFieldLabel) {
   if (!gDoValidation || gDontValidate[pFieldId])
      return true;

   if (!document.getElementById(pFieldId))
      return false;

   var vValue=document.getElementById(pFieldId).value;
   vValue=vValue.replace(/,/g,'');
	if(parseInt(vValue, 10) != vValue) {
      if (pFieldLabel && pFieldLabel!='' && gDispMsg==true) {
         gDispMsg=false;
         message(pFieldLabel + ' must be an integer.','',0,0,0,'OK','gDispMsg=true; putFocus("' + pFieldId + '");');
      }
      else
         putFocus(pFieldId);
      return false;
   }
	return true;
}
function validateIntegerRange(pFieldId,low,high,pFieldLabel) {
   if (!gDoValidation || gDontValidate[pFieldId])
      return true;

   if (!document.getElementById(pFieldId))
      return false;

	if(!validateInteger(pFieldId,pFieldLabel))
      return false;

   var vValue=document.getElementById(pFieldId).value;
	var theIntValue = parseInt(vValue.replace(/,/g,''), 10);
	if(low != null && theIntValue < low) {
      if (pFieldLabel && pFieldLabel!='' && gDispMsg==true) {
         gDispMsg=false;
         message(pFieldLabel + ' must be greater than or equal to ' + low + '.','',0,0,0,'OK','gDispMsg=true; putFocus("' + pFieldId + '");');
      }
      else
         putFocus(pFieldId);
      return false;
   }

	if(high != null && theIntValue > high) {
      if (pFieldLabel && pFieldLabel!='' && gDispMsg==true) {
         gDispMsg=false;
         message(pFieldLabel + ' must be less than or equal to ' + high + '.','',0,0,0,'OK','gDispMsg=true; putFocus("' + pFieldId + '");');
      }
      else
         putFocus(pFieldId);
      return false;
   }
   return true;
}
function validateDecimalRange(pFieldId,low,high,pFieldLabel) {
   if (!gDoValidation || gDontValidate[pFieldId])
      return true;

   if (!document.getElementById(pFieldId))
      return false;

   if(!validateDecimal(pFieldId,pFieldLabel))
      return false;

   var vValue=document.getElementById(pFieldId).value;
   var vExp1 = new RegExp(",", "gi");

   var theDecimalValue = parseFloat(vValue.replace(vExp1,''));
   low = parseFloat(low.toString().replace(vExp1,''));
   high = parseFloat(high.toString().replace(vExp1,''));

   if(low != null && theDecimalValue < low) {
      if (pFieldLabel && pFieldLabel!='' && gDispMsg==true) {
         gDispMsg=false;
         message(pFieldLabel + ' must be greater than or equal to ' + low + '.','',0,0,0,'OK','gDispMsg=true; putFocus("' + pFieldId + '");');
      }
      else
         putFocus(pFieldId);
      return false;
   }

   if(high != null && theDecimalValue > high) {
      if (pFieldLabel && pFieldLabel!='' && gDispMsg==true) {
         gDispMsg=false;
         message(pFieldLabel + ' must be less than or equal to ' + high + '.','',0,0,0,'OK','gDispMsg=true; putFocus("' + pFieldId + '");');
      }
      else
         putFocus(pFieldId);
      return false;
   }
	return true;
}
function validateDate(pFieldId,pFieldLabel) {
   if (!gDoValidation || gDontValidate[pFieldId])
      return true;

   if (!document.getElementById(pFieldId))
      return false;

   var vValue=document.getElementById(pFieldId).value;
	var parseDate = vValue.split("/");

	if(parseDate == vValue)
		parseDate = vValue.split("\\");

	if(parseDate == vValue)
		parseDate = vValue.split("-");

   if (parseDate.length != 3) {
      if (pFieldLabel && pFieldLabel!='' && gDispMsg==true) {
         gDispMsg=false;
         message(pFieldLabel + ' must be a valid date.','',0,0,0,'OK','gDispMsg=true; putFocus("' + pFieldId + '");');
      }
      else
         putFocus(pFieldId);
      return false;
   }

	//Check Year
   if(!validateIntegerRangeByVal(parseDate[2], 0, 99) && !validateIntegerRangeByVal(parseDate[2], 1000, 9999)) {
      if (pFieldLabel && pFieldLabel!='' && gDispMsg==true) {
         gDispMsg=false;
         message(pFieldLabel + ' must be a valid date.','',0,0,0,'OK','gDispMsg=true; putFocus("' + pFieldId + '");');
      }
      else
         putFocus(pFieldId);
      return false;
   }

	//If its a 31 day month
	if(parseDate[0] == 1 || parseDate[0] == 3 || parseDate[0] == 5 || parseDate[0] == 7 || parseDate[0] == 8 || parseDate[0] == 10 || parseDate[0] == 12)
	{
      if(!validateIntegerRangeByVal(parseDate[1], 1, 31)) {
         if (pFieldLabel && pFieldLabel!='' && gDispMsg==true) {
            gDispMsg=false;
            message(pFieldLabel + ' must be a valid date.','',0,0,0,'OK','gDispMsg=true; putFocus("' + pFieldId + '");');
         }
         else
            putFocus(pFieldId);
         return false;
      }
	}
	//If its a 30 day month
	else if(parseDate[0] == 4 || parseDate[0] == 6 || parseDate[0] == 9 || parseDate[0] == 11)
	{
      if(!validateIntegerRangeByVal(parseDate[1], 1, 30)) {
         if (pFieldLabel && pFieldLabel!='' && gDispMsg==true) {
            gDispMsg=false;
            message(pFieldLabel + ' must be a valid date.','',0,0,0,'OK','gDispMsg=true; putFocus("' + pFieldId + '");');
         }
         else
            putFocus(pFieldId);
         return false;
      }
	}
	//If its February
	else if(parseDate[0] == 2)
	{
		if(isLeapYear(parseDate[2]))
		{
         if(!validateIntegerRangeByVal(parseDate[1], 1, 29)) {
            if (pFieldLabel && pFieldLabel!='' && gDispMsg==true) {
               gDispMsg=false;
               message(pFieldLabel + ' must be a valid date.','',0,0,0,'OK','gDispMsg=true; putFocus("' + pFieldId + '");');
            }
            else
               putFocus(pFieldId);
            return false;
         }
		}
		else
		{
         if(!validateIntegerRangeByVal(parseDate[1], 1, 28)) {
            if (pFieldLabel && pFieldLabel!='' && gDispMsg==true) {
               gDispMsg=false;
               message(pFieldLabel + ' must be a valid date.','',0,0,0,'OK','gDispMsg=true; putFocus("' + pFieldId + '");');
            }
            else
               putFocus(pFieldId);
            return false;
         }
		}
	}
	//If its something else
   else {
      if (pFieldLabel && pFieldLabel!='' && gDispMsg==true) {
         gDispMsg=false;
         message(pFieldLabel + ' must be a valid date.','',0,0,0,'OK','gDispMsg=true; putFocus("' + pFieldId + '");');
      }
      else
         putFocus(pFieldId);
      return false;
   }
	return true;
}
function isLeapYear(iYear) {
   return (iYear % 4 ? 0 : iYear % 100 ? 1 : iYear % 400 ? iYear == 200 ? 1 : 0 : 1);
}
function validateDateRange(pFieldId,low,high,pFieldLabel) {
   if (!gDoValidation || gDontValidate[pFieldId])
      return true;

   if (!document.getElementById(pFieldId))
      return false;

   if(!validateDate(pFieldId)) {
      if (pFieldLabel && pFieldLabel!='' && gDispMsg==true) {
         gDispMsg=false;
         message(pFieldLabel + ' must be a valid date.','',0,0,0,'OK','gDispMsg=true; putFocus("' + pFieldId + '");');
      }
      else
         putFocus(pFieldId);
      return false;
   }

   var vValue=document.getElementById(pFieldId).value;
	var theDateValue = getDateInt(vValue);
   var vLowValue = getDateInt(low);
   var vHighValue = getDateInt(high);

	if(low != null && theDateValue < vLowValue) {
      if (pFieldLabel && pFieldLabel!='' && gDispMsg==true) {
         gDispMsg=false;
         message(pFieldLabel + ' must be greater than or equal to ' + low + '.','',0,0,0,'OK','gDispMsg=true; putFocus("' + pFieldId + '");');
      }
      else
         putFocus(pFieldId);
      return false;
   }

	if(high != null && theDateValue > vHighValue) {
      if (pFieldLabel && pFieldLabel!='' && gDispMsg==true) {
         gDispMsg=false;
         message(pFieldLabel + ' must be less than or equal to ' + high + '.','',0,0,0,'OK','gDispMsg=true; putFocus("' + pFieldId + '");');
      }
      else
         putFocus(pFieldId);
      return false;
   }
   return true;
}
function validateDateOrder(lowDate,highDate,pFieldLabel) {
   if (!gDoValidation || gDontValidate[lowDate] || gDontValidate[highDate])
      return true;

   if (!document.getElementById(lowDate))
      return false;
   if (!document.getElementById(highDate))
      return false;

   if(!validateDate(lowDate) || !validateDate(highDate)) {
      if (pFieldLabel && pFieldLabel!='' && gDispMsg==true) {
         gDispMsg=false;
         message(pFieldLabel + ' fields must both be dates.','',0,0,0,'OK','gDispMsg=true; putFocus("' + pFieldId + '");');
      }
      else
         putFocus(lowDate);
      return false;
   }

   var vValue=document.getElementById(lowDate).value;
   var vValue2=document.getElementById(highDate).value;
	var theLowDateValue = getDateInt(vValue);
	var theHighDateValue = getDateInt(vValue2);

	if(theLowDateValue > theHighDateValue)
      return false;
	return true;
}
function getDateInt(theValue) {
   if (theValue.replace(/ /g,"").length == 0) return 0;

   var parseDate = theValue.split("/");

   if(parseDate == theValue)
      parseDate = theValue.split("\\");

   if(parseDate == theValue)
      parseDate = theValue.split("-");

   if(parseDate == theValue)
      return false;

   var theDateValue;

   if(parseInt(parseDate[2], 10) > 99)
      theDateValue = "" + parseDate[2];
   else if(parseInt(parseDate[2], 10) <= 70)
      theDateValue = "20" + parseDate[2];
   else
      theDateValue = "19" + parseDate[2];

   if(parseInt(parseDate[0], 10) < 10)
      theDateValue += "0" + parseInt(parseDate[0], 10);
   else
      theDateValue += "" + parseDate[0];

   if(parseInt(parseDate[1], 10) < 10)
      theDateValue += "0" + parseInt(parseDate[1], 10);
   else
      theDateValue += "" + parseDate[1];
   return theDateValue;
}

/*Special validations by value*/
function validateIntegerByVal(pFieldValue) {
   pFieldValue=pFieldValue.toString().replace(/,/g,'');
	if(parseInt(pFieldValue, 10) != pFieldValue)
      return false;
	return true;
}
function validateIntegerRangeByVal(pFieldValue,low,high) {
   if(!validateIntegerByVal(pFieldValue))
      return false;

   var theIntValue = parseInt(pFieldValue.toString().replace(/,/g,''), 10);
	if(low != null && theIntValue < low)
      return false;

	if(high != null && theIntValue > high)
      return false;
   return true;
}

function validateTimeRange(pFieldId,low,high,pFieldLabel) {
   if (!gDoValidation || gDontValidate[pFieldId])
      return true;

   if (!document.getElementById(pFieldId) || !document.getElementById(pFieldId + "ampm"))
      return false;

   var theTimeValue = "";
   var theTimeAmPm  = "";
   var theTime      = 0;
   var vLowValue    = "";
   var vLowAmPm     = "";
   var vLowTime     = 0;
   var vHighValue   = "";
   var vHighAmPm    = "";
   var vHighTime    = 0;

   theTimeValue = document.getElementById(pFieldId).value;
   theTimeAmPm  = document.getElementById(pFieldId + "ampm").value.toUpperCase();
   if (parseInt(theTimeValue.split(":")[0],10) != 12)
      theTime = 3600 * parseInt(theTimeValue.split(":")[0],10);
   theTime = theTime + 60 * parseInt(theTimeValue.split(":")[1],10);
   if (theTimeAmPm == "PM")
      theTime = theTime + 43200;
   if (theTime < 0)
      theTime = 0;

   if (!document.getElementById(low) || !document.getElementById(low + "ampm")) {
      if (low != null && low != "") {
         vLowValue = low.split(" ")[0];
         vLowAmPm  = low.split(" ")[1].toUpperCase();
      }
      else {
         vLowValue = null;
         vLowAmPm  = null;
      }
   }
   else {
      vLowValue = document.getElementById(low).value;
      vLowAmPm  = document.getElementById(low + "ampm").value.toUpperCase();
   }

   if (!document.getElementById(high) || !document.getElementById(high + "ampm")) {
      if (high != null && high != "") {
         vHighValue = high.split(" ")[0];
         vHighAmPm  = high.split(" ")[1].toUpperCase();
      }
      else {
         vHighValue = null;
         vHighAmPm  = null;
      }
   }
   else {
      vHighValue = document.getElementById(high).value;
      vHighAmPm  = document.getElementById(high + "ampm").value.toUpperCase();
   }

   if (vLowValue != null && vLowAmPm != null) {
      if (parseInt(vLowValue.split(":")[0],10) != 12)
         vLowTime = 3600 * parseInt(vLowValue.split(":")[0],10);
      vLowTime = vLowTime + 60 * parseInt(vLowValue.split(":")[1],10);
      if (vLowAmPm == "PM")
         vLowTime = vLowTime + 43200;
      if (vLowTime < 0)
         vLowTime = 0;
   }
   else
      vLowTime = null;

   if (vHighValue != null && vHighAmPm != null) {
      if (parseInt(vHighValue.split(":")[0],10) != 12)
         vHighTime = 3600 * parseInt(vHighValue.split(":")[0],10);
      vHighTime = vHighTime + 60 * parseInt(vHighValue.split(":")[1],10);
      if (vHighAmPm == "PM")
         vHighTime = vHighTime + 43200;
      if (vHighTime < 0)
         vHighTime = 0;
   }
   else
      vHighTime = null;


   if (vLowTime != null && theTime < vLowTime) {
      if (pFieldLabel && pFieldLabel!='' && gDispMsg==true) {
         gDispMsg=false;
         message(pFieldLabel + ' must be greater than or equal to ' + vLowValue + ' ' + vLowAmPm + '.','',0,0,0,'OK','gDispMsg=true; putFocus("' + pFieldId + '");');
      }
      else
         putFocus(pFieldId);
      return false;
   }

   if (vHighTime != null && theTime > vHighTime) {
      if (pFieldLabel && pFieldLabel!='' && gDispMsg==true) {
         gDispMsg=false;
         message(pFieldLabel + ' must be less than or equal to ' + vHighValue + ' ' + vHighAmPm + '.','',0,0,0,'OK','gDispMsg=true; putFocus("' + pFieldId + '");');
      }
      else
         putFocus(pFieldId);
      return false;
   }
   return true;
}
function initToolTips() {
    return; //no longer used
}
function checkNumberBlur(pFieldId,pFormat) {
   if (!gDoValidation || gDontValidate[pFieldId] || !document.getElementById(pFieldId))
      return true;

   var vMaxDecimal = 0;
   var vMaxWhole = 0;
   var vReqWhole = 0;
   var vSplit = '';
   var vOK = true;
   var vIsNeg = false;
   var vOrigFormat = pFormat;
   var vValue;

   removeCommas(pFieldId);
   vValue = document.getElementById(pFieldId).value;

   if (vValue!="" && pFormat.indexOf('.')==-1 && !validateInteger(pFieldId,'The value entered'))
      return false;
   else if (vValue!="" && pFormat.indexOf('.')>-1 && !validateDecimal(pFieldId,'The value entered'))
      return false;

   if (vOK==false || rightTrim(vValue)=='')
      vValue='0';

   vValue = parseFloat(vValue).toString();

   pFormat = pFormat.replace(/,/g, '');
   pFormat = pFormat.replace('%', '');
   vSplit = pFormat.split('.');
   vMaxWhole = vSplit[0].length;

   for (var i=0; i<vSplit[0].length; i++) {
      if (vSplit[0].substr(i, 1)=='9')
         vReqWhole++;
   }

   if (vSplit.length > 1)
      vMaxDecimal = vSplit[1].length;

   vSplit = vValue.split('.');

   if (vMaxDecimal>0 && vSplit.length<=1)
      vValue+='.';

   if (!vSplit[1])
      vSplit[1] = '';

   if (vSplit[0].length>vMaxWhole) {
      vSplit[0]=vSplit[0].substr(0, vMaxWhole);
      if (vMaxDecimal>0)
         vValue = vSplit[0] + '.' + vSplit[1];
      else
         vValue = vSplit[0];
   }

   if (vMaxDecimal>0 && vSplit[1].length>vMaxDecimal) {
      vSplit[1]=vSplit[1].substr(0, vMaxDecimal);
      vValue = vSplit[0] + '.' + vSplit[1];
   }

   if (vValue.indexOf('-')>-1) {
      vIsNeg=true;
      vValue = vValue.replace(/-/g, '');
   }

   vSplit = vValue.split('.');
   if (!vSplit[1])
      vSplit[1] = '';

   if (vReqWhole>0 && vSplit[0].length<vReqWhole) {
      for (var i=vSplit[0].length; i<vReqWhole; i++) {
         vValue='0' + vValue;
      }
   }

   if (vIsNeg)
      vValue = '-' + vValue;

   if (vMaxDecimal>0 && vSplit[1].length<vMaxDecimal) {
      for (var i=vSplit[1].length; i<vMaxDecimal; i++) {
          vValue+='0';
      }
   }

   //Allow blank if field was blank and format doesn't require any numbers to be entered
   if (parseFloat(vValue)==0 && vReqWhole==0 && document.getElementById(pFieldId).value=='')
      vValue='';

   document.getElementById(pFieldId).value = vValue;
   addCommas(pFieldId,vOrigFormat);
}

function checkNumberKey(e,pFieldId,pFormat) {
   var vMaxDecimal = 0;
   var vMaxWhole = 0;
   var vSplit = '';
   var vKey = 0;
   var vOK = true;
   var vValue = document.getElementById(pFieldId).value;
   var vDecLocation = vValue.indexOf('.');
   var vSelectedText = '';
   var vCursor=0;
   var vBefore='';
   var vAfter='';
   var vAllowNeg=false;
   var vHasNeg=false;
   var vActualCursor = 0;
   var vText='';

   try {
      if (e["ctrlKey"] || e["metaKey"] || e["altKey"])
         return true;
   }
   catch(er) {}

   if (document.getElementById(pFieldId).className=='EditInputDisabledNum' || document.getElementById(pFieldId).readOnly==true)
      return false;

   if (gIsIE)
      vKey = e.keyCode;
   else if (e.charCode)
      vKey = e.which;

   //63000 is for safari
   if (vKey<=31 || vKey>63000 || (e["ctrlKey"] && (vKey==99 || vKey==118)))
      return true;

   pFormat = pFormat.replace(/,/g, '');

   if (pFormat.indexOf('-')>-1) {
      vAllowNeg=true;
      pFormat=pFormat.replace('-','');
   }

   pFormat=pFormat.replace('$','');
   pFormat=pFormat.replace('%','');

   vSplit = pFormat.split('.');
   vMaxWhole = vSplit[0].length;

    if (gIsIE) {
        var vRange = document.selection.createRange();
        vCursor = vRange.move("character", -100) * -1;
        vSelectedText = document.selection.createRange().text;
    } else {
        vCursor = document.getElementById(pFieldId).selectionStart;
        if (vCursor!=document.getElementById(pFieldId).selectionEnd) {
            vSelectedText=vValue.substring(vCursor,document.getElementById(pFieldId).selectionEnd);
        }
   }

   if (vSelectedText==vValue) {
      document.getElementById(pFieldId).value='';
      vValue='';
      vDecLocation=-1;
      vSelectedText='';
   }

   if (vSplit.length > 1)
      vMaxDecimal = vSplit[1].length;

   vActualCursor = vCursor;
   if (vValue.indexOf('-')>-1) {
      vValue=vValue.replace('-','');
      vHasNeg = true;
      if (vCursor>0)
         vCursor--;
      if (vDecLocation>=0)
         vDecLocation--;
   }

   if (vSelectedText!='' && (vCursor<vDecLocation || vDecLocation==-1))
      vMaxWhole++;
   else if (vSelectedText!='' && vCursor>=vDecLocation && vDecLocation>-1) {
      vMaxDecimal++;
      if (vCursor==vDecLocation)
         vDecLocation=-1;
   }

   //46 = decimal point
   if (vDecLocation>-1 && vKey==46)
      vOK = false;

   if (vMaxDecimal>0 && !(vKey>=48 && vKey<=57) && vKey!=46)
      vOK = false;
   else if (vMaxDecimal==0 && !(vKey>=48 && vKey<=57))
      vOK = false;

      vSplit = vValue.split('.');

      if ((vSplit[0].length>=vMaxWhole || vKey==46) && (vCursor<=vDecLocation || vDecLocation==-1)) {
         if (!gIsIE) {
            vBefore=vValue.substr(0, vCursor);
            vAfter=vValue.substr(vCursor+1, 99);

            if (vKey>=48 && vKey<=57 && vCursor<vSplit[0].length)
               vText=vBefore+((vKey-48).toString())+vAfter;
            else if (vKey==46 && vMaxDecimal>0)
               vText=vBefore+'.'+vAfter;

            if (vHasNeg==true && vText!='') {
               vText="-" + vText;
               vCursor++;
            }

            if (vText!='')
               moveCursorMoz(pFieldId,vCursor+1,vText);
         }
         else {
            if (vKey>=48 && vKey<=57 && vCursor<vSplit[0].length) {
               if (vActualCursor==0 && vHasNeg==true)
                  vText='-';
               else
                  vText=(vKey-48).toString();
            }
            else if (vKey==46 && vMaxDecimal>0 && (vCursor==vDecLocation || vDecLocation==-1))
               vText='.';
            else
               vText='';

            if (vText!='')
               moveCursorIE(0,1,vText);
         }
         vOK = false;
      }

      if (vSplit.length > 1 && vSplit[1].length >= vMaxDecimal && vCursor > vDecLocation) {
         if (vCursor < (vSplit[0].length + vSplit[1].length + 1)) {
            if ((!gIsIE) && vKey >= 48 && vKey <= 57) {
               vBefore = vValue.substr(0, vCursor);
               vAfter = vValue.substr(vCursor+1, 99);
               vValue = vBefore + (vKey - 48).toString() + vAfter;

               if (vHasNeg == true) {
                  vValue = "-" + vValue;
                  vCursor++;
               }

               moveCursorMoz(pFieldId, vCursor + 1, vValue);
            } else if (gIsIE && vKey >= 48 && vKey <= 57) {
                moveCursorIE(0, 1, (vKey - 48).toString());
            }
         }
         vOK = false;
      }


   //45 = negative sign
   if (vKey==45 && vAllowNeg==true && vActualCursor==0) {
      if (vHasNeg==false) {
        vOK = true;
      } else if (gIsSafari) {
        vOK = false;
      } else {
         if (!gIsIE) {
            vValue="-"+vValue;
            moveCursorMoz(pFieldId,vCursor+1,vValue);
         } else {
            moveCursorIE(0,1,'-');
         }
         vOK = false;
      }
   }
   else if (vKey==45 && (vAllowNeg==false || vHasNeg==true || vActualCursor>0))
      vOK = false;

   if (vOK==false) {
      if(gIsIE)
         event.returnValue = false;
      else {
         if (e.cancelBubble != null)
            e.cancelBubble = true;
         if (e.stopPropagation)
            e.stopPropagation();
         if (e.preventDefault)
            e.preventDefault();
      }
      return false;
   }
}

function moveCursorIE(pStart,pEnd,pText) {
   var vRange = document.selection.createRange();
   vRange.moveStart('character', pStart);
   vRange.moveEnd('character', pEnd);
   if (pText)
      vRange.text=pText;
   vRange.select();
}

function moveCursorMoz(pFieldId,pStart,pValue) {
   if (pValue)
      document.getElementById(pFieldId).value=pValue;
   document.getElementById(pFieldId).selectionStart=pStart;
   document.getElementById(pFieldId).selectionEnd=pStart;
}

function removeCommas(pFieldId) {
   if (!document.getElementById(pFieldId)) {
       return;
   }
   var vValue = document.getElementById(pFieldId).value;
   var vCursor = 0;

   if (vValue.indexOf(',')==-1 && vValue.indexOf('$')==-1 && vValue.indexOf('%')==-1) {
       return;
   }

   if (gIsIE) {
      var vRange = document.selection.createRange();
      vCursor = vRange.move("character", -100) * -1;
   } else {
       vCursor = document.getElementById(pFieldId).selectionStart;
   }

   if (vCursor>1 && vCursor<vValue.length) {
       vCursor--;
   } else if (vValue.indexOf('$')>-1) {
       vCursor--;
   }

   vValue = vValue.replace('$','');
   vValue = vValue.replace('%','');
   document.getElementById(pFieldId).value = vValue.replace(/,/g,'');

   if (gKeyPressed) {
       document.getElementById(pFieldId).select();
   } else if (!gIsIE) {
       moveCursorMoz(pFieldId,vCursor);
   } else {
       moveCursorIE(vCursor,0);
   }
}

function addCommas(pFieldId,pFormat) {
   var vValue = document.getElementById(pFieldId).value;
   var vNew = '';
   var vSplit = '';
   var j = 0;
   var vIsNeg = false;
   var vAllowCommas = false;

   if (vValue.indexOf('-')>-1) {
      vIsNeg=true;
      vValue=vValue.replace('-','');
   }

   if (pFormat.indexOf(',')>-1)
      vAllowCommas = true;

   vSplit = vValue.split('.');
   for (var i=vSplit[0].length - 1; i>=0; i--) {
      j++;
      vNew = vSplit[0].substr(i, 1) + vNew;
      if (vAllowCommas==true && j<vSplit[0].length && Math.floor(j/3)==j/3)
         vNew = ',' + vNew;
   }
   if (vSplit.length>1)
      vNew += '.' + vSplit[1];

   if (pFormat.indexOf('$')>-1)
      vNew = '$' + vNew;

   if (pFormat.indexOf('%')>-1)
      vNew = vNew + '%';

   if (vIsNeg)
      vNew= '-' + vNew;

   document.getElementById(pFieldId).value = vNew;
}

function formatNumber(pValue,pFormat) {
  pValue = pValue.toString().replace(/,/g,"").replace(/\$/,"");
  if (pFormat == undefined)
    var pFormat = "->,>>>,>>>,>>>,>>>,>>>,>>>,>>>,>>>,>>>,>>>,>>>,>>>,>>9.99";
  var vMask1 = pFormat.split(".")[0];
  var vMask1NoCommas = vMask1.replace(/,/g,"").replace(/\$/,"").replace(/-/,"");
  var vMask1Commas = [];
  var vMaskIndex = 0;
  var vMask2 = pFormat.split(".")[1];
  var vNbr1 = pValue.split(".")[0];
  var vNbr2 = pValue.split(".")[1];
  var vTmpNbr = "";
  var vAltCntr = -1;
  var vIsNegative = (vNbr1.indexOf("-") != -1 ? true : false);
  vNbr1 = vNbr1.replace(/-/,"");

  if (vMask1NoCommas.length > vNbr1.length) {
    for (var i = vNbr1.length; i < vMask1NoCommas.length; i++) {
      vNbr1 = " " + vNbr1;
    }
  }
  else if (vMask1NoCommas.length < vNbr1.length)
    return "?";

  for (var i = vMask1.length - 1; i >= 0; i--) {
    vAltCntr = vAltCntr + 1;
    if (vMask1.substr(i,1) == ",") {
      vMask1Commas.push(vAltCntr);
      vAltCntr = -1;
    }
  }

  for (var i = vMask1NoCommas.length - 1; i >= 0; i--) {
    switch(vMask1NoCommas.substr(i,1)) {
      case ">":
        if (vNbr1.substr(i,1) != " ")
          vTmpNbr = vNbr1.substr(i,1) + vTmpNbr;
        else
          break;
        break;
      case "9":
        if (vNbr1.substr(i,1) != " ")
          vTmpNbr = vNbr1.substr(i,1) + vTmpNbr;
        else
          vTmpNbr = "0" + vTmpNbr;
        break;
    }
  }
  vNbr1 = vTmpNbr;
  vAltCntr = 0;
  for (var i = vNbr1.length - 1; i > 0; i--) {
    vAltCntr = vAltCntr + 1;
    if (vMask1Commas[vMaskIndex] && vMask1Commas[vMaskIndex] == vAltCntr) {
      vNbr1 = vNbr1.substr(0,i) + "," + vNbr1.substr(i);
      vMaskIndex = vMaskIndex + 1;
      vAltCntr = 0;
    }
  }
  if (vIsNegative && vMask1.indexOf("-") != -1)
    vNbr1 = "-" + vNbr1;
  if (vMask1.indexOf("$") != -1)
    vNbr1 = "$" + vNbr1;
  if (vMask2 == undefined)
    return vNbr1;
  else {
    if (vNbr2 == undefined)
      vNbr2 = "";
    vTmpNbr = "";
    for (var i=0; i < vMask2.length; i++) {
      switch(vMask2.substr(i,1)) {
        case ">":
          if (vNbr2.substr(i,1) != "")
            vTmpNbr = vTmpNbr + vNbr2.substr(i,1);
          else
            break;
          break;
        case "9":
          if (vNbr2.substr(i,1) != "") {
              if (i == vMask2.length - 1 && vNbr2.length > i) {
                  if (parseInt(vNbr2.substr(i + 1,1), 10) > 4) {
                      vTmpNbr = vTmpNbr + (parseInt(vNbr2.substr(i,1), 10) + 1).toString();
                      break;
                  }
              }
              vTmpNbr = vTmpNbr + vNbr2.substr(i,1);
          } else {
              vTmpNbr = vTmpNbr + "0";
          }
          break;
      }
    }
    vNbr2 = vTmpNbr;
    return vNbr1 + "." + vNbr2;
  }
}

function checkAMPM(e,pFieldId) {
   var vKey = 0;

   if (gIsIE)
      vKey = e.keyCode;
   else if (e.charCode)
      vKey = e.which;

   if (vKey==0 && e.keyCode)
      vKey = e.keyCode;

   if ((vKey<=31 && vKey!=8) || (e["ctrlKey"] && (vKey==99 || vKey==118)))
      return true;

   if (vKey==65 || vKey==97)
      document.getElementById(pFieldId).value="AM";
   else if (vKey==80 || vKey==112)
      document.getElementById(pFieldId).value="PM";
   else if (vKey==38 || vKey==40) {
      if (document.getElementById(pFieldId).value=="PM")
         document.getElementById(pFieldId).value="AM";
      else
         document.getElementById(pFieldId).value="PM";
   }
   document.getElementById(pFieldId).select();

   if(gIsIE)
      event.returnValue = false;
   else {
      if (e.cancelBubble != null)
         e.cancelBubble = true;
      if (e.stopPropagation)
         e.stopPropagation();
      if (e.preventDefault)
         e.preventDefault();
   }
   return false;
}
function checkDurationKey(e,pFieldId) {
    if (!e) {
        var e = window.event;
    }
    var vValue = document.getElementById(pFieldId).value.toLowerCase();
   var vKey = e.which || e.keyCode;

    if (gIsIE)
      vKey = e.keyCode;
   else if (e.charCode)
      vKey = e.which;

    if (e["ctrlKey"] || e["metaKey"] || e["altKey"]) {
        return true;
    }

    if (vKey == 104) { //allow 1 h
        if (vValue.match('h') != null) {
            cancelEvent(e);
            return false;
        }
    } else if (vKey == 109) { //allow 1 m
        if (vValue.match('m') != null) {
            cancelEvent(e);
            return false;
        }
    } else if (vKey == 32) { //allow 1 space
        if (vValue.match(' ') != null || vValue == '') {
            cancelEvent(e);
            return false;
        }
    } else if (vKey == 9 || vKey == 13 || vKey == 37 || vKey == 39 || vKey == 8 || vKey == 46) {
        return true;
    } else if (vKey < 48 || vKey > 57) {
        cancelEvent(e);
        return false;
    }
}
function checkDurationBlur(pFieldId) {
    if (!gDoValidation || gDontValidate[pFieldId])
       return true;

    var vValue = document.getElementById(pFieldId).value.replace(/-/g,'').toLowerCase();
    var vHours, vMinutes, vTemp;

    if (vValue == '') {
        return true;
    }

    if (vValue.indexOf("h") > 0) {
        vHours = vValue.substring(0, vValue.indexOf("h"));
        vMinutes = vValue.substring(vValue.replace(/m/g,'').indexOf("h") + 1);
        if (vMinutes.replace(/ /g, '') == '') {
            vMinutes = 0;
        }
    } else if (vValue.indexOf("m") > 0 && vValue.indexOf(' ') == -1) {
        vHours = 0;
        vMinutes = vValue.substring(vValue.indexOf("h") + 1);
    } else if (vValue.indexOf(' ') > -1) {
        vTemp = vValue.split(' ');
        vHours = '';
        vMinutes = '';
        for (var i = 0; i < vTemp.length; i++) {
            if (vTemp[i] != '') {
                if (vHours == '') {
                    vHours = vTemp[i];
                } else if (vMinutes == '') {
                    vMinutes = vTemp[i];
                    break;
                }
            }
        }
    } else {
        vHours = vValue;
        vMinutes = 0;
    }

    vHours = parseFloat(vHours, 10);
    vMinutes = parseInt(vMinutes, 10);

    if (isNaN(vHours) || isNaN(vMinutes)) {
        message('The Duration entered is not valid.', null, null, null, null, 'OK', "document.getElementById('" + pFieldId + "').focus();document.getElementById('" + pFieldId + "').select();");
        return;
    }

    vTemp = vHours % 1;
    if (vTemp > 0) {
        vHours -= vTemp;
        vMinutes += vTemp * 60;
    }
    vTemp = parseInt(vMinutes / 60, 10);
    if (vTemp > 0) {
        vHours += vTemp;
        vMinutes = vMinutes % 60;
    }
    vHours = parseInt(vHours, 10);
    vMinutes = parseInt(vMinutes, 10);
    if (vMinutes <= 9) {
        vMinutes = "0" + vMinutes;
    }

    document.getElementById(pFieldId).value = vHours + 'h ' + vMinutes + 'm';

}
function checkTimeKey(e,pFieldId) {
    if (!e) {
        var e = window.event;
    }
   try {
      if (e["ctrlKey"] || e["metaKey"] || e["altKey"])
         return true;
   } catch(er) {}

   var vKey = 0;
   var vOK = true;
   var vValue = document.getElementById(pFieldId).value;
   var vColonLocation;
   var vSelectedText = '';

   vColonLocation = vValue.indexOf(':');
   if (vColonLocation==-1)
      vColonLocation = vValue.indexOf(';');

   if (gIsIE)
      vKey = e.keyCode;
   else if (e.charCode)
      vKey = e.which;

   //63000 is for safari
   if (vKey<=31 || vKey>63000 || (e["ctrlKey"] && (vKey==99 || vKey==118)))
      return true;

   if (vKey==78 || vKey==110) { /*N/n = noon*/
       document.getElementById(pFieldId).value="12:00";
       document.getElementById(pFieldId + 'ampm').value="PM";

       if(gIsIE)
          event.returnValue = false;
       else {
          if (e.cancelBubble != null)
             e.cancelBubble = true;
          if (e.stopPropagation)
             e.stopPropagation();
          if (e.preventDefault)
             e.preventDefault();
       }
       return false;
   } else if (vKey==77 || vKey==109) { /*M/m = midnight*/
       document.getElementById(pFieldId).value="12:00";
       document.getElementById(pFieldId + 'ampm').value="AM";

       if(gIsIE)
          event.returnValue = false;
       else {
          if (e.cancelBubble != null)
             e.cancelBubble = true;
          if (e.stopPropagation)
             e.stopPropagation();
          if (e.preventDefault)
             e.preventDefault();
       }
       return false;
   } else if (vKey==84 || vKey==116 || vKey==67 || vKey==99) { /*T/t, C/c = current time*/
       var today = new Date();
       var hour = today.getHours();
       var min = today.getMinutes();

       if (hour>=12) {
           hour -= 12;
           document.getElementById(pFieldId + 'ampm').value="PM";
       }
       else
           document.getElementById(pFieldId + 'ampm').value="AM";

       var vHour='';
       if (hour==0)
           vHour="12";
       else if (hour<10)
           vHour = "0" + hour.toString();
       else
           vHour = hour.toString();

       var vMin='';
       if (min<10)
           vMin = "0" + min.toString();
       else
           vMin = min.toString();

       document.getElementById(pFieldId).value= vHour + ":" + vMin;

       if(gIsIE)
          event.returnValue = false;
       else {
          if (e.cancelBubble != null)
             e.cancelBubble = true;
          if (e.stopPropagation)
             e.stopPropagation();
          if (e.preventDefault)
             e.preventDefault();
       }
       return false;
   } else if (vKey==65 || vKey==97) {
       document.getElementById(pFieldId + "ampm").value="AM";
   } else if (vKey==80 || vKey==112) {
       document.getElementById(pFieldId + "ampm").value="PM";
   } else if (vKey==38 || vKey==40) {
      if (document.getElementById(pFieldId + "ampm").value == "PM") {
           document.getElementById(pFieldId + "ampm").value="AM";
      } else {
           document.getElementById(pFieldId + "ampm").value="PM";
      }
   }

   if (gIsIE) {
      var vRange = document.selection.createRange();
      vSelectedText = document.selection.createRange().text;
   } else {
      var vStart=document.getElementById(pFieldId).selectionStart;
      var vEnd=document.getElementById(pFieldId).selectionEnd;
      if (vStart!=vEnd) {
          vSelectedText=vValue.substring(vStart,vEnd);
      }
   }

   if (vSelectedText==vValue) {
      document.getElementById(pFieldId).value='';
      vValue='';
      vColonLocation=-1;
      vSelectedText='';
   }

   //58 = colon, 59 = semicolon
   if (vColonLocation>-1 && (vKey==58 || vKey==59))
      vOK = false;

   if (vKey<48 || vKey>59)
      vOK = false;

   if (vValue.length==4 && vColonLocation==-1 && vKey!=58 && vSelectedText=='')
      vOK = false;

   if (vOK==false) {
      if(gIsIE)
         event.returnValue = false;
      else {
         if (e.cancelBubble != null)
            e.cancelBubble = true;
         if (e.stopPropagation)
            e.stopPropagation();
         if (e.preventDefault)
            e.preventDefault();
      }
      return false;
   }
}

function checkTimeBlur(pFieldId) {
   if (!gDoValidation || gDontValidate[pFieldId])
      return true;

   var vSplit = '';
   var vOK = true;
   var vValue;
   var vHours = -1;
   var vMinutes = -1;
   var vChangeToPm = false;

   vValue=document.getElementById(pFieldId).value.replace(':', '');
   vValue=vValue.replace(';', '');

   if (rightTrim(vValue)=='') {
      document.getElementById(pFieldId).value='';
      document.getElementById(pFieldId + 'ampm').value = '';
      return;
   }

   if (vValue.length>=1 && vValue.length<=2)
      vValue+="00";

   if (vValue.length<3)
      vOK = false;

   if (vValue.length==3)
      vValue = '0' + vValue.substr(0, 1) + ':' + vValue.substr(1, 2);
   else
      vValue = vValue.substr(0, 2) + ':' + vValue.substr(2, 2);
   vSplit = vValue.split(':');

   if (!validateIntegerByVal(vSplit[0]))
      vOK = false;

   if (!validateIntegerByVal(vSplit[1]))
      vOK = false;

   if (vOK==true) {
      vHours = parseInt(vSplit[0], 10);
      vMinutes = parseInt(vSplit[1], 10);

      if (vHours>24)
         vOK = false;
      else if (vHours>12) {
         vHours -= 12;
         vChangeToPm = true;
      }

      if (vMinutes>=60)
         vOK = false;
   }

   if (vOK==false) {
      if (gDispMsg==true) {
         gDispMsg=false;
         message('The time entered is not valid.','',0,0,0,'OK','gDispMsg=true; putFocus("' + pFieldId + '");');
      }
      else
         putFocus(pFieldId);
   }
   else {
      if (vHours < 10)
         vHours = '0' + vHours;
      if (vMinutes < 10)
         vMinutes = '0' + vMinutes;

      vValue = vHours + ":" + vMinutes;
      document.getElementById(pFieldId).value = vValue;

      if (vChangeToPm==true){
         try {
            document.getElementById(pFieldId + "ampm").value = "PM";
         }
         catch(er) {}
      }
   }
}

function checkPhoneBlur(pFieldId) {
   if (!gDoValidation || gDontValidate[pFieldId])
      return true;

   var vOK = true;
   var vValue;
   var vSplit;

   vValue=document.getElementById(pFieldId).value.replace('-', '');

   if (rightTrim(vValue)=='') {
      document.getElementById(pFieldId).value='';
      return;
   }

   if (vValue.length!=7)
      vOK = false;

   if (vOK) {
      if (vValue.length==7)
         vValue = vValue.substr(0, 3) + '-' + vValue.substr(3, 4);

      vSplit = vValue.split('-');

      if (!validateIntegerByVal(vSplit[0]))
         vOK = false;

      if (!validateIntegerByVal(vSplit[1]))
         vOK = false;
   }

   if (vOK==false) {
      if (gDispMsg==true) {
         gDispMsg=false;
         message('The phone number entered is not valid.','',0,0,0,'OK','gDispMsg=true; putFocus("' + pFieldId + '");');
      }
      else
         putFocus(pFieldId);
   }
   else
      document.getElementById(pFieldId).value = vValue;
}
function checkPhoneExtBlur(pFieldId) {
   if (!gDoValidation || gDontValidate[pFieldId])
      return true;

   var vOK = true;
   var vValue;

   vValue=document.getElementById(pFieldId).value;

   if (rightTrim(vValue)=='') {
      document.getElementById(pFieldId).value='';
      return;
   }

   if (!validateIntegerByVal(vValue))
      vOK = false;

   if (vOK==false) {
      if (gDispMsg==true) {
         gDispMsg=false;
         message('The phone number extension entered is not valid.','',0,0,0,'OK','gDispMsg=true; putFocus("' + pFieldId + '");');
      }
      else
         putFocus(pFieldId);
   }
   else
      document.getElementById(pFieldId).value = vValue;
}
function checkPhoneKey(e,pFieldId) {
   var vKey = 0;
   var vOK = true;
   var vValue = document.getElementById(pFieldId).value;
   var vHyphenLocation;
   var vSelectedText = '';

   try {
      if (e["ctrlKey"] || e["metaKey"] || e["altKey"])
         return true;
   }
   catch(er) {}

   vHyphenLocation = vValue.indexOf('-');

   if (gIsIE)
      vKey = e.keyCode;
   else if (e.charCode)
      vKey = e.which;

   //63000 is for safari
   if (vKey<=31 || vKey>63000 || (e["ctrlKey"] && (vKey==99 || vKey==118)))
      return true;

   if (gIsIE) {
      var vRange = document.selection.createRange();
      vSelectedText = document.selection.createRange().text;
   } else {
      var vStart=document.getElementById(pFieldId).selectionStart;
      var vEnd=document.getElementById(pFieldId).selectionEnd;
      if (vStart!=vEnd) {
          vSelectedText=vValue.substring(vStart,vEnd);
      }
   }


   if (vSelectedText==vValue) {
      document.getElementById(pFieldId).value='';
      vValue='';
      vHyphenLocation=-1;
      vSelectedText='';
   }

   //45 = hyphen
   if (vHyphenLocation>-1 && vKey==45)
      vOK = false;

   if (vKey!=45 && (vKey<48 || vKey>57))
      vOK = false;

   if (vValue.length==7 && vHyphenLocation==-1 && vKey!=45 && vSelectedText=='')
      vOK = false;

   if (vOK==false) {
      if(gIsIE)
         event.returnValue = false;
      else {
         if (e.cancelBubble != null)
            e.cancelBubble = true;
         if (e.stopPropagation)
            e.stopPropagation();
         if (e.preventDefault)
            e.preventDefault();
      }
      return false;
   }
}
function removeParens(pFieldId) {
   var vValue = document.getElementById(pFieldId).value;
   var vCursor = 0;

   if (vValue.indexOf('(')==-1 && vValue.indexOf(')')==-1)
      return;

   if (gIsIE) {
      var vRange = document.selection.createRange();
      vCursor = vRange.move("character", -100) * -1;
   } else {
       vCursor = document.getElementById(pFieldId).selectionStart;
   }

   if (vCursor>=1 && vCursor<vValue.length)
      vCursor--;

   vValue = vValue.replace('(','');
   vValue = vValue.replace(')','');
   document.getElementById(pFieldId).value = vValue;

   if (gKeyPressed) {
       document.getElementById(pFieldId).select();
   } else if (!gIsIE) {
       moveCursorMoz(pFieldId,vCursor);
   } else {
       moveCursorIE(vCursor,0);
   }

}
function addParens(pFieldId) {
   var vValue = document.getElementById(pFieldId).value;

   if (rightTrim(vValue).length!=3 && rightTrim(vValue)!='') {
      if (gDispMsg==true) {
         gDispMsg=false;
         message('The area code entered is not valid.','',0,0,0,'OK','gDispMsg=true; putFocus("' + pFieldId + '");');
      }
      else
         putFocus(pFieldId);
   }
   else if (rightTrim(vValue)!='') {
      vValue = "(" + vValue + ")";
      document.getElementById(pFieldId).value = vValue;
   }
}

function checkGYBlur(pFieldId, pType) {
   if (!gDoValidation || gDontValidate[pFieldId])
      return true;

   var vOK = true;
   var vValue = document.getElementById(pFieldId).value;

   if (vValue != "" && !validateInteger(pFieldId,'The value entered'))
     return false;

   if (vValue.length == "" && pType == "high")
     vValue = "9999";
   else if (vValue.length != 4)
     while (vValue.length != 4) {
        vValue = "0" + vValue;
     }

   document.getElementById(pFieldId).value = vValue;
}

function checkGradeBlur(pFieldId, validGrades) {
   if (!gDoValidation || gDontValidate[pFieldId])
      return true;

   var validValues = [];
   var found = false;
   var vValue = document.getElementById(pFieldId).value;
   var vOK = true;

   validValues = validGrades.split(String.fromCharCode(21));

   if (vValue.substr(1, 1) == "" && vValue.substr(0, 1) > "0" && vValue.substr(0, 1) <= "9")
     vValue = "0" + vValue.substr(0, 1);

   for (var i = 0; i < validValues.length && !found; i++) {
      if (vValue.toUpperCase() == validValues[i].toUpperCase())
         found = true;
   }

   if (!found && vValue != "")
     vOK = false;

   if (vOK == false) {
      if (gDoValidation==true) {
         if (gDispMsg==true)
            message('Grade Level not found in the General Configuration Grad Yr/Grade Xref Setup.\n\nPlease enter a valid Grade Level.','',0,475,0,'OK','putFocus("' + pFieldId + '");');
         else
            putFocus(pFieldId);
      }
   }
   else
     document.getElementById(pFieldId).value = vValue;
}

function validateGradeFields(pLowId, pHighId) {
   if (!gDoValidation || gDontValidate[pLowId] || gDontValidate[pHighId])
      return true;

   if (document.getElementById(pLowId + 'gy').className == 'EditInputDisabled') {
      if (!validateIntegerRange(pHighId + 'gy', 0, document.getElementById(pLowId + 'gy').value))
         return false;
   }
   else {
      if (!validateIntegerRange(pLowId + 'gy', 0, document.getElementById(pHighId + 'gy').value))
         return false;
   }

   return true;
}

function FwAttachment (pBlob, pEncode, pName, pIsNew, pDate) {
   this.blobId = pBlob;
   this.encodedId = pEncode;
   this.fileName = pName;
   this.isNew = pIsNew;
   if (pIsNew)
      this.fileDate = new Date();
   else
      this.fileDate = pDate;
}
function attachFile(pFileId) {  //Attach a new file
   var vLocation, vUseCGIIP;
   var vOldLocation = location.href;
   if (document.getElementById('hUseCGIIP')) {
       if (document.getElementById('hUseCGIIP').value == 'yes' || document.getElementById('hUseCGIIP').value == 'true') {
           vUseCGIIP = true;
           if (vOldLocation.indexOf('wsisa.dll') > -1) {
               vLocation = vOldLocation.replace('wsisa.dll','cgiip.exe');
               vLocation = vLocation.replace(vLocation.substring(vLocation.lastIndexOf("/"),vLocation.length), '/uploadfile.w');
           }
           else{
               vLocation = vOldLocation;
               vUseCGIIP = false;
           }
       }
       else{
           vUseCGIIP = false;
       }
   }
   else{
       vUseCGIIP = false;
   }
   try {
      if (pFileId == '')
         pFileId = 'file1';
      if (document.getElementById(pFileId).value == '')
         message('Please click browse and select a file to upload first');
      else {
         if (document.getElementById('fileInputId'))
            document.getElementById('fileInputId').value = pFileId;
         var vAction = document.detailform.action;
         var vTarget = document.detailform.target;
         document.detailform.encoding = 'multipart/form-data';
         document.detailform.enctype = 'multipart/form-data';
         if (vUseCGIIP == true) {
             document.detailform.action= vLocation;
         }
         else{
             document.detailform.action='uploadfile.w';
         }
         document.detailform.target = 'AttachTarget';
         document.detailform.submit();
         document.detailform.encoding = '';
         document.detailform.enctype = '';
         document.detailform.action = vAction;
         document.detailform.target = vTarget;

         if (document.getElementById(pFileId + 'Div'))
            $(document.getElementById(pFileId + 'Div')).html(document.getElementById(pFileId + 'Div').innerHTML);
      }
   }
   catch (err) {
       if (typeof(window.attachError) == 'function') {
           window.attachError();
       }
   }
}
function attachComplete(pBlobId, pEncodedId, pName, pInputId, pResize, pFileSize) {
   if (getFileByBlob(pBlobId) == null) {
      vAttchFile[vAttchFile.length] = new FwAttachment(pBlobId, pEncodedId, pName, true, '');
      if (typeof(receiveNewFile) === 'function'){
          receiveNewFile(pBlobId, pInputId, pResize, pFileSize);   //Programmer would define receiveNewFile to update browse of files or perform other action
      }
   }
}
function passFileToOpener(pBlobId) {
   var vFileToPass = getFileByBlob(pBlobId);
   try {
      if (window.opener && window.opener.attachComplete)
         window.opener.attachComplete(pBlobId, vFileToPass.encodedId, vFileToPass.fileName);
   }
   catch (err) {}
}
function viewFile(pBlobId) {    //Stream an attached file to the browser
   var vFileToView = getFileByBlob(pBlobId);
   if (vFileToView != null) {
      document.getElementById('blobid').value = vFileToView.blobId;
      document.getElementById('pEnc').value = vFileToView.encodedId;
      var vAction = document.detailform.action;
      document.detailform.action = 'qdirconfig002.p';
      document.detailform.submit();
      document.detailform.action = vAction;
   }
}
function removeFile(pBlobId) {      //Remove an attached file
   var vFileToDel = getFileByBlob(pBlobId);
   if (vFileToDel != null) {
      if (vFileToDel.isNew)
         deleteActualFile(vFileToDel.blobId, vFileToDel.encodedId, '');

      var j=0;
      for (var i=0; i<vAttchFile.length; i++) {
         if (vAttchFile[i].blobId != pBlobId) {
            vAttchFile[j] = vAttchFile[i];
            j++;
         }
      }
      vAttchFile.length = vAttchFile.length - (i - j);
   }
}
function cancelNewFiles() {     //Remove all NEW files
   var j=0;
   var vBlobList = [];
   var vEncodeList = [];

   for (var i=0; i<vAttchFile.length; i++) {
      if (vAttchFile[i].isNew) {
         vBlobList[vBlobList.length] = vAttchFile[i].blobId;
         vEncodeList[vEncodeList.length] = vAttchFile[i].encodedId;
      }
      else {
         vAttchFile[j] = vAttchFile[i];
         j++;
      }
   }
   vAttchFile.length = vAttchFile.length - (i - j);

   if (vBlobList.length > 0)
      deleteActualFile(vBlobList.join(String.fromCharCode(21)), vEncodeList.join(String.fromCharCode(21)), 'finalCleanup');
   else {
      continueCheckBack(function() {    //Pass a function to repeat cancelNewFiles call, if validation is passed
        window.customBack = undefined;
        gCheckFields = false;
        cancelNewFiles();
      });
   }
}
function deleteActualFile(pBlobId, pEncodedId, pCode) {      //Delete the blob from the db
    if (document.getElementById("duserid"))
        document.getElementById('AttachTarget').src = 'deletefile.w?blobid=' + pBlobId + '&pEnc=' + pEncodedId + '&delAttachReturn=' + pCode + '&userid=' + document.getElementById("duserid").value;
    else
        document.getElementById('AttachTarget').src = 'deletefile.w?blobid=' + pBlobId + '&pEnc=' + pEncodedId + '&delAttachReturn=' + pCode;
}
function deleteAttachComplete(pReturnCode, pBlobId) {
   if (pReturnCode == 'finalCleanup') {
      continueCheckBack(function() {    //Pass a function to repeat deleteAttachComplete call, if validation is passed
        window.customBack = undefined;
        gCheckFields = false;
        deleteAttachComplete(pReturnCode, pBlobId);
      });
   }
}
function getAttachedFileList() {   //Retrieve list of attached file blob ids and names
   var vFileArr = [];
   for (var i=0; i<vAttchFile.length; i++)
      vFileArr[i] = vAttchFile[i].blobId;
   return vFileArr;
}
function sortAttachedFilesByName() { vAttchFile.sort(fileSortByName); }  //Sort attachment list by name
function sortAttachedFilesByDate() { vAttchFile.sort(fileSortByDate); }  //Sort attachment list by order added
function fileSortByName(f1, f2) {
   if (f1.fileName < f2.fileName)
      return -1;
   else if (f1.fileName > f2.fileName)
      return 1;
   else {
      if (f1.fileDate == f2.fileDate)
         return 0;
      else if (f1.fileDate < f2.fileDate)
         return -1;
      else
         return 1;
   }
}
function fileSortByDate(f1, f2) {
   if (f1.fileDate < f2.fileDate)
      return -1;
   else if (f1.fileDate > f2.fileDate)
      return 1;
   else
      return fileSortByName(f1, f2);
}
function keepFile(pBlobId) {
   getFileByBlob(pBlobId).isNew = false;
}
function expireFile(pBlobId) {
   getFileByBlob(pBlobId).isNew = true;
}
function getFileName(pBlobId) {
   return getFileByBlob(pBlobId).fileName;
}
function getFileDate(pBlobId) {
   return getFileByBlob(pBlobId).fileDate;
}
function getFileDateStr(pBlobId) {
   var myDate = getFileDate(pBlobId);
   return (myDate.getMonth() + 1) + '/' + myDate.getDate() + '/' + myDate.getFullYear();
}
function getFileImgSrc(pBlobId) {
   var vFileForImg = getFileByBlob(pBlobId);
   return 'qdirconfig002.p?blobid=' + pBlobId +
          '&pEnc=' + vFileForImg.encodedId +
          '&duserid=' + document.getElementById('duserid').value +
          '&dwd=' + document.getElementById('dwd').value;
}
function getFileByBlob(pBlobId) {
   var i=0;
   var vFileFound = null;
   while (i<vAttchFile.length && vFileFound == null) {
      if (vAttchFile[i].blobId == pBlobId)
         vFileFound = vAttchFile[i];
      i++;
   }
   return vFileFound;
}

function checkSsnKey(e, pFieldId) {
   var vKey = 0;
   var vOK = true;
   var vValue = document.getElementById(pFieldId).value;
   var vHyphen;
   var vHyphenCount = 0;
   var vSelectedText = '';

   try {
      if (e["ctrlKey"] || e["metaKey"] || e["altKey"])
         return true;
   }
   catch(er) {}

   vHyphen = vValue.indexOf('-');
   while (vHyphen > -1) {
      vHyphenCount++;
      vHyphen = vValue.indexOf('-', vHyphen + 1);
   }

   if (gIsIE)
      vKey = e.keyCode;
   else if (e.charCode)
      vKey = e.which;

   // 63000 is for safari
   if (vKey <= 31 || vKey > 63000 || (e["ctrlKey"] && (vKey == 99 || vKey == 118)))
      return true;

   // Get selected text
   if (gIsIE) {
      var vRange = document.selection.createRange();
      vSelectedText = document.selection.createRange().text;
   } else {
      var vStart = document.getElementById(pFieldId).selectionStart;
      var vEnd = document.getElementById(pFieldId).selectionEnd;
      if (vStart != vEnd) {
          vSelectedText = vValue.substring(vStart,vEnd);
      }
   }

   // If the whole text value was selected, clear it all out
   if (vSelectedText == vValue) {
      document.getElementById(pFieldId).value = '';
      vValue = '';
      vHyphenCount = 0;
      vSelectedText = '';
   }

   //45 = hyphen
   if (vKey == 45) {
      if (vHyphenCount > 1) //Only 2 hyphens allowed
          vOK = false;
   }
   else {
      if (vKey < 48 || vKey > 57)   //If not a hyphen, then must be a #
         vOK = false;
      else if (vValue.length - vHyphenCount > 8 && vSelectedText == '') //No more than 9 #s
         vOK = false;
   }

   if (vOK==false) {
      if(gIsIE)
         event.returnValue = false;
      else {
         if (e.cancelBubble != null)
            e.cancelBubble = true;
         if (e.stopPropagation)
            e.stopPropagation();
         if (e.preventDefault)
            e.preventDefault();
      }
      return false;
   }
}
function checkSsnBlur(pId) {
   var vValue = document.getElementById(pId).value;

   if (rightTrim(vValue) == '')
      document.getElementById(pId).value = '';
   else if (gDoValidation) {
      vValue = vValue.replace(/-/g, '');
      if (vValue.length != 9 || !validateIntegerByVal(vValue)) {
         if (gDispMsg) {
            gDispMsg = false;
            message('The social security number entered is not valid. The correct format is XXX-XX-XXXX.','',0,0,0,'OK','gDispMsg=true; putFocus("' + pId + '");');
         }
         else
            putFocus(pId);
      }
      else
         document.getElementById(pId).value = vValue.substr(0, 3) + "-" +
                                              vValue.substr(3, 2) + "-" +
                                              vValue.substr(5, 4);
   }
}

function checkTinKey(e, pFieldId) {
   var vKey = 0;
   var vOK = true;
   var vValue = document.getElementById(pFieldId).value;
   var vHyphen;
   var vHyphenCount = 0;
   var vSelectedText = '';

   try {
      if (e["ctrlKey"] || e["metaKey"] || e["altKey"])
         return true;
   }
   catch(er) {}

   vHyphen = vValue.indexOf('-');
   while (vHyphen > -1) {
      vHyphenCount++;
      vHyphen = vValue.indexOf('-', vHyphen + 1);
   }

   if (gIsIE)
      vKey = e.keyCode;
   else if (e.charCode)
      vKey = e.which;

   // 63000 is for safari
   if (vKey <= 31 || vKey > 63000 || (e["ctrlKey"] && (vKey == 99 || vKey == 118)))
      return true;

   // Get selected text
   if (gIsIE) {
      var vRange = document.selection.createRange();
      vSelectedText = document.selection.createRange().text;
   } else {
      var vStart = document.getElementById(pFieldId).selectionStart;
      var vEnd = document.getElementById(pFieldId).selectionEnd;
      if (vStart != vEnd) {
         vSelectedText = vValue.substring(vStart,vEnd);
      }
   }


   // If the whole text value was selected, clear it all out
   if (vSelectedText == vValue) {
      document.getElementById(pFieldId).value = '';
      vValue = '';
      vHyphenCount = 0;
      vSelectedText = '';
   }

   //45 = hyphen
   if (vKey == 45) {
      if (vHyphenCount > 0) //Only 1 hyphen allowed
          vOK = false;
   }
   else {
      if (vKey < 48 || vKey > 57)   //If not a hyphen, then must be a #
         vOK = false;
      else if (vValue.length - vHyphenCount > 8 && vSelectedText == '') //No more than 9 #s
         vOK = false;
   }

   if (vOK==false) {
      if(gIsIE)
         event.returnValue = false;
      else {
         if (e.cancelBubble != null)
            e.cancelBubble = true;
         if (e.stopPropagation)
            e.stopPropagation();
         if (e.preventDefault)
            e.preventDefault();
      }
      return false;
   }
}
function checkTinBlur(pId) {
   var vValue = document.getElementById(pId).value;

   if (rightTrim(vValue) == '')
      document.getElementById(pId).value = '';
   else if (gDoValidation) {
      vValue = vValue.replace(/-/g, '');
      if (vValue.length != 9 || !validateIntegerByVal(vValue)) {
         if (gDispMsg) {
            gDispMsg = false;
            message('The TIN/EIN number entered is not valid. The correct format is XX-XXXXXXX.','',0,0,0,'OK','gDispMsg=true; putFocus("' + pId + '");');
         }
         else
            putFocus(pId);
      }
      else
         document.getElementById(pId).value = vValue.substr(0, 2) + "-" +
                                              vValue.substr(2, 7);
   }
}
function toggleIHDetails() {
    if (!document.getElementById("dIHRecCountDetails"))
        return;

    if (document.getElementById("dIHRecCountDetails").style.display=='none')
        document.getElementById("dIHRecCountDetails").style.display='';
    else
        document.getElementById("dIHRecCountDetails").style.display='none'

    changeBrowseSize();
}

function openScommName001(vEelParams,vCodeType) {
   var vOpenString = "scommname001.w?vProgramId=scommname001.w" + "&hICodeType=" + vCodeType + vEelParams;
   openNewWindow(vOpenString,975,505,0, "");
}

function openStuCommName001(pParams,pReturnLocations,pReturnFields,pNameKey,pReturnFunction)
{
  var vNameKey = "";
  var vReturnFields = "";

  if (pParams.split(",")[0] == "yes")
   {
     var vEELObject = pReturnLocations.split(",")[0];

     vNameKey = document.getElementById(vEELObject).value;
   }
  else
    vNameKey = pNameKey;

  if (pReturnFields)
    vReturnFields = pReturnFields;

   var vOpenString = "scommname003.w?vProgramId=scommname003.w&Params=" + pParams + "&ReturnLocations=" + pReturnLocations + "&ReturnFields=" + vReturnFields + "&NameKey=" + vNameKey;

   if (pReturnFunction && pReturnFunction != "")
     var vOpenString = vOpenString + "&ReturnFunction=" + pReturnFunction;
   if (pParams.split(",").length > 2 && pParams.split(",")[2].toUpperCase() == "YES")
     var vHeight = 600;
   else
     var vHeight = 500;

   openNewWindow(vOpenString,975,vHeight,0, "");
}

function addScommName001Params(vCode,vParamList,vReturnFieldList) {
   var vReturnString = "";

// (&NameKey=,&IncomingParams=,&ReturnFieldList=) ARE REQUIRED!!!!
// They are hidded fields used by both eel programs

   vReturnString = "&NameKey="         + encodeURIComponent(vCode) +           // eel namekey value
                   "&IncomingParams="  + encodeURIComponent(vParamList) +      // parameter list for eel program.  See vStaffParamList declaraion above
                   "&ReturnFieldList=" + encodeURIComponent(vReturnFieldList); // list of DB field values to be returned
   return vReturnString
}

function changeSystem(sysId, queryParams){
    if (!sysId) {
        return false;
    }
    //Allows a non-popup edit screen (such as Report Config) to have the nav bar Back button check if values have been changed
    if (gCheckFields == true) {
        checkBack(function() {    //Pass a function to repeat changeSystem call, if validation is passed
            window.customBack = undefined;
            gCheckFields = false;
            changeSystem(sysId, queryParams);
        });
        if (gPassedCheck == false) {
            return;
        }
    }
    displayLockDiv();
    showMessage("Please wait...", null, null, function(){
        $('.lookupLetterWrap').each(function(){
            if ($(this).is(':visible')) {
                toggleLookupLetters(this.id.replace('lookupLetterWrap_', ''));
            }
        });
        switch (sysId) {
        case "eap":
            document.navform.action = "sephom01.w";
            document.navform.submit();
            return;
        case "fa":
            document.navform.action = "sfhome01.w" + (queryParams ? "?" + queryParams : "");
            document.navform.submit();
            return;
        case "sp":
            document.navform.action = "ssphom01.w";
            document.navform.submit();
            return;
        case "sm":
            document.navform.action = "ssmhom01.w";
            document.navform.submit();
            return;
        case "hr":
            document.navform.action = "shrhom01.w";
            document.navform.submit();
            return;
        case "fm":
            document.navform.action = "sfmhom01.w";
            document.navform.submit();
            return;
        case "emp":
            document.navform.action = "semhom01.w";
            document.navform.submit();
            return;
        case "mirp":
            window.setTimeout(function(){openNewWindow('drsso.w' + (queryParams ? "?" + queryParams : ""), 9999,9999,1,'',1,1);},1);
            break;
        case "dw":
            hideMessage();
            showMessage('Connecting to Data Warehouse');
            $. ajax({
                url: $('#dwL').attr('data-url'),
                dataType: "jsonp",
                type: 'POST',
                data: {name: $('#duserid').val()}
            }).always(function(data) {
                hideMessage();
                hideLockDiv();
                openNewWindow('qdtwhedit001.w', 9999,9999,1,'',1,1);
            });
            return;
        }
        hideMessage();
        hideLockDiv();
    });
}
function resetDashboadrds(pDoit){
    if (!pDoit) {
        var vQuestion = "This option will reset your dashboards to the default widgets selected by the District.\n\nDo you want to continue?";
        message(vQuestion,'Confirm Dashboards Reset',0,0,0,"Yes","resetDashboadrds(true);","No","unChangeCursor();");
    } else {
        $. ajax({
            url: 'skyporthttp001.w',
            type: 'POST',
            data: "requestAction=eel&codeType=resetTabs" + buildFormData() + "&t=" + (new Date().getTime())
        }).always(function(data) {
            refreshParent()
        });
    }
}
function navClick(code){
    if (!code){
        return;
    }
    if ($openNavMenu != null && $openNavMenu.length > 0) {
        if ($openNavMenu.is(':animated') || !$openNavMenu.is(':visible')) {
            return;
        }
        if ($openNavMenu.attr('id') != 'navMenu_' + code) {
            hideNavMenu($openNavMenu);
        }
    }
    showNavMenu(code);
}
function closeSetupMenus(e, navMenu){
    if (!navMenu) {
        return;
    }
    if (!e) {
        var e = window.event;
    }
    var clickEl = getElementForEvent(e);
    if (!clickEl || clickEl.className == 'setupMenuLink') {
        return;
    }
    $('div.titleArea td.setupCell div.open a.setupMenuLink', navMenu).each(function(){
        toggleSetupMenu(this.parentNode.id.replace('setupWrap_',''));
    });
}
function closeAllNavMenus(){
	$('#mainNavBar > a.open').removeClass("open");
	$('div.titleArea td.setupCell div.open a.setupMenuLink').click();
	$('#pageHeaderWrap div.navMenu').filter(':visible').animate({'top':-1000}, 300, 'swing', function(){
		$('div.titleArea td.setupCell div.open a.setupMenuLink', this).each(function(){
            toggleSetupMenu(this.parentNode.id.replace('setupWrap_',''));
        });
		$(this).hide();
	});
}
function hideNavMenu($navMenu){
	if (!$navMenu){
		return;
	}
	$('#mainNavBar > a.open').removeClass("open");
	$navMenu = $($navMenu);
	if ($navMenu.is(':animated')){
		return;
	}
	$('div.titleArea td.setupCell div.open a.setupMenuLink', $navMenu).click();
    $navMenu.css('z-index','73');
	$navMenu.hide().css('z-index','74');
	$openNavMenu = null;
}
function showNavMenu(code){
    var $navMenu = $('#navMenu_' + code);
    $openNavMenu = $navMenu;
    if ($navMenu.length == 0 && navMenuData[code]) {
        showMessage("Loading Menu...", null, null, function(){
            $navMenu = $(navMenuData[code]).appendTo($('#navMenuWrap'));
            $navMenu.click(function(){
                abortNavClose = true;
            });
            positionMenuItems(code);
            showNavMenu(code);
        });
        return;
    }
    var $navLink = $('#nav_' + code);
    if ($navMenu.is(':visible')){
        $navLink.blur();
        hideNavMenu($navMenu);
    } else {
        $('#mainNavBar > a.open').removeClass("open");
        $navLink.addClass('open');
        $navMenu.css('top',53).show();
        $('#nav_search_' + code).val('').focus();
        if (gIsIE7) {
            reflowPage();
        }
    }
}
function showEntitySelect(){
	var $entityList = $('#entityList');

	if ($entityList.is(':visible')){
		hideEntitySelect();
	} else {
        var $entityLabel = $('#entityLabel');
    	var $entityInputWrap = $('#entityInputWrap');
    	var $entityInput = $('#entityInput');
        if (typeof(window.gEntityListWidth) == 'undefined') {
            $entityList.css('font-weight', 'bold');
            gEntityListWidth = getAutoSize($('#entityList'),'width') + getScrollbarWidth();
            $entityList.css('font-weight', 'normal');
        }
        $('div.noresults', $entityList).hide();
        $entityInput.val('');
        $entityInputWrap.css('width', $entityLabel.css('width'));
        $entityList.css('opacity','0');
        $entityInputWrap.css('opacity','0');
        $entityLabel.fadeOut(200, function(){
            $entityInputWrap.show();
            $entityList.show();
            $('a', $entityList).show();
            filterEntity({keyCode:''});
            $entityInputWrap.animate({'opacity':'1','width':gEntityListWidth}, {
                'duration' : 200,
                'step' : function(now, fx){
                    $entityList.css(fx.prop,fx.now + fx.unit);
                },
                'complete' : function(){
                     $entityList.find('a.selected:first').scrollintoview();
                     $entityInput.focus().select();
                     $entityList.css({
                         'opacity':'1',
                         'width': (gEntityListWidth + 'px')
                     });
                }
            });
        });
    }
}

function filterEntity(e){
	if (!e){
		var e = window.event;
	}
    var $entityInput = $('#entityInput');
	var $entityList = $('#entityList');
	if (e.keyCode == 27){
		hideEntitySelect();
		return;
	} else if (e.keyCode == 13 || e.keyCode == 9) {
        var selected = $entityList.find('a.selected').filter(':visible:not(:animated)');
        if (selected.length > 0) {
            selected.click();
        } else {
            $entityList.find('a').filter(':visible:not(:animated)').eq(0).click();
        }
        return;
    } else if (e.keyCode == 40) { //down arrow
        var selected = $entityList.find('a.selected').filter(':visible');
        if (selected.length > 0) {
            selected.removeClass('selected');
            while (true) {
                selected = selected.next('a');
                if (!selected.length) {
                    selected = $entityList.find('a').filter(':visible').eq(0);
                    break;
                } else if (selected.is(':visible')) {
                    break;
                }
            }
            selected.addClass('selected');
        } else {
            $entityList.find('a.selected').removeClass('selected');
            selected = $entityList.find('a').filter(':visible').eq(0).addClass('selected');
        }
        selected.scrollintoview();
        readText(selected.html());
        return;
    } else if (e.keyCode == 38) {//up arrow
        var selected = $entityList.find('a.selected').filter(':visible');
        if (selected.length > 0) {
            selected.removeClass('selected');
            while (true) {
                selected = selected.prev('a');
                if (!selected.length) {
                    selected = $entityList.find('a').filter(':visible').last();
                    break;
                } else if (selected.is(':visible')) {
                    break;
                }
            }
            selected.addClass('selected');
        } else {
            $entityList.find('a.selected').removeClass('selected');
            selected = $entityList.find('a').filter(':visible').eq(0).addClass('selected');
        }
        selected.scrollintoview();
        readText(selected.html());
    }
	var noresults = true;
	$('a', $entityList).each(function(){
        var $a = $(this);
		if ($entityInput.val() == "" || this.innerHTML.toUpperCase().match($entityInput.val().toUpperCase().replace(/\(/g,'\\(').replace(/\)/g,'\\)'))) {
            if ($a.css('opacity') == "0"){
				$a.css({'height':'0','opacity':'0', 'padding-top':'0','padding-bottom':'0'}).show().animate({
					'height':'17px',
					'opacity':'1',
					'padding-top':'2px',
					'padding-bottom':'2px'
				}, 300, 'swing');
			}
            $a.html($a.html());
			noresults = false;
		} else {
			if ($a.css('opacity') == "1"){
				$a.animate({'height':'0',opacity:'0', 'padding-top':'0','padding-bottom':'0'}, 300, 'swing', function(){
					$a.hide();
                    if (gIsIE) {
                        reflowPage();
                    }
				});
			}
        }
	});

	if (noresults){
		selected = $('div.noresults', $entityList).fadeIn();
        readText(selected.html());
	} else {
		$('div.noresults', $entityList).hide();
	}
}
function setEntity(e){
	if(!e){
		var e = window.event;
	}
	var entity = getElementForEvent(e);
    if ((!entity || entity && entity.tagName != "A") && $('#entityList').is(':visible')) {
        var selected = $('#entityList a.selected').filter(':visible:not(:animated)');
        if (selected.length > 0) {
            entity = selected.get(0);
        } else {
            entity = $('#entityList a').filter(':visible:not(:animated)').eq(0);
        }
    }
	if (entity && entity.tagName == "A"){
		$('#entityLabel').html($(entity).html());
        changeEntity($(entity).attr('entityid'));
	}
	hideEntitySelect();
}
function setPlan(e){
	if(!e){
		var e = window.event;
	}
	var entity = getElementForEvent(e);
	if (entity && entity.tagName == "A"){
		$('#entityLabel').html($(entity).html());
        $('#sSelectedPlan').val(entity.getAttribute('entityid'));
        changeSelectedPlan();
	}
	hideEntitySelect();
}

function hideEntitySelect(){
    var $entityLabel = $('#entityLabel');
	var $entityInputWrap = $('#entityInputWrap');
	var $entityList = $('#entityList');
    var tmpWidth = $entityLabel.width();

    $entityInputWrap.animate({'opacity':'0','width':tmpWidth}, 200);
    $entityList.animate({'opacity':'0','width':tmpWidth}, 200, null, function(){
          $entityInputWrap.hide();
          $entityList.hide();
          $entityLabel.fadeIn(200);
    });
}
function toggleSetupMenu(pathId){
	if (!pathId) {
		return;
	}
	var $setupWrap = $("#setupWrap_" + pathId);
	var $setupMenu = $("div.setupMenu", $setupWrap);
	var $setupBg = $("div.setupLinkBg", $setupWrap);
	if ($setupMenu.is(':animated')) {
        return false;
    }

	if ( $setupWrap.hasClass('open') ){
		$setupMenu.fadeOut();
		$setupBg.fadeOut(null,function(){
			$setupWrap.removeClass('open');
		});
        $setupWrap.closest('.navSectionWrap').css('z-index','1');
	} else {
        $setupWrap.closest('.navSectionWrap').css('z-index','2');
		$('td.setupCell div.open a.setupMenuLink', $setupWrap.closest('div.navMenu')).click();
		$setupBg.hide();
		$setupWrap.addClass('open');
        $setupBg.fadeIn();
		$setupMenu.fadeIn(function(){
            $(this).find('a').eq(0).focus();
        }).scrollintoview();
	}
}
function toggleMenu(link, pathId, isParentMenu){
	if (!link || !pathId) {
		return;
	}
    var $navMenuLinks = $("#navMenuLinks_" + pathId);
	if ($navMenuLinks.is(':animated')){
		return;
	}
	var $link = $(link);
	var $navMenu = $navMenuLinks.closest('div.navMenu');
    var $hMenus;
    if (isParentMenu) {
        $hMenus = $('#hNavMenus');
    } else {
        $hMenus = $('#hNavSubMenus');
    }
	$('td.setupCell div.open a.setupMenuLink', $navMenu).click();
	var height = 0;
	if ($navMenuLinks.hasClass('open') ){
        if (isParentMenu) {
            $hMenus.val($hMenus.val().replace('#' + pathId + '#', '') + '#' + pathId + '#');
        } else {
            $hMenus.val($hMenus.val().replace('#' + pathId + '#', ''));
        }

        $navMenuLinks.slideUp(300, function(){
            $navMenuLinks.removeClass('open').addClass('closed');
            $link.removeClass("open").addClass("closed").attr('aria-expanded','false');
        });
	} else {
        if (isParentMenu) {
            $hMenus.val($hMenus.val().replace('#' + pathId + '#', ''));
        } else {
            $hMenus.val($hMenus.val().replace('#' + pathId + '#', '') + '#' + pathId + '#');
        }
        $link.addClass("open").removeClass("closed").attr('aria-expanded','true');
        $navMenuLinks.addClass('open').slideDown(300, function(){
          $navMenuLinks.removeClass('closed');
        });
	}
    saveOpenMenus();
}
function closeSubMenu(pathId){
	if (!pathId) {
		return;
	}
	var $titleLink = $("#titleLink_" + pathId);
	var $navMenuLinks = $("#navMenuLinks_" + pathId);
	$navMenuLinks.stop().animate({'height':height}, 300, 'swing', function(){
		$titleLink.removeClass('open');
	});
}
function saveOpenMenus() {
   var gMenuXmlHttp = XmlHttp.create();
   if (gMenuXmlHttp) {

      gMenuXmlHttp.onreadystatechange=function() {
        if (gAbortRequests) {
            return;
        }
         if (gMenuXmlHttp.readyState==4) {
            if (gMenuXmlHttp.status==200) {

            }
         }
      }

      gMenuXmlHttp.open("POST","smainhttp001.w",true);
      gMenuXmlHttp.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
      gMenuXmlHttp.send("requestAction=saveNavMenus" +
                        "&homepage=" + document.getElementById("HomePage").value +
                        "&nameid=" + document.getElementById("nameid").value +
                        "&hNavSubMenus=" + document.getElementById("hNavSubMenus").value +
                        "&hNavMenus=" + document.getElementById("hNavMenus").value +
                        "&dwd=" + document.detailform.dwd.value +
                        "&wfaacl=" + document.detailform.wfaacl.value +
                        "&encses=" + document.detailform.encses.value +
                        "&timestamp=" + (new Date()).getTime()
                        );
   }
}
function saveSearchOption() {
   var gSearchOptionXmlHttp = XmlHttp.create();
   if (gSearchOptionXmlHttp) {

      gSearchOptionXmlHttp.onreadystatechange=function() {
        if (gAbortRequests) {
            return;
        }
         if (gSearchOptionXmlHttp.readyState==4) {
            if (gSearchOptionXmlHttp.status==200) {

            }
         }
      }

      gSearchOptionXmlHttp.open("POST","smainhttp001.w",true);
      gSearchOptionXmlHttp.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
      gSearchOptionXmlHttp.send("requestAction=SaveSearchOption" +
                        "&hSearchOption=" + document.getElementById("hNavSearchOption").value +
                        "&nameid=" + document.getElementById("nameid").value +
                        "&dwd=" + document.detailform.dwd.value +
                        "&wfaacl=" + document.detailform.wfaacl.value +
                        "&encses=" + document.detailform.encses.value
                        );
   }
}
function checkFSPrompt(pProgram,pWhereTo,pMenuId,pButtonID,pEntity,pHomePage){
    var gFSPrompt = XmlHttp.create();
    if (gFSPrompt) {
       gFSPrompt.onreadystatechange=function() {
            if (gAbortRequests) {
                return;
            }
          if (gFSPrompt.readyState==4) {
             if (gFSPrompt.status==200) {
                 var oResponse = eval("(" + gFSPrompt.responseText + ")");
                 if (oResponse.doPrompt) {
                     openNewWindow('sschdedit039.w',625,155,0,'');
                 } else {

                 }
             }
          }
       }

       gFSPrompt.open("POST","qfsyearshttp001.w",true);
       gFSPrompt.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
       gFSPrompt.send("requestAction=CheckForPrompt" +
                         "&entity=" + document.getElementById("entity").value +
                         "&duserid=" +  document.getElementById("duserid").value +
                         "&dwd=" + document.detailform.dwd.value +
                         "&wfaacl=" + document.detailform.wfaacl.value +
                         "&encses=" + document.detailform.encses.value
                      );
    }
}

function searchPrograms(e, input, path){
    clearTimer('NavSearch');
    if (!input || !path){
		return;
	}
    if (!e) {
        var e = window.event;
    }
    if (!e) {
        return;
    }
    if (e.type == 'keyup' && (e.keyCode == 38 || e.keyCode == 40)) {
        return;
    }
    if (e.type == 'keydown') {
        var selectedItem, tmpSelected;
        $('#nav_search_' + path).parent().addClass('loading');
        if (e.keyCode == 13) {
            $('#nav_search_' + path).parent().removeClass('loading');
            selectedItem = $('#nav_searchList_' + path).find('div.searchItemWrap.searchItemSelected').filter(':visible').find('a');
            if (selectedItem.length == 0) {
                selectedItem = $('#nav_searchList_' + path).find('a').filter(':visible').eq(0);
            }
            if (selectedItem.length > 0) {
                cancelEvent(e);
                closeProgramSearch(path);
                hideNavMenu($('#navMenu_' + path));
                selectedItem.parent().trigger('click');
            }
        } else if (e.keyCode == 27) {
            $('#nav_search_' + path).parent().removeClass('loading');
            if (input.value == '') {
                $(input).blur();
                hideNavMenu($('#navMenu_' + path));
            } else {
                cancelEvent(e);
                closeProgramSearch(path);
            }
            input.value = '';
            input.setAttribute('value','');
        } else if (e.keyCode == 40) { //arrow down
            $('#nav_search_' + path).parent().removeClass('loading');
            cancelEvent(e);
            selectedItem = $('#nav_searchList_' + path).find('div.searchItemWrap.searchItemSelected').filter(':visible');
            if (selectedItem.length > 0) {
                tmpSelected = selectedItem.nextAll('.searchItemWrap:visible:first');
                if (tmpSelected.length > 0) {
                    selectedItem.removeClass('searchItemSelected');
                    tmpSelected.addClass('searchItemSelected');
                }
            } else {
                $('#nav_searchList_' + path).find('div.searchItemWrap').filter(':visible').eq(0).addClass('searchItemSelected');
            }
        } else if (e.keyCode == 38) { //arrow up
            $('#nav_search_' + path).parent().removeClass('loading');
            cancelEvent(e);
            selectedItem = $('div.searchItemWrap.searchItemSelected',$('#nav_searchList_' + path)).filter(':visible');
            if (selectedItem.length > 0) {
                tmpSelected = selectedItem.prevAll('.searchItemWrap:visible:first');
                if (tmpSelected.length > 0) {
                    selectedItem.removeClass('searchItemSelected');
                    tmpSelected.addClass('searchItemSelected');
                }
            } else {
                $('#nav_searchList_' + path).find('div.searchItemWrap').filter(':visible').eq(0).addClass('searchItemSelected');
            }
        }
        return;
    } else if (e.keyCode == 27) {
        $('#nav_search_' + path).parent().removeClass('loading');
        input.value = '';
        input.setAttribute('value','');
        closeProgramSearch(path);
        return;
    }
    var eventType = e.type;
    setTimer('NavSearch', function(){
        continueSearchPrograms({'type':eventType}, input, path);
    },300);
}
function continueSearchPrograms(e, input, path){
    clearTimer('NavSearch');
	if (!input || !path){
		return;
	}
    if (!e) {
        var e = window.event;
    }
    if (e.type == 'focus' && input.value == '' || input.value.length < 2) {
        $('#nav_search_' + path).parent().removeClass('loading');
        $('#nav_searchList_' + path).hide().html('');
        return;
    }
    var xhrProgramSearch = XmlHttp.create();
    if (xhrProgramSearch){
        xhrProgramSearch.open('POST','qsuprhttp002.w',true);
        xhrProgramSearch.onreadystatechange = function(){
            if (gAbortRequests) {
                return;
            }
            if (xhrProgramSearch.readyState==4 && xhrProgramSearch.status==200){
                var xDoc, xSuccess, xMsg, xInfo, searchList;
                xDoc     = xhrProgramSearch.responseXML.getElementsByTagName('validation');
                xSuccess = getElementTextNS('', 'successflag', xDoc[0], 0);
                xMsg     = getElementTextNS('', 'validationmsg', xDoc[0], 0);
                xInfo    = getElementTextNS('', 'xtrainfo', xDoc[0], 0);

                searchList = $('#nav_searchList_' + path);

                $(input).parent().removeClass('loading');

                if(xSuccess.toLowerCase()=='yes') {
                    if (xInfo == "") {
                        searchList.show().html('<div class="navSearchItems"><div class="noResults">No programs match your search</div></div>');
                    } else {
                        $('#nav_searchList_' + path).html('<div class="navSearchItems">' + xInfo + '</div>').show();
                    }
                } else {
                    searchList.hide().html('');
                }
            }
        }
        var vParams = 'requestAction=programSearch&entity=' + $('#entity').val() + '&homepage=' + $('#HomePage').val() + '&nameid=' + $('#nameid').val() + '&searchText=' + input.value + '&dwd=' + $('#dwd').val() + '&wfaacl=' + $('#wfaacl').val() + '&encses=' + $('#encses').val();
        xhrProgramSearch.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        if (gIsMoz || gIsIE) {
            xhrProgramSearch.setRequestHeader("Connection", "close");
            xhrProgramSearch.setRequestHeader("Content-length", vParams.length);
        }
        xhrProgramSearch.send(vParams);
    }
}
function clickSearchProgram(e){
    if (!e) {
        var e = window.event;
    }
    var el = getElementForEvent(e);
    if (!el) {
        return;
    }
    if (el.tagName.toLowerCase() == "a") {
        return;
    }
    var path = $("#navMenuWrap > div.navMenu").filter(':visible').attr("id");
    if (path) {
        path = path.replace('navMenu_', '');
        closeProgramSearch(path);
        hideNavMenu($('#navMenu_' + path));
    }
    if ($(el).hasClass('itemPath')) {
        el = $(el).closest('div.searchItemWrap');
    }
    eval($('a', el).attr('href'));
}
function closeProgramSearch(path){
    setTimer('NavSearch', function(){
        $('#nav_search_' + path).parent().removeClass('loading').removeClass('searchOpen');
        $('#nav_searchList_' + path).hide();
    }, 300);
}
function keepProgramSearchOpen(){
    clearTimer('NavSearch');
}
function setNavSearchOptions(input){
    if (!input) {
        return false;
    }
    $('#hNavSearchOption').val(input.value);
    saveSearchOption();
    var navSearchOptions = document.getElementById('navSearchOptions');
    var list = navSearchOptions.parentNode;
    if ($(list).hasClass('nav_searchList')) {
        $('div.navSearchItems', list).html('');
        $('#' + list.id.replace('nav_searchList_','nav_search_')).focus();
    }
}

function goToRecent(program, pEnc, buttonid, menuid, homepage, entity){
    if (!program || !pEnc || !buttonid || !menuid || !homepage) {
        return false;
    }

    if (window.gOpenRecentInNewWindow) {
        window.gOpenRecentInNewWindow = false;
        oSF(program,pEnc,'',menuid,buttonid,(homepage == 'ssmhom01.w' ? entity : ''),homepage)
    } else {
        document.navform.FromRecent.value = 'true';
        aN(program,pEnc,'', menuid, buttonid, (homepage == 'ssmhom01.w' ? entity : ''), homepage);
    }
}
function menuFavMaint(link, id){
    if (!link) {
        return;
    }
    var vTemp;
    var maintOption;
    var desc;
    link = $(link);
    desc = link.attr("desc");
    vTemp = $('#tabsUl li.selTab a').html();
    if (vTemp != "" && vTemp!= null) {
        desc += " - " + vTemp;
    }
    desc = desc.replace(/<br>/gi, " ").replace(/<br \/>/gi, " ");
    if (link.hasClass("addMenuFav")) {
        maintOption = "add";
    } else {
        maintOption = "removeFavorite";
    }

    var gFavoriteXmlHttp = XmlHttp.create();
    if (gFavoriteXmlHttp) {
        gFavoriteXmlHttp.open("POST",'qfavrhttp001.w',true);
        gFavoriteXmlHttp.onreadystatechange = function() {
            if (gAbortRequests) {
                return;
            }
            if (gFavoriteXmlHttp.readyState==4) {
                if (gFavoriteXmlHttp.status==200) {
                    var tmpTip;
                    if (maintOption == "add") {
                        link.attr('class','hasMenuFav');
                        tmpTip = link.attr('tooltip');
                        if (typeof tmpTip != 'undefined' && tmpTip != false ) {
                            link.attr("tooltip", "Remove " + desc + " from Favorites");
                        } else {
                            tmpTip = link.attr('tooltipbottom');
                            if (typeof tmpTip != 'undefined' && tmpTip != false ) {
                                link.attr("tooltipbottom", "Remove " + desc + " from Favorites");
                            }
                        }

                        showMessage(desc + " was added to your favorites.", true);
                        window.setTimeout(hideMessage, 2000);
                        vTemp = document.getElementById('favItems_' + document.detailform.HomePage.value.substring(0, document.detailform.HomePage.value.lastIndexOf(".")));
                        if (vTemp) {
                            var $favDiv = $("<div class='favItem' id='fav_" + id + "'>");
                            $favDiv.html("<a href=\"javascript:oF('" + link.attr("program") + "',''," + link.attr("menuid")  + ",'" + id + "','" + document.detailform.entity.value + "','" + document.detailform.HomePage.value + "')\">" + desc + "</a>" +
                                     "<a href=\"javascript:oSF('" + link.attr("program") + "',''," + link.attr("menuid")  + ",'" + id + "','" + document.detailform.entity.value + "','" + document.detailform.HomePage.value + "')\" class='favNewWindow'>&nbsp;</a>");
                            $(vTemp).append($favDiv);
                            $(vTemp).show();
                            vTemp = document.getElementById('favSystem_' + document.detailform.HomePage.value.substring(0, document.detailform.HomePage.value.lastIndexOf(".")));
                            $(vTemp).show();
                            $('#favMenuItems div.noitems').hide();
                            $('#menu_favorites div.editFav').show();
                        }
                    } else {
                        link.attr('class','addMenuFav');
                        tmpTip = link.attr('tooltip');
                        if (typeof tmpTip != 'undefined' && tmpTip != false) {
                            link.attr("tooltip", "Add  " + desc + " to Favorites");
                        } else {
                            tmpTip = link.attr('tooltipbottom');
                            if (typeof tmpTip != 'undefined' && tmpTip != false ) {
                                link.attr("tooltipbottom", "Add  " + desc + " to Favorites");
                            }
                        }

                        showMessage(desc + " was removed from your favorites.", true);
                        window.setTimeout(hideMessage, 2000);
                        $('#fav_' + id).remove();
                        vTemp = document.getElementById('favItems_' + document.detailform.HomePage.value.substring(0, document.detailform.HomePage.value.lastIndexOf(".")));
                        if ($('div.favItem', $(vTemp)).length == 0) {
                            $(vTemp).hide();
                            vTemp = document.getElementById('favSystem_' + document.detailform.HomePage.value.substring(0, document.detailform.HomePage.value.lastIndexOf(".")));
                            $(vTemp).hide();
                            if ($('a.favNewWindow', $('#favMenuItems')).length == 0) {
                                $('#favMenuItems div.noitems').show();
                                $('#menu_favorites div.editFav').hide();
                            }
                        }
                    }
                    if (window.setDesktopFavorites) {
                        setDesktopFavorites();
                    }
                }
            }
        }
        gFavoriteXmlHttp.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        gFavoriteXmlHttp.send("requestAction=" + maintOption +
                                 "&tDescription=" + desc +
                                 "&ButtonID=" + id +
                                 "&favId=" + document.detailform.HomePage.value.substring(0, document.detailform.HomePage.value.lastIndexOf(".")) + ";" + id +
                                 "&HomePage=" + document.detailform.HomePage.value +
                                 "&duserid=" + document.detailform.duserid.value +
                                 "&dwd=" + document.detailform.dwd.value +
                                 "&wfaacl=" + document.detailform.wfaacl.value +
                                 "&encses=" + document.detailform.encses.value + (
                                 document.getElementById('hCurrentTab') ? ("&vPassedTab=" + document.getElementById('hCurrentTab').value) : ""
                                ));
    }
}
function selectCurrentMenu(){
    var mainNavBar = $('#mainNavBar');
    var currentPath = $('#hCurrentPath').val();
    if (mainNavBar.length == 0) {
        return;
    }
    if (currentPath) {
        if (currentPath.indexOf('WAEP') == 0) {
            currentPath = currentPath.substring(0,6);
            if (currentPath.length == 4) {
                if ($('#m9999999999').length) {
                    $('#nav_home').addClass('thispage');
                } else {
                    $('#nav_EAPClassicView').addClass('thispage');
                }
            } else {
                $('a[path=' + currentPath  + ']', mainNavBar).addClass('thispage');
            }
        } else {
            currentPath = currentPath.substring(0,4);
            if (currentPath.length == 2) {
                $('#nav_home').addClass('thispage');
            } else {
                $('a[path=' + currentPath  + ']', mainNavBar).addClass('thispage');
            }
        }
    } else {
        var menuHtmlID = $('#hMenuHtmlID').val();
        if (menuHtmlID) {
            $('a[htmlid=' + menuHtmlID  + ']', mainNavBar).addClass('thispage');
        } else {
            $('#nav_home').addClass('thispage');
        }
    }
}
function positionMenuItems(code){
    var $column1, $column2, $column3, $navMenuBlocks, $navMenuWrap, $navMenus, $tmpMenu, $tmpBlock, blockCount, blocksPerColumn, extraBlocks, columnHeights, tmpEls, tmpHeights, movedElement;
    $navMenuWrap = $('#navMenuWrap');
    $navMenus = $('#navMenu_' + code);
    $navMenuWrap.css({'position':'absolute','top':'-2000','opacity':'0'});
    $navMenus.each(function(){
        $tmpMenu = $(this);
        $column1 = $('div.column1', $tmpMenu);
        if (!$column1.length) {
            return;
        }
        $tmpMenu.show();
        $column2 = $('div.column2', $tmpMenu);
        $column3 = $('div.column3', $tmpMenu);
        $navMenuBlocks = $('div.navMenuBlock', $column1).each(function(){
            $tmpBlock = $(this);
            if ($('a', $tmpBlock).length <= 1) {
                $tmpBlock.remove();
            } else if ($('div.navSectionWrap a', $tmpBlock).length == 0) {
                $tmpBlock.addClass('empty');
                $('a.titleLink', $tmpBlock).each(function(){
                    $(this).replaceWith(this.innerHTML);
                });
            }
        });
        blockCount = $navMenuBlocks.length;
        if (blockCount == 1) {
            $tmpMenu.hide();
            return;
        } else if (blockCount == 2) {
            $($navMenuBlocks.get(1)).appendTo($column2);
            $tmpMenu.hide();
            return;
        } else if (blockCount == 3) {
            $($navMenuBlocks.get(1)).appendTo($column2);
            $($navMenuBlocks.get(2)).appendTo($column3);
            $tmpMenu.hide();
            return;
        }
        blocksPerColumn = Math.floor(blockCount/3);
        extraBlocks = blockCount % 3;

        for (var i = blockCount - 1; i > 1; i--) {
            $($navMenuBlocks.get(i)).prependTo($column3)
        }

        columnHeights = [$column1.height(),$column2.height(),$column3.height()];
        var buffer = 100;

        do {
            movedElement = false;
            // if (all three column heights are within buffer of each other) OR
            //    (first column is larger than second and third and second and third are within buffer of each other)
            if ((columnHeights[1] >= (columnHeights[0] - buffer)    &&
                 columnHeights[1] <= (columnHeights[0] + buffer)    &&
                 columnHeights[2] >= (columnHeights[1] - buffer)    &&
                 columnHeights[2] <= (columnHeights[1] + buffer))   ||
                (columnHeights[0] >   columnHeights[1]              &&
                 columnHeights[0] >   columnHeights[2]              &&
                 columnHeights[2] >= (columnHeights[1] - buffer)    &&
                 columnHeights[2] <= (columnHeights[1] + buffer))) {
                break;
            }
            if (columnHeights[2] > columnHeights[1] && $column3.children().length > 1) {
                tmpEls = [$column3.find('div.navMenuBlock').eq(0)];
                tmpHeights = [tmpEls[0].height() + 10];
                tmpEls[0].appendTo($column2);
                columnHeights[2] -= tmpHeights[0];
                columnHeights[1] += tmpHeights[0];
                movedElement = true;
            }
            // if (all three column heights are within buffer of each other) OR
            //    (first column is larger than second and third and second and third are within buffer of each other)
            if ((columnHeights[1] >= (columnHeights[0] - buffer)    &&
                 columnHeights[1] <= (columnHeights[0] + buffer)    &&
                 columnHeights[2] >= (columnHeights[1] - buffer)    &&
                 columnHeights[2] <= (columnHeights[1] + buffer))   ||
                (columnHeights[0] >   columnHeights[1]              &&
                 columnHeights[0] >   columnHeights[2]              &&
                 columnHeights[2] >= (columnHeights[1] - buffer)    &&
                 columnHeights[2] <= (columnHeights[1] + buffer))) {
                break;
            }
            if (columnHeights[1] > columnHeights[0] && $column2.children().length > 1) {
                tmpEls = [$column2.find('div.navMenuBlock').eq(0)];
                tmpHeights = [tmpEls[0].height() + 10];
                tmpEls[0].appendTo($column1);
                columnHeights[1] -= tmpHeights[0];
                columnHeights[0] += tmpHeights[0];
                movedElement = true;
            }
        } while ( movedElement );

        $('div.menuLinks:empty', $tmpMenu).remove();
        $tmpMenu.hide();
    });
    $navMenuWrap.css({'position':'static','top':'','opacity':'1'});
    $('span.navSubMenuTitle br',$navMenus).replaceWith('&nbsp;');
    addMenuClasses($navMenus);
    hideMessage();
}
function addMenuClasses($navMenus){
    try {
        var rOpenSubMenus = $('#hNavSubMenus').val();
        var rClosedMenus  = $('#hNavMenus').val();
        rOpenSubMenus = rOpenSubMenus.replace(/##/g,',').replace(/#/g,'').split(',');
        rClosedMenus = rClosedMenus.replace(/##/g,',').replace(/#/g,'').split(',');
        for (var i = 0; i < rOpenSubMenus.length; i++) {
            $('#navMenuLinks_' + rOpenSubMenus[i], $navMenus).addClass('open').removeClass('closed');
            $('#titleLink_' + rOpenSubMenus[i], $navMenus).addClass('open').removeClass('closed').attr('aria-expanded','true');
        }
        for (var i = 0; i < rClosedMenus.length; i++) {
            $('#navMenuLinks_' + rClosedMenus[i], $navMenus).addClass('closed').removeClass('open');
            $('#titleLink_' + rClosedMenus[i], $navMenus).addClass('closed').removeClass('open').attr('aria-expanded','false');
        }
    } catch(er) {}
}

function openAccountInfo() {
    openNewWindow('qacntinfo001.w',650,525);
}
/*tab program js*/
function toggleTabMenu(link){
	if (!link){
		return;
	}
    var tmpHeight;
	var $parentLi = $(link.parentNode);
    if ($parentLi.is(':animated')) {
        return;
    }
	var $childUl = $('ul', $parentLi);
	if ($parentLi.hasClass('open')) {
        saveTabStatus('removeTab', link.id + "div");
        //$childUl.css('height','');
				if (!gIsIpad) {
					$parentLi.animate({'height':'24px'}, null, 'swing', function(){
						$(this).removeClass('open');
       			$(this).addClass('closed');
					});
				}
				else {
					$parentLi.animate({'height':'38px'}, null, 'swing', function(){
						$(this).removeClass('open');
        		$(this).addClass('closed');
					});
				}

	} else {
        saveTabStatus('addTab', link.id + "div");
        $parentLi.removeClass('closed');
        $parentLi.addClass('open');
        tmpHeight = $childUl.height();
        $childUl.css('height',0);
        /* Larger tab menus for tablets */
        if (gIsIpad)
        	tmpBaseHeight = 40;
        else
        	tmpBaseHeight = 26;
				$parentLi.animate({'height':(tmpHeight + tmpBaseHeight) + 'px'}, null, 'swing');
        $childUl.animate({'height':tmpHeight + 'px'}, null, 'swing');
	}
}
function loadTab(pTab) {
    document.getElementById("currentrecord").value='';
    document.getElementById("passedparams").value='';
    if (window.customTabClick)
        var vContinue = customTabClick(pTab);
    else
        var vContinue = true;

    if (vContinue) {
        $('.selTab',$('#tabsUl')).removeClass("selTab").addClass('regTab');
        $(document.getElementById(pTab)).addClass("selTab");
        document.getElementById("hCurrentTab").value=pTab;
        refreshTabs();
    }
}
function displaySubTabs2(pDiv) {
    toggleTabMenu(document.getElementById(pDiv.replace('div', '')));
}
function displayTab(pTab){
    loadTab(pTab);
}
function viewPQReport(pRowID){
    if (!pRowID) {
        return false;
    }
    var vParams = "?destinationPage=" + pRowID + "&asAttach=no";
    var tmp;
    if (tmp = document.getElementById("dwd")) {
        vParams += "&dwd=" + tmp.value;
    }
    if (tmp = document.getElementById("duserid")) {
        vParams += "&duserid=" + tmp.value;
    }
    if (tmp = document.getElementById("Browser")) {
        vParams += "&Browser=" + tmp.value;
    }
    if (tmp = document.getElementById("BrowserPlatform")) {
        vParams += "&BrowserPlatform=" + tmp.value;
    }
    if (tmp = document.getElementById("BrowserPlatform")) {
        vParams += "&BrowserPlatform=" + tmp.value;
    }
    window.open('qdirconfig002.p' + vParams,"","width=" + (screen.availWidth - 15) + ",height=" + (screen.availHeight - 85) + ",status=0,menubar=0,toolbar=0,top=0,left=0,resizable=1");
}
function viewPQReport(pFileType, pStatus, pDisOpt, pRowID, pPrgmOpen, pPDFLink, pDoneMsg, pErrNote){
    var vOpen, vWidth, vHeight, vURL, vOpenSave = document.getElementById("hOpenSave").value.toLowerCase();

    if (pPrgmOpen.length != 0){
        pPrgmOpen = pPrgmOpen.replace(/dwd/gi,"dwd= " + document.detailform.dwd.value + "&dwdold");
        eval(pPrgmOpen);
    } else if (pFileType=='utility') {
        if (pStatus == 'q') {
            message('The selected utility is still queued for processing.');
        } else if (pStatus == 'r') {
            message('The selected utility is currently processing.');
        } else if (pStatus == 'c' && pDoneMsg) {
            message(pDoneMsg);
        } else if (pStatus == 'c') {
            message('The selected utility has finished processing.');
        } else if (pStatus == 'e') {
            if (pErrNote != '') {
                message('The selected utility encountered an error while processing: ' + pErrNote);
            } else {
                message('The selected utility encountered an error while processing.');
            }
        }
    } else {   //pdf, text, excel
        if (pStatus == 'q'){
            message('The selected process is still queued.');
        } else if (pStatus=='r') {
            message('The selected process is currently running.');
        } else if (pStatus == 'e') {
            if (pErrNote != '') {
                message('The selected utility encountered an error while processing: ' + pErrNote);
            } else {
                message('The selected process encountered an error.');
            }
        }
        if (pStatus != 'c') {
            unChangeCursor();
            return;
        }

        hideLoadingMsg();

        if (pDisOpt != 'stream') {
            if (vOpenSave == 'no' && pFileType == 'pdf') {
                gCodePopup = window.open(pPDFLink, "", "width=800,height=600,menubar=1,top=0,left=0,resizable=1");
                if (!gCodePopup) {
                    vOpen = 'window.open("' + pPDFLink + '","","width=800,height=600,menubar=1,toolbar=1,top=0,left=0,resizable=1");';
                    reportFinished(vOpen);
                } else {
                    gCodePopup = null;
                }
            } else {
                if (pFileType=='text') {
                    gCodePopup = window.open(pPDFLink, "", "width=800,height=600,menubar=1,top=0,left=0,resizable=1");
                    if (!gCodePopup) {
                        vOpen = 'window.open("' + pPDFLink + '","","width=800,height=600,menubar=1,toolbar=1,top=0,left=0,resizable=1");';
                        reportFinished(vOpen);
                    }
                } else {
                    window.location.replace(pPDFLink);
                }
            }
        } else { //stream
            vURL = 'qdirconfig002.p?destinationPage=' + pRowID +
                    '&dwd='             + document.getElementById("dwd").value +
                    '&duserid='         + document.getElementById("duserid").value +
                    '&Browser='         + document.getElementById("Browser").value +
                    '&BrowserPlatform=' + document.getElementById("BrowserPlatform").value;

            if (vOpenSave == 'no' && pFileType == 'pdf') {
                vWidth = (screen.availWidth - 15);
                vHeight = (screen.availHeight - 85);
                vURL += '&asAttach=no';
                gCodePopup = window.open(vURL,"","width=" + vWidth + ",height=" + vHeight + ",status=0,menubar=0,toolbar=0,top=0,left=0,resizable=1");
                if (!gCodePopup) {
                    vOpen = 'window.open("' + vURL + '","","width=' + vWidth + ',height=' + vHeight + ',status=0,menubar=0,toolbar=0,top=0,left=0,resizable=1");';
                    reportFinished(vOpen);
                }
            } else {
                vURL += '&forceAttach=yes';
                window.location.replace(vURL);
            }
        }
    }
    unChangeCursor();
}

function showHeadsUp(){
    var dFavoriteschild = document.getElementById("menu_favorites");
    if (!dFavoriteschild) {
        return;
    }
    var lockDiv = document.getElementById("lockDiv");
    if (lockDiv && lockDiv.style.visibility=='visible') {
        return;
    }
    getMenu('favorites').show();
    addEvent(document, "keyup", function(){
        getMenu('favorites').hide();
    });

}
function addBrowserInfo() {
    var BrowserVersionContainer = document.getElementById("BrowserVersionContainer");
    if (BrowserVersionContainer) {
        if (typeof brws != 'object') {
            brws = new cBrowserInfo();
        }
        var BrowserPerformanceLink = document.createElement("a");
        BrowserPerformanceLink.innerHTML = brws.osName + " / " + brws.brwsInfo;
        BrowserPerformanceLink.style.fontFamily = "tahoma,arial,sans-serif";
        BrowserPerformanceLink.style.fontSize = "12px";
        BrowserPerformanceLink.style.fontWeight = "bolder";
        BrowserPerformanceLink.style.cursor = "default";
        BrowserPerformanceLink.style.color = "#6e6e6e";
        BrowserPerformanceLink.style.textDecoration = "none";

        BrowserVersionContainer.appendChild(BrowserPerformanceLink);
    }
}
function signOut() {
    validateForm('signout','skyporthttp.w','signout');
}
function finishSignout() {
    if (gAction=='signout') {
        document.detailform.dwd.value='';
        document.detailform.wfaacl.value='';
        document.detailform.nameid.value='';
        document.detailform.duserid.value='';
        document.detailform.loginID.value='';
        document.detailform.entity.value='';
        document.detailform.HomePage.value='';
        document.detailform.HomePageMenuID.value='';
        document.detailform.SecurityMenuID.value='';
        if (document.getElementById('hDisplayTab')) {
            document.getElementById('hDisplayTab').value='';
        }
        window.location.replace("seplog01.w");
    }
}
function getMenu(type, opener){
    if (!(type in menuInstances)) {
        menuInstances[type] = new MenuObject(type);
        if (opener && menuInstances[type].menu) {
            menuInstances[type].opener = opener;
            $(menuInstances[type].menu).data('menuInstances',menuInstances[type]);
            menuInstances[type].opener.setAttribute('aria-haspopup', 'true');
            menuInstances[type].opener.setAttribute('aria-owns', menuInstances[type].menu.id);
            menuInstances[type].menu.setAttribute('aria-expanded', 'false');
        }
    }
    return menuInstances[type];
}
function newMenu(type, params, opener){
    if (!type) {
        return;
    }
    if (typeof(params) != "object") {
        params = {};
    }
    if (!(type in menuInstances)) {
        menuInstances[type] = new MenuObject(type, params);
        if (opener && menuInstances[type].menu) {
            menuInstances[type].opener = opener;
            $(menuInstances[type].menu).data('menuInstances',menuInstances[type]);
        }
    }
    return menuInstances[type];
}
function calendarTimeout(){
   if (gIsIE){
      if (window.event.srcElement && window.event.srcElement.name!='month')
         gTimeoutId=setTimeout('gCalendar.containerLayer.style.visibility="hidden";',gHideDelay);
   }
   else
      gTimeoutId=setTimeout('gCalendar.containerLayer.style.visibility="hidden";',gHideDelay);
}
function canFindBuffer() {
   if (gIsIE && !gIsIE7 && !gIsIE8 && document.getElementById('buffer')) {
       return true;
   } else {
       return false;
   }
}
function calLoad(){
    if (!isDOMReady) {
        window.setTimeout(calLoad, 100);
        return;
    }
    var containerString = '<div id="container"';
    if (gHideDelay) {
       containerString += ' onmouseout="calendarTimeout();" onmouseover="if (gTimeoutId) clearTimeout(gTimeoutId);"';
    }
    containerString += '></div>';
    $(document.body).append(containerString);
    new Calendar(new Date());
    addEvent(document.body, "click", handleDocumentClick, false);
}
function remJs(t){
  t = unescape(t);
  if (t.substring(0,11) == "javascript:"){
    t = t.substring(11,t.length);
  }
  eval(t);
}

function compensateBGSize(){
    if ($('#pageOuterWrap').hasClass('homepage')) {
        return;
    }
    var tmpTD;
    var hasContent = false;
    if (!gTreeWrap) {
        var treeItem = document.getElementById("tree1");
        if (!treeItem) {
            return;
        }
        var pNode = treeItem.parentNode;
        while (pNode && pNode.tagName != "TABLE" ) {
            pNode = pNode.parentNode;
        }
        if (pNode.tagName == "TABLE" && pNode.parentNode.tagName == "TD") {
            gTreeWrap = pNode.parentNode;
        }
        var pNode = gTreeWrap.parentNode;
        while (pNode && pNode.tagName != "TABLE" ) {
            pNode = pNode.parentNode;
        }
        if (pNode.tagName == "TABLE"){
            gTreeOffsetTop = ($(pNode).offset().top + 10);
        } else {
            gTreeOffsetTop = -1;
        }
        if (gTreeWrap && gTreeWrap.nextSibling){
            tmpTD = gTreeWrap.nextSibling;
            if (tmpTD.tagName == "TD") {
                if (typeof(tmpTD.textContent) == "string") {
                    if (tmpTD.textContent.replace(/&nbsp;/g, "").replace(/\n/g,"").replace(/\s/g, "") == "") {
                        tmpTD.className = "tree-background";
                    } else {
                        hasContent = true;
                    }
                } else if (typeof(tmpTD.innerText) == "string") {
                    if (tmpTD.innerText.replace(/&nbsp;/g, "").replace(/\n/g,"").replace(/\s/g, "") == "") {
                        tmpTD.className = "tree-background";
                    } else {
                        hasContent = true;
                    }
                }
            }
        }
    }
    if (!gTreeWrap) {
        return;
    }
    if (typeof($) == 'function' && !gIsIE7) {
        $(gTreeWrap).closest('table').css('height','auto');
    }
    var dErrorsIH = document.getElementById("dErrorsIH");
    var windowSize = getWindowSize();
    if (gTreeOffsetTop >= 0) {
        gTreeWrap.style.height = (windowSize.height - gTreeOffsetTop) + "px";
    }
    var treeWidth = getElementWidth(gTreeWrap);
    if (!dErrorsIH && !hasContent) {
        gTreeWrap.style.width = (windowSize.width) + "px";
    }

}
function getSelectionStart(o) {
    if (o.createTextRange) {
        var r = document.selection.createRange().duplicate()
        r.moveEnd('character', o.value.length)
        if (r.text == '') return o.value.length
            return o.value.lastIndexOf(r.text)
    } else return o.selectionStart
}
function getSelectionEnd(o) {
    if (o.createTextRange) {
        var r = document.selection.createRange().duplicate()
        r.moveStart('character', -o.value.length)
        return r.text.length
    } else return o.selectionEnd
}
function setCaretPosition(o, pos) {
    if(o.setSelectionRange) {
        o.focus();
        o.setSelectionRange(pos,pos);
    } else if (o.createTextRange) {
        var range = o.createTextRange();
        range.collapse(true);
        range.moveEnd('character', pos);
        range.moveStart('character', pos);
        range.select();
    }
}

function detectBrowser(){
	brws = new cBrowserInfo();
	vBrwsInfo = brws;
	try {
        if (brws.ipad) {
           gIsIpad = true;
		}
		if (brws.chrome) {
		   gIsChrome = true;
		} else if (brws.safari) {
		   gIsSafari = true;
		   if (brws.iphone) {
			   gIsIphone = true;
		   }
		} else if (brws.op) {
		   gIsOpera = true;
        } else if (brws.edge) {
           gIsEdge = true;
		} else if (brws.microsoftEdge) {
           gIsMicrosoftEdge = true;
		} else if (brws.gecko) {
		   gIsMoz = true;
		} else {
		   gIsIE = true;
           if (brws.version == 11) {
			   gIsIE11 = true;
		   } else if (brws.version == 10) {
			   gIsIE10 = true;
		   } else if (brws.version == 9) {
			   gIsIE9 = true;
           } else if (brws.version == 8) {
			   gIsIE8 = true;
           } else if (brws.version == 7) {
			   gIsIE7 = true;
		   } else if (brws.version == 6) {
			   gIsIE6 = true;
		   }
		}
		if (brws.mac){
			gIsMac = true;
		} else if (brws.bb) {
			gIsBlackBerry = true;
		}
		if (brws.isMobile) {
			gIsMobile = true;
		}
		if (brws.bb && !brws.operaMini && brws.supported == false) {
			gUnsupported = true;
		}
	} catch(er) {
		gIsIE = true;
		gIsIE7 = true;
	}
}
function addAfterRefresh(jsCode){
    if (!jsCode || jsCode == '') {
        return;
    }
    if (document.detailform.hAfterRefresh) {
        jsCode = document.detailform.hAfterRefresh.value + ";" + jsCode;
        document.detailform.hAfterRefresh.value = jsCode;
    } else {
        $(document.detailform).append('<input type="hidden" id="hAfterRefresh" name="hAfterRefresh" value="' + jsCode + '" />');
    }
}
function toggleQuickSystems(){
    $('#desktop_quickSystemsWrap div.desktopWidgetContent').slideToggle(200);
}
function setDesktopHeights(){
    var windowHeight = $(window).height();
    var headHeight = $('#pageHeaderWrap').height();
    var footerHeight = $('#pageFooterWrap').height();
    var desktopWrap = $('#desktopWrap');
    var tmpHeight;
    var diff = 0;
    var holdHeight = 0;
    var desktopWrapHeight;
    var $desktopColumn;
    var rResizeWidgets = [
         $('#desktop_recentprogramsWrap')
        ,$('#desktop_districtNews')
        ,$('#desktop_favoritesWrap')
    ];
    desktopWrapHeight = windowHeight - headHeight - footerHeight - 15;

    if (rResizeWidgets[0].length == 0) {
        tmpHeight = $('#MainContainer').height();
        if (desktopWrapHeight < (tmpHeight + 10)) {
            desktopWrapHeight = tmpHeight + 10;
        }
        desktopWrap.css('height', (desktopWrapHeight + 0) + 'px');
    } else {
        desktopWrap.css('height', desktopWrapHeight + 'px');
        for (var i = 0; i < rResizeWidgets.length; i++) {
            tmpHeight = 0;
            $desktopColumn = rResizeWidgets[i].closest('div.desktopColumn');
            $('div.desktopWidgetWrap', $desktopColumn).each(function(){
                if (this != rResizeWidgets[i].get(0)){
                   tmpHeight += $(this).height() + parseInt($(this).css('margin-bottom'), 10);
                }
            });
            if (rResizeWidgets[i].attr('id') == 'desktop_favoritesWrap') {
                tmpHeight += $('div.favFooter', rResizeWidgets[i]).height();
            }
            tmpHeight = desktopWrapHeight - tmpHeight - footerHeight - 10;
            if (tmpHeight < 100) {
                diff = 100 - tmpHeight;
                tmpHeight = 100;
                desktopWrap.css('height', (desktopWrap.height() + diff) + 'px');
            }
            $('.desktopWidgetContent', rResizeWidgets[i]).css('height',tmpHeight + 'px');
            if (diff > 0) {
                diff = $desktopColumn.height() - 32;
                if (diff > holdHeight) {
                    holdHeight = diff;
                }
            }
        }
        if (holdHeight > 0) {
            for (var i = 0; i < rResizeWidgets.length; i++) {
                tmpHeight = 0;
                $desktopColumn = rResizeWidgets[i].closest('div.desktopColumn');
                $('div.desktopWidgetWrap', $desktopColumn).each(function(){
                    if (this != rResizeWidgets[i].get(0)){
                       tmpHeight += $(this).height() + parseInt($(this).css('margin-bottom'), 10);
                    } else {
                        tmpHeight += $('#desktopWidgetHeader', rResizeWidgets[i]).height();
                    }
                });
                if (rResizeWidgets[i].attr('id') == 'desktop_favoritesWrap') {
                    tmpHeight += $('div.favFooter', rResizeWidgets[i]).height();
                }
                tmpHeight = holdHeight - tmpHeight;
                $('.desktopWidgetContent', rResizeWidgets[i]).css('height',tmpHeight + 'px');
            }
        }
    }
}
function initSkyTips(){
    window.skyTip = (function(){
        var skyTip = {};
        var skyTipWrap = $('<div class="skyTipWrap" role="tooltip"><div class="skyTip" role="tooltip"></div></div>');
        var skyTipDiv = skyTipWrap.find('.skyTip');

        skyTip.show = function (element, redraw) {
            clearTimer('hideSkyTip');
            setTimer('showSkyTip', function(){
                showSkyTip(element, redraw);
            }, 350);
        }
        skyTip.hide = function () {
            clearTimer('showSkyTip');
            setTimer('hideSkyTip', function(){
                hideSkyTip();
            }, 350);
        }
        skyTip.redraw = function() {
            skyTip.show(null, true);
        }

        $(document.body).on('keydown click', hideSkyTip);

        function isTipOnTheScreen(tipPosOffsets, pPos){
            var win = $(window);
            var tipOffset = skyTipDiv.offset();
            var scrollTop = win.scrollTop();
            var scrollLeft = win.scrollLeft();
            var vTop = tipOffset.top - scrollTop;
            var vRight = (win.width() + scrollLeft) - (tipOffset.left + skyTipDiv.outerWidth());
            var vBottom = (win.height() + scrollTop) - (tipOffset.top + skyTipDiv.outerHeight());
            var vLeft = tipOffset.left - scrollLeft;

            tipPosOffsets[pPos] = {'top' : vTop,
                                   'right' : vRight,
                                   'bottom': vBottom,
                                   'left' : vLeft,
                                   'score1' : (vTop < 0 ? 0 : 1) + (vRight < 0 ? 0 : 1) + (vBottom < 0 ? 0 : 1) + (vLeft < 0 ? 0 : 1),
                                   'score2' : (vTop < 0 ? Math.abs(vTop) : 0) + (vRight < 0 ? Math.abs(vRight) : 0) + (vBottom < 0 ? Math.abs(vBottom) : 0) + (vLeft < 0 ? Math.abs(vBottom) : 0)};

            return vTop > 0 &&    //top edge visible
                   vRight > 0 &&  //right edge visible
                   vBottom > 0 && //bottom edge visible
                   vLeft > 0;     //left edge visible

        }
        function hasText(pStr) {
            var rExp = new RegExp(String.fromCharCode(160), 'gim');
            var rExp2 = new RegExp("&nbsp;", 'gim');
            if (pStr.replace(rExp, '').replace(rExp2, '').replace(/ /g, '') == '') {
                return false;
            }
            return true;
        }
        function hideSkyTip(){
            if (skyTipDiv.hasClass('hasCloser')) {
                return;
            }
            skyTipWrap.fadeOut('fast');
        }
        function showSkyTip(element, redraw){
            var el;
            if (redraw) {
                el = skyTipDiv.data('element');
            } else {
                el = $(element);
                skyTipDiv.data('element', el);
            }
            if (el.length == 0) {
                return;
            }
            var tipText = el.attr('tooltip');
            if (!hasText(tipText)) {
                hideSkyTip();
                return;
            }

            var tipWidth = el.attr('tooltip-width') || 'auto';
            var useCloser = el.attr('tooltip-useCloser') || 'false';
            var tipMaxWidth = el.attr('tooltip-maxWidth') || '270px';
            var useArrows = true;
            if (tipWidth != 'auto') {
                tipMaxWidth = 'none';
            }
            var tipPositions = (el.attr('tooltip-position') || 'right').split(" ");
            if (tipPositions.length == 1 && el.attr('tooltip-reposition') != 'false') {
                switch (tipPositions[0]) {
                case 'right' :
                    tipPositions = ['right','left','top','bottom'];
                    break;
                case 'top' :
                    tipPositions = ['top','bottom','left','right'];
                    break;
                case 'bottom' :
                    tipPositions = ['bottom','top','left','right'];
                    break;
                case 'left' :
                    tipPositions = ['left','right','top','bottom'];
                    break;
                }
            }
            if (gIsIE7) {
                useArrows = false;
            }

            if (!redraw) {
                if (tipText.match('<img')) {
                    tipText = tipText.replace(/<img/gim, "<img onload='skyTip.redraw()'");
                }
                skyTipDiv
                    .html('<div style="overflow:hidden">' + tipText + (useCloser == 'true' ? "<div class='tipCloser'>&nbsp;</div>" : '') + '</div>');
                skyTipWrap.find('.tipArrow,.tipArrow2').remove();
                if (useArrows) {
                    skyTipWrap.append($('<div class="tipArrow"></div><div class="tipArrow2"></div>'));
                }
                if (tipText.match('<img')) {
                    return;
                }
            }

            skyTipWrap.removeClass('tipRight tipBottom tipLeft tipTop').css({top:'-999px',left:'-999px','margin' : ((el.css('margin-top') || "0") + " " + (el.css('margin-right') || "0") + " " + (el.css('margin-bottom') || "0") + " " + (el.css('margin-left') || "0"))});

            skyTipWrap.css({'visibility':'hidden'}).show();
            skyTipDiv
                .css({width:tipWidth,height:'auto','max-width':tipMaxWidth})
                .css({width:(skyTipDiv.width() + 1) + 'px',height:skyTipDiv.css('height')});

            if (useCloser == 'true') {
                skyTipDiv.addClass('hasCloser');
            }

            var elOffset = el.offset();
            var elHeight = el.outerHeight();
            var elWidth = el.outerWidth();
            var tipHeight = skyTipDiv.outerHeight();
            var tipWidth = skyTipDiv.outerWidth();
            var margin = 11;
            var tipPosOffsets = {};
            var tipShown = false;
            var vTempScore;
            var tipUsePosition;

            if (gIsIE7) {
                margin = 2;
            }
            function setPosition(pPos){
                switch (pPos) {
                case 'right' :
                    skyTipWrap.css({
                      'top' : elOffset.top + (elHeight / 2) - (tipHeight / 2) + 'px',
                      'left' : elOffset.left + elWidth + margin + 'px'
                    });
                    break;
                case 'bottom' :
                    skyTipWrap.css({
                      'top' : elOffset.top + elHeight + margin + 'px',
                      'left' : elOffset.left + (elWidth / 2) - (tipWidth / 2) + 'px'
                    });
                    break;
                case 'left' :
                    skyTipWrap.css({
                      'top' : elOffset.top + (elHeight / 2) - (tipHeight / 2) + 'px',
                      'left' : elOffset.left - margin - tipWidth + 'px'
                    });
                    break;
                case 'top' :
                    skyTipWrap.css({
                      'top' : elOffset.top - margin - tipHeight + 'px',
                      'left' : elOffset.left + (elWidth / 2) - (tipWidth / 2) + 'px'
                    });
                    break;
                }
            }
            for (var i = 0; i < tipPositions.length; i++) {
                setPosition(tipPositions[i]);
                if (isTipOnTheScreen(tipPosOffsets, tipPositions[i])) {
                    tipShown = true;
                    skyTipWrap.addClass(tipPositions[i] == 'top' ? 'tipTop' : tipPositions[i] == 'bottom' ? 'tipBottom' : tipPositions[i] == 'left' ? 'tipLeft' : 'tipRight');
                    break;
                }
            }
            if (!tipShown) {
                vTempScore = 0;
                for (var i in tipPosOffsets) {
                    if (tipPosOffsets[i].score1 > vTempScore) {
                        vTempScore = tipPosOffsets[i].score1;
                        tipUsePosition = i;
                    } else if (tipPosOffsets[i].score1 == vTempScore && tipPosOffsets[tipUsePosition] && tipPosOffsets[i].score2 < tipPosOffsets[tipUsePosition].score2) {
                        tipUsePosition = i;
                    }
                }
                if (vTempScore > 0) {
                    setPosition(tipUsePosition);
                    skyTipWrap.addClass(tipUsePosition == 'top' ? 'tipTop' : tipUsePosition == 'bottom' ? 'tipBottom' : tipUsePosition == 'left' ? 'tipLeft' : 'tipRight');
                    if (tipPosOffsets[tipUsePosition].top < 0 || tipPosOffsets[tipUsePosition].bottom < 0) {
                        if (tipPosOffsets[tipUsePosition].top < 0) {
                            skyTipWrap.css({'margin-top' : (Math.abs(tipPosOffsets[tipUsePosition].top) + 10) + 'px'});
                        } else {
                            skyTipWrap.css({'margin-top' : '-' + (Math.abs(tipPosOffsets[tipUsePosition].bottom) + 10) + 'px'});
                        }
                    } else if (tipPosOffsets[tipUsePosition].left < 0 || tipPosOffsets[tipUsePosition].right < 0) {
                        if (tipPosOffsets[tipUsePosition].left < 0) {
                            skyTipWrap.css({'margin-left' : (Math.abs(tipPosOffsets[tipUsePosition].left) + 10) + 'px'});
                        } else {
                            skyTipWrap.css({'margin-left' : ('-' + (Math.abs(tipPosOffsets[tipUsePosition].right) + 10) + 'px')});
                        }
                    }
                    skyTipWrap.find('.tipArrow,.tipArrow2').remove();
                }
            }
            if (redraw && skyTipWrap.css('visibility') != 'hidden') {
                skyTipWrap.show().css({
                    'visibility':'visible',
                    'opacity' : 1
                });
            } else {
                skyTipWrap.hide().css({
                    'visibility':'visible'
                }).fadeTo("normal", 1);
            }
        }
        $(document.body).append(skyTipWrap)
            .on('click', 'div.tipCloser', function(){
                skyTipWrap.fadeOut(function(){
                    skyTipDiv.removeClass('hasCloser');
                });
            }).hoverIntent({
                over: function(){skyTip.show(this);},
                out: function(){skyTip.hide();},
                selector: '[tooltip]',
                sensitivity: 6,
                interval: 250
            }).on('mouseover', '.skyTipWrap', function(){
                if (!skyTipWrap.hasClass('hasCloser')) {
                    skyTip.hide();
                }
            });

        if (window.gTipOnFocus) {
            $(document.body).on('focus', '[tooltip]', function(){
                skyTip.show(this);
            }).on('blur', '[tooltip]', function(){
                skyTip.hide();
            });
        }
        return skyTip;
    })();
}
function initTooltips2(){
    return;
}
function setPageTitleSize(){
    var pageTitle = $('#pageTitle');
    if (pageTitle.length > 0) {
        if (pageTitle.hasClass('noResize')) {
            return;
        }
        var controlBarRight = $('#controlBarRight');
        var titleWidth = pageTitle.width();
        var cbrWidth = controlBarRight.width();
        var windowWidth = $(window).width();
        var titleLeft = pageTitle.offset().left;
        var navControls = $('#navControls');

        if (navControls.length && pageTitle.hasClass('openText')) {
            titleLeft = navControls.offset().left || 0;
            titleLeft += navControls.width() || 0;
            titleWidth = windowWidth - titleLeft - cbrWidth - 25;
            pageTitle.css({'width': titleWidth + 'px','left':titleLeft + 'px'});
        } else {
            titleWidth = windowWidth - titleLeft - cbrWidth - 20;
            pageTitle.css({'width': titleWidth + 'px'});
        }
    }
}
function addAltText(){
    $('img:not([alt])').each(function(){
        var img = $(this);
        var filename = img.attr('src');
        var link, span, altText ='';
        if (!filename) {
            return;
        }
        filename = filename.substring(filename.lastIndexOf('/') + 1, filename.lastIndexOf('.')).toLowerCase();
        switch (filename) {
        case 'wttlog30' :
        case 'sephlp01' :
        case 'sephlp02' :
        case 'wepque01' : altText = 'Help Info'; break;
        case 'wbntre24' : altText = 'Info'; break;
        case 'wbntre12' : altText = 'Alerts'; break;
        case 'qnote002' : altText = 'Notes'; break;
        case 'mbscmt08' : altText = 'Alerts!'; break;
        }
        if (altText != '') {
            var link = img.closest('a');
            if (link.length > 0 && !hasAttribute(link, 'alt')) {
                link.attr('alt', altText);
            }
            img.attr('alt', altText);
            var span = img.wrap('<span />').parent();
            img.remove();
            img.appendTo(span);
        }
    });
}
function handleDocumentClick(e){
  try {
      if (gIsIE) {
         var e = window.event;
      }
      var bTest;
      if (!gIsIE){
         bTest = (e.pageX > parseInt(gCalendar.containerLayer.style.left,10) && e.pageX <  (parseInt(gCalendar.containerLayer.style.left,10)+125) && e.pageY < (parseInt(gCalendar.containerLayer.style.top,10)+125) && e.pageY > parseInt(gCalendar.containerLayer.style.top,10));
         if (!bTest && e.target.name != gCalendarImageName && e.target.name!='month'  && e.target.name!='year' && e.target.name!='calendar') {
             gCalendar.hide();
         }
      } else {
       bTest = (e.x > parseInt(gCalendar.containerLayer.style.left,10) && e.x <  (parseInt(gCalendar.containerLayer.style.left,10)+125) && e.y < (parseInt(gCalendar.containerLayer.style.top,10)+125) && e.y > parseInt(gCalendar.containerLayer.style.top,10));
       if (!bTest && e.srcElement.name!=gCalendarImageName && e.srcElement.name!='month' && e.srcElement.name!='year' && typeof(e.srcElement)!='object') {
           gCalendar.hide();
       }
      }
  }
  catch(er) {}
}
function doOnScroll(){
    if (gFilter == "") {
        if ($("#lockDiv").is(":visible")) {
            setLockDivSize();
        }
        if ($("#dMessage").is(":visible")) {
            centerFilter("dMessage");
        }
        if ($("#iFrameDialog").is(":visible")) {
            centerFilter("iFrameDialog");
        }
    }
}
function doOnResize(){
    if (gFilter == "") {
        if ($("#lockDiv").is(":visible")) {
            setLockDivSize();
        }
        if ($("#dMessage").is(":visible")) {
            centerFilter("dMessage");
        }
        if ($("#iFrameDialog").is(":visible")) {
            if (typeof (window.gIFDResize) == 'boolean' && gIFDResize) {
                setIframeDialogSize();
            }
            centerFilter("iFrameDialog");
        }
    }
    setPageTitleSize();
}
function checkClick(e){
	if (abortNavClose) {
		abortNavClose = false;
	} else {
		hideNavMenu($openNavMenu);
	}

	if (!e){
		var e = window.event;
	}

    var targetElement = getElementForEvent(e), targetClass = targetElement.className, targetId = targetElement.id;

	//hide open menus
	for (var i in menuInstances){
		if (menuInstances[i].state == 'open' && menuInstances[i].autoHide){
			menuInstances[i].hide();
		}
	}

	//hide entity list
	if ($('#entityArea').has(targetElement).length == 0 && $('#entityInput').filter(':visible').length > 0) {
        hideEntitySelect();
	}

    if (!targetElement) {
        return;
    }

    if (targetElement == document || (typeof targetClass == 'string' && !targetClass.match('letterLink'))) {
        $('.lookupLetterWrap').filter(':visible').each(function(){
            toggleLookupLetters(this.id.replace('lookupLetterWrap_', ''));
        });
    }
    if (targetElement == document || (typeof targetClass == 'string' && typeof targetId == 'string' && !targetClass.match('quickSystemHandle') && !targetId.match('quickSystemsHeader'))) {
        if ($('#desktop_quickSystemsWrap div.desktopWidgetContent').is(':visible')) {
            toggleQuickSystems();
        }
    }
}
function checkKey(e){
	if (!e){
		var e = window.event;
	}
	if (e.keyCode == 27){ //escape key
        //hide open menus
    	for (var i in menuInstances){
    		if (menuInstances[i].state == 'open'){
    			menuInstances[i].hide();
    		}
    	}
        closeQuickView();
		var $navMenu = $('#navMenuWrap div.navMenu').filter(':visible');
		if ($navMenu.length > 0){
			hideNavMenu($navMenu);
		}
		if ($('#menu_favorites').is(':visible')){
			getMenu('favorites').toggle();
		}
		if ($('#menu_navList').is(':visible')){
			getMenu('navList').toggle();
		}
        if ($('#lookupLetterWrap').is(':visible')){
			toggleLookupLetters();
		}
	}
}
function logout(){
    if (window.beforeLogout) {
        var vResult = beforeLogout();
        if (vResult == false){
            return;
        }
    }

    document.detailform.action = "qloggedout001.w?logout=yes";
    document.detailform.submit();
}
function checkDisableAnimations(){
    if (document.getElementById('disableAnimations')) {
        jQuery.fx.off = true;
    } else {
        if ($('#pageOuterWrap').hasClass("skyport")) {
            $(window).focus(function(){
                jQuery.fx.off = false;
            });
            $(window).blur(function(){
                jQuery.fx.off = true;
            });
        }
    }
}
function delegateEvents(){
    var $body = $(document.body);
    $body.on('keydown', 'input[datefield]', keyHandler)
         .on('focus', 'input:text', function(e){
             var el = e.target;
             if (el && !hasAttribute(el, "autocomplete")) {
                 el.setAttribute('autocomplete', 'off');
             }
         });

    if (window.gEnhancedTabbing) {
        $('#navMenuWrap').on('blur', 'div.menuList a, div.menuList select, div.menuList input', function(){
            var menu = $(this).closest('div.menuList');
            if (menu.find('a,select,input').filter(':visible').last().is(this)) {
                var menuInstances = menu.data('menuInstances');
                if (menuInstances) {
                    $(menuInstances.opener).focus()
                    menuInstances.hide();
                }
            }
        }).on('blur', 'div.navMenu a:visible:not([class*="favNewWindow"]):last', function(){
            var navMenu = $(this).closest('div.navMenu');
            if (navMenu.length) {
                var menuLink = $('#' + navMenu.attr('id').replace("navMenu_", "nav_"));
                if (menuLink.length) {
                    hideNavMenu(navMenu);
                    menuLink.focus();
                }
            }
        }).on('blur', 'div.setupMenu a:visible:last', function(){
            var setupWrap = $(this).closest('div.setupWrap:visible');
            if (setupWrap.length) {
                toggleSetupMenu(setupWrap.attr('id').replace('setupWrap_',''));
                setupWrap.find('a.setupMenuLink').focus();
            }
        });
        $body.on('click', 'a.groupLink', function(){
            var link = $(this);
            var linkNum = 0;
            var groupLinks = $body.find('a.groupLink');
            groupLinks.each(function(i,el){
                if (link.is(el)) {
                    linkNum = i + 1;
                    return false;
                }
            });
            if (linkNum > groupLinks.length - 1) {
                linkNum = 0;
            }
            groupLinks.eq(linkNum).focus();
        });
    }
}
function overrideCtrlN(){
	if (gIsMoz){
		addEvent(document, 'keypress', function(e){
			if (e.ctrlKey && e.charCode === 110 && document.getElementById("link_newWindow")) {
			   $('#link_newWindow').trigger('click');
			   e.returnValue=false;
			   if (e.stopPropagation) {
				   e.stopPropagation();
			   }
			   if (e.stopImmediatePropagation) {
				   e.stopImmediatePropagation();
			   }
			   if (e.preventDefault) {
				   e.preventDefault();
			   }
			   return false;
		   }
		});
	} else { /* for this to work in Chrome the use must launch in Application Mode (tools > create application shortcut) */
		addEvent(document, 'keydown', function(e){
			if (e.ctrlKey && e.keyCode === 78 && document.getElementById("link_newWindow")) {
			    if (gIsSafari) { /* use a timeout for safari to prevent the new window opening as a tab */
                    window.setTimeout(function(){$('#link_newWindow').trigger('click');}, 500);
                } else {
                    $('#link_newWindow').trigger('click');
                }

			   e.returnValue=false;
			   if (e.stopPropagation) {
				   e.stopPropagation();
			   }
			   if (e.stopImmediatePropagation) {
				   e.stopImmediatePropagation();
			   }
			   if (e.preventDefault) {
				   e.preventDefault();
			   }
			   return false;
		   }
		});
	}
}
function hideLoadingMessages(){
    hideLoadingMsg();
    if (browses == "" || $('#browseTable').length == 0) {
        hideWaitMessage();
    }
}
function doOnUnload(){
    abortHttpRequest(true);
    gXmlHTTPObjects = null;
    gCodePopup = null;
    window.detailform = null;
    Calendar = null;
    $openNavMenu = null;
    gNotifyMessage = null;
    menuInstances = null;
    MenuObject = null;
    gMoveObj = null;
    gResizeCell = null;
    gQVdivs = null;
}
function doOnReady(){
    if (document.detailform) {
        window.detailform = document.detailform;
        document.detailform.action = window.location.href;
    }

    /* add timestamp to all jquey calls */
    $.ajaxSetup({beforeSend:function(){
        $.ajaxSetup({data:{'fwtimestamp':(new Date().getTime())}});
    }});

    isDOMReady = true;

    // in IE, body onKeyDown does not always capture keyDown events - they can occur outside of the body
    document.body.onkeydown = function(){} // <body onKeyDown='documentKeyPressed(event)' is in pretty much every program (not in an include)
    addEvent(document, 'keydown', documentKeyPressed);

    checkDisableAnimations();
    selectCurrentMenu();
    initTabs();
	overrideCtrlN();
    fixIEFieldsets();

    if (gIsIE7) {
        $(document.body).addClass('ie7');
    } else if (gIsIE8) {
        $(document.body).addClass('ie8');
    }

	if (brws.touchDevice) {
        $(document.body).addClass('touchDevice');
    }

	$('#mainNavBar').click(function(){
		abortNavClose = true;
	});
    if (document.getElementById("tree1")) {
        compensateBGSize();
        addEvent(window, "resize", compensateBGSize);
    }
    if (document.getElementById("hAfterRefresh")) {
        eval(document.getElementById("hAfterRefresh").value);
        $('#hAfterRefresh').remove();
    }
    if (!$('#pageOuterWrap').hasClass('mobile')) {
        document.body.style.backgroundColor = '#FAFAFA';
    }
    addAltText();
    initButtonHotKeys();
    initEelWatch();
    loadPrivateData();
    initColorPickers();
    $('#menu_navList a br').replaceWith('&nbsp;');
    if (gIsIE7) {
        reflowPage();
    }
    if (gIsIE8 && document.getElementById("sFilterList")) {
        addEvent(document.getElementById("sFilterList"), 'scroll', reflowPage);
    }

    (function(){
        var vControlBarBackButton = $('#ControlBarBackButton');
        if (!vControlBarBackButton.length) {
            return;
        }
        $('.button').each(function(){
            var vButton = $(this);
            if (vButton.parent().is(vControlBarBackButton)) {
                return;
            }
            if (vButton.text().trim().toLowerCase() == 'back' && vButton.attr('id').indexOf("bhideFilter") != 0) {
                $('#controlBarRight').removeClass('hasBackButton');
                vControlBarBackButton.remove();
                return false;
            }
        });
    })()

    removeLoadingClasses();
    hideLoadingMessages();
    delegateEvents();
    window.setTimeout(initSkyTips, 200); //use timeout to prevent tooltips from showing on the focus element when page first loads
    $(document.body).on('blur', '.revalidateEel', function(){
        if (!gOpening) {
            var eel = $($(this).removeClass('revalidateEel').data('revalidateEel'));
            if (eel.length && eel.val().length) {
                eel.focus()
            }
        }
    });

    //Release Notifications
    try {
        if (window.gNotificationsJSON) {
            for (var i = 0; i < gNotificationsJSON.length; i++) {

                var buttons = "",url = "";

                if (gNotificationsJSON[i].URL != "") {
                    url = '<br /><br /><a href="' + gNotificationsJSON[i].URL + '" class="button" target="_blank" style="width:120px;margin:auto;">More Information</a>';
                }

                buttons = "<br />" +
                          "<table style='margin:auto;'>" +
                              "<tr>" +
                                  "<td>" +
                                      "<a class='button' data-notifid='" + gNotificationsJSON[i].NoteId + "' data-notiftype='" + gNotificationsJSON[i].NoteType + "' tabIndex='-1' href='javascript:void(0);' onclick='skyNotif(this,\"remindNotification\");' style='width:120px;'>Remind Me Tomorrow</a>" +
                                  "</td>" +
                                  "<td>" +
                                      "<a class='button' data-notifid='" + gNotificationsJSON[i].NoteId + "' data-notiftype='" + gNotificationsJSON[i].NoteType + "' tabIndex='-1' href='javascript:void(0);' onclick='skyNotif(this,\"dismissNotification\");'>Dismiss</a>" +
                                  "</td>" +
                              "</tr>" +
                          "</table>";

                $("#brLoading").remove();
                message(gNotificationsJSON[i].Desc + url + buttons, gNotificationsJSON[i].Title, 100000000);
            }
        }
    }
    catch (e) {};

    $('#msgTitle').on('mousedown', function(pEvent){
            setMouseStart(pEvent,"dMessage");
        })
        .on('mouseup', function(pEvent){
            gFilter='';
        });

    $('#printMsgTitle').on('mousedown', function(pEvent){
            setMouseStart(pEvent,"dPrintMessage");
        })
        .on('mouseup', function(pEvent){
            gFilter='';
        });
}

function skyNotif(el,type)
{
    var el = $(el);

    $. ajax({
                url: 'qnotifhttp000.w',
                type: 'POST',
                data: {requestAction:'eel',codeType:type,notifid:el.data('notifid'),notiftype:el.data('notiftype'),nameid: $("#nameid").val()}
            }).always(function(data) {
                el.parents('div.ui-pnotify').remove();
            });
}

function aN(pProgram,pEnc,pWhereTo,pMenuId,pButtonID,pEntity,pHomePage,pOptions) {
    appNav(pProgram,pWhereTo,pMenuId,pButtonID,pEntity,pHomePage,pOptions,pEnc);
}
function oF(pProgram,pEnc,pWhereTo,pMenuId,pButtonId,pEntity,pHomePage) {
    if (pEnc==undefined) {
        pEnc = "";
    }
    openFavorite(pProgram,pWhereTo,pMenuId,pButtonId,pEntity,pHomePage,pEnc);
}
function oSF(pProgram,pEnc,pWhereTo,pMenuId,pButtonId,pEntity,pHomePage) {
    if (pEnc==undefined) {
        pEnc = "";
    }
    openSkyportFavorite(pProgram,pWhereTo,pMenuId,pButtonId,pEntity,pHomePage,pEnc);
}
function printFormFromTab(pRowid){
    var editrecord, vMaintOption, action, target;

    if (!($('#printFrame').length > 0)) {
        $('body').append('<iframe id="printFrame" name="printFrame" src="" style="display:none;"></iframe>');
        $('#printFrame').load(function(){
            var vPrintParams = document.getElementById('printFrame').contentWindow.printForm(true);
            addToQueue(vPrintParams[0], vPrintParams[1], vPrintParams[2], vPrintParams[3], vPrintParams[4]);
        });
    }

    editrecord = document.getElementById("editrecord").value;
    vMaintOption = document.getElementById("vMaintOption").value;
    action = document.detailform.action;
    target = document.detailform.target;

    document.getElementById("editrecord").value = pRowid;
    document.getElementById("vMaintOption").value = "editClientDataUDF"; // same as pAction in pageRedirect()
    document.detailform.action = "qqudfedit007.w";
    document.detailform.target = "printFrame";
    document.detailform.submit();

    document.getElementById("editrecord").value = editrecord;
    document.getElementById("vMaintOption").value = vMaintOption;
    document.detailform.action = action;
    document.detailform.target = target;
}

if (gIsChrome) {
    var gChromeIsResized = false;
    var fwChromeResize = function() {
        if (gChromeIsResized === false) {
            gChromeIsResized = true;
            window.resizeTo(window.outerWidth, window.outerHeight + 1);
        }
    };
    (function(proxied) {
      window.alert = function() {
        fwChromeResize();
        return proxied.apply(this, arguments);
      };
    })(window.alert);
    (function(proxied) {
      window.confirm = function() {
        fwChromeResize();
        return proxied.apply(this, arguments);
      };
    })(window.confirm);
    (function(proxied) {
        window.prompt = function() {
        fwChromeResize();
        return proxied.apply(this, arguments);
     };
    })(window.prompt);
}

function checkboxBeforeSortColumn() {
    var td;
    var tbody = $('div.BrowseDiv > table > tbody');
    
    tbody.find('input[type=checkbox]').each(function () { // go through all checkboxes in browse table
        gFwBrowseCheckboxes[this.id] = this.checked; // Add checkbox id as property to gFwBrowseCheckboxes object with value as whether or not it is checked
        
        if (!td) { // only do this on the first checkbox
            td = $(this).closest('td'); 
            
            if (td.length > 0) {
                var checkboxIndex = td.closest("tr").children().index(td) + 1; // get column number that has checkboxes
                var checked = [], unchecked = [];

                for (var i=1; i<=vDataBrowserIndex[checkboxIndex].length; ++i) { // get records in order by default sort value (delrow) and put into separate checked/unchecked arrays
                    var tr = tbody.find('tr[delrow=' + i + ']'); 
                    var checkbox = tr.find('input[type=checkbox]');
                
                    if (checkbox.prop("checked")) { 
                        checked.push(i);
                    }
                    else { 
                        unchecked.push(i);
                    }  
                }
                                                
                $.merge( checked, unchecked ); // merge unchecked array into checked array so checked ones are first and sorting works correctly. 
                vDataBrowserIndex[checkboxIndex] = checked; // update sorting for checkbox column
            }
        }
    });
}

function checkboxAfterSortColumn() {
    for (var i in gFwBrowseCheckboxes) { // check/uncheck checkboxes after browse sort based on values in gFwBrowseCheckboxes object
        document.getElementById(i).checked = gFwBrowseCheckboxes[i];
    }
}

addEvent(document, 'keyup', checkKeyUp);
addEvent(document, "mousemove", trackMouse); //Must be here for drag and drop to work properly for all programs
addEvent(window, "scroll", doOnScroll);
addEvent(window, "resize", doOnResize);
addEvent(document, "mousedown", processClick, false);
addEvent(document, "mouseup", processClickUp, false);
addEvent(window, "focus", processClick, false);
addEvent(window, "beforeunload", detectClose);
addEvent(window, "unload", doOnUnload);
addEvent(document, 'click', checkClick);
addEvent(window, "load", setPageTitleSize);

if (!Array.indexOf) {
    Array.prototype.indexOf = function (obj) {
        for (var i = 0; i < this.length; i++) {
            if (this[i] == obj) {
                return i;
            }
        }
        return -1;
    };
}
(function () {
    var optimize = {};

    /******** Optimization configuration. Modify only the configuration **********/
    optimize.config = {
        "css": {
            "bundles": {
                "init": [
                    "/resources/bootstrap-3.4.1/css/bootstrap.min.css",
                    "/resources/bootstrap-notify/css/bootstrap-notify.css", // bootstrap nofify, wallpaper, avatar, icon picker
                    "/css/style.css", // old style move it into less
                    "/resources/bootstrap/css/bootstrap-mod.css", // bootstrap mod
                    "/resources/lightbox/themes/default/jquery.lightbox.css", // jquery lightbox, dunno where it is used
                    "/resources/classlinkui/css/tooltipbox.css", // tooltip
                    "/resources/classlinkui/css/lightbox.css", // lightbox
                    "/css/layout.css", // old layout, move this to less layout
                    "/resources/fullcalendar/fullcalendar.css", // cal
                    "/resources/fullcalendar/bootstrap-fullcalendar.css", // cal
                    "/resources/cfpicker/base/css/base-ui.css", // picker
                    "/lib/cfpicker/css/cloudfilepicker.css", // picker
                    "/resources/bootstrap/css/bootstrap-datetimepicker.min.css",
                    "/resources/bootstrap/css/DT_bootstrap.css",
                    "/resources/bootstrap/css/colorpicker.css",
                    "/resources/bootstrap/css/bootstrapSwitch.css",
                    "/resources/fancybox/jquery.fancybox.css",
                    "/resources/guidedtour/bootstrap-tour.min.css",
                    "/js/lib/plan/plan.min.css"
                ],
                "admin/init": [
                    '/admin/resources/jquery-ui/jquery-ui-1.10.1.custom.min.css',
                    '/admin/resources/fullcalendar/fullcalendar.css',
                    '/admin/resources/pace/pace-theme-flash.css',
                    '/admin/resources/gritter/css/jquery.gritter.css',
                    '/admin/resources/bootstrap-datepicker/css/datepicker.css',
                    '/admin/resources/jquery-datatable/css/jquery.dataTables.css',
                    '/admin/resources/jquery-datatable/extra/css/TableTools.css',
                    '/admin/resources/jquery-ricksaw-chart/css/rickshaw.css',
                    '/admin/resources/jquery-morris-chart/css/morris.css',
                    '/admin/resources/jquery-slider/css/jquery.sidr.light.css',
                    '/admin/resources/bootstrap-select2/select2.css',
                    '/admin/resources/jquery-multiple-select/css/bootstrap-multiselect.css',
                    '/admin/resources/jquery-jvectormap/css/jquery-jvectormap-1.2.2.css',
                    '/admin/resources/boostrap-checkbox/css/bootstrap-checkbox.css',
                    '/admin/resources/boostrapv3/css/bootstrap.min.css',
                    '/admin/resources/boostrapv3/css/bootstrap-theme.min.css',
                    "/admin/resources/bootstrap-notify/css/bootstrap-notify.css", // bootstrap nofify, wallpaper, avatar, icon picker
                    '/admin/resources/bootstrap-switch3/css/bootstrap-switch.min.css',
                    '/admin/css/animate.min.css',
                    '/admin/css/style.css',
                    '/admin/css/responsive.css',
                    '/admin/css/custom-icon-set.css',
                    '/admin/resources/datatables-responsive/css/datatables.responsive.css'
                ],
                'login/init': [
                    //'/resources/bootstrap-3.1.1/css/bootstrap.min.css',
                    //'/resources/font-awesome-4.1.0/css/font-awesome.css',
                    //'/css/login/login.css',
                    '/css/login/modal-box.css'
                ]
            },
            "output": "mincss"
        },
        "js": {
            "bundles": {
                "init": [
                    '/resources/crypto_aes.js',
                    '/resources/jquery-3.5.1.min.js',
                    '/resources/jquery-ui-1.12.1/jquery-ui.js',
                    //'/lib/crossrider.js',
                    //'/resources/modernizr/modernizr.min.js',
                    //'/resources/deployjava/deployJava.min.js',
                    '/resources/jQuery.browser.mobile.detection.min.js',
                    '/resources/backbone/underscore-min.js',
                    '/resources/backbone/backbone-min.js',
                    '/resources/backbone/backbone-mod.js',
                    '/resources/backbone.marionette/backbone.marionette.min.js',
                    '/resources/backbone.marionette/backbone.marionette.mod.js',
                    '/resources/async.js',
                    '/resources/require/plugins/text.js',
                    '/js/lib/cssloader.js',
                    '/resources/i18next/i18next-1.7.1.js',
                    '/resources/json-js/json2.js',
                    '/resources/contextmenu/context.js',
                    '/js/utils.js',
                    '/js/lib/dates.js',
                    '/resources/bootstrap/js/jquery.dataTables.js',
                    '/resources/classlinkui/js/tooltipbox.js',
                    '/resources/classlinkui/js/lightbox.js',
                    '/resources/moment.full.min.js',
                    '/resources/moment.full.mod.js',
                    '/js/iconpicker.js',
                    '/resources/lightbox/jquery.lightbox.min.js',
                    '/js/models/Session.js',
                    '/js/models/discuss/Class.js',
                    '/js/models/notes/notes.js',
                    '/js/views/notes/notespanel.js',
                    '/js/models/nav/Notification.js',
                    '/js/views/nav/notification.js',
                    '/js/views/notes/notesnav.js',
                    '/js/views/header.js',
                    '/js/views/common.js',
                    '/js/views/menuclasses.js',
                    '/resources/holder/holder.js',
                    '/resources/bootstrap-3.4.1/js/bootstrap.min.js',
                    '/resources/fancybox/jquery.fancybox.pack.js',
                    '/resources/fancybox/helpers/jquery.fancybox-media.js',
                    '/resources/scrollintoview.js',
                    '/resources/bootstrap/js/bootstrap-datetimepicker.min.js',
                    '/resources/bootstrap/js/bootstrap-colorpicker.js',
                    '/resources/bootstrap/js/bootstrapSwitch.js',
                    '/resources/backbone/bootbox.min.js',
                    '/resources/guidedtour/bootstrap-tour.min.js',
                    '/resources/guidedtour/launchpadtour.js',
                    '/resources/bootstrap/js/jquery.dataTables.js',
                    '/resources/bootstrap/js/dataTables-init.js',
                    '/resources/bootstrap/js/DT_bootstrap.js',
                    '/resources/typeahead.js/typeahead.jquery.js',
                    '/js/lib/plan/plan.ui.js',
                    '/resources/jquery.linkify-1.0-min.js',
                    '/js/models/UserStorage.js',
                    '/js/views/user/usersettings.js',
                    '/js/views/user/generalsettings.js',
                    '/js/models/user/GeneralSetting.js',
                    '/js/models/user/Language.js',
                    '/js/views/user/desktopsettings.js',
                    '/js/models/user/DesktopSetting.js',
                    '/js/models/user/Theme.js',
                    '/js/views/user/signinwithsettings.js',
                    '/js/models/user/SigninWith.js',
                    '/js/views/user/passwordlocker.js',
                    '/js/models/user/PasswordLocker.js',
                    '/js/views/user/resetpassword.js',
                    '/js/models/user/PasswordSetting.js',
                    '/js/views/user/passwordrecovery.js',
                    '/js/models/user/PasswordRecovery.js',
                    '/js/views/user/twofrmauth.js',
                    '/js/models/user/TwoFrmAuth.js',
                    '/js/views/user/editpasswordlocker.js',
                    '/js/models/user/EditPasswordLocker.js',
                    '/js/views/user/ldappassword.js',
                    '/js/views/picker/header.js',
                    '/js/views/picker/iconlist.js',
                    '/js/views/picker/requestform.js',
                    '/js/models/picker/Icon.js',
                    '/js/models/picker/RequestForm.js',
                    '/js/views/picker/avatarlist.js',
                    '/js/views/picker/avatarform.js',
                    '/js/models/picker/Avatar.js',
                    '/js/models/picker/AvatarForm.js',
                    '/js/lib/jquery.form.js',
                    '/js/lib/jcrop/js/jquery.Jcrop.min.js',
                    '/js/views/picker/wallpaperlist.js',
                    '/js/views/picker/wallpaperform.js',
                    '/js/models/picker/Wallpaper.js',
                    '/js/models/picker/WallpaperForm.js',
                    '/resources/bootstrap-notify/js/bootstrap-notify.js',
                    '/js/views/help/help.js',
                    '/js/models/Help.js',
                    '/js/groupuserpicker.js',
                    '/resources/jquery-idle/jquery.idle.min.js',
					'/js/views/oauth/myapprovedapp.js',
                    '/js/views/phonebook/phonebookview.js',
                    '/js/models/phonebook/PhoneBook.js',
                    '/js/views/user/manageparentstudents.js',
                    'js/views/user/security.js',
                    '/js/views/user/autolaunch.js',
                    '/js/models/user/AutoLaunch.js',
                    '/lib/timeout.js',
                    '/resources/duo/Duo-Web-v2.js'
                ],
                "admin/init":[
                    '/admin/resources/jquery-1.8.3.min.js',
                    //'/admin/resources/jquery-block-ui/jqueryblockui.js',
                    '/admin/resources/breakpoints.js',
                    '/admin/resources/jquery-unveil/jquery.unveil.min.js',
                    '/admin/resources/jquery-slider/jquery.sidr.min.js',
                    '/admin/resources/jquery-slimscroll/jquery.slimscroll.min.js',
                    '/admin/resources/pace/pace.min.js',
                    '/admin/resources/jquery-ui/jquery-ui-1.10.1.js',
                    '/admin/resources/backbone/underscore-min.js',
                    '/admin/resources/backbone/backbone-min.js',
                    '/admin/resources/backbone.marionette/backbone.marionette.min.js',
                    '/admin/resources/backbone.marionette/backbone.marionette.mod.js',
                    '/js/lib/cssloader.js',
                    '/admin/resources/backbone/bootbox.min.js',
                    '/admin/resources/bootstrap/js/bootstrap.min.js',
                    '/admin/resources/bootstrap-select2/select2.min.js',
                    '/admin/resources/jquery-multiple-select/js/bootstrap-multiselect.js',
                    '/resources/jquery-idle/jquery.idle.min.js',
                    '/resources/typeahead.js/typeahead.jquery.js',
                    '/admin/js/views/header.js',
                    '/admin/js/views/sidebar.js',
                    '/admin/js/views/common.js',
                    '/admin/resources/i18next/i18next-1.7.1.js',
                    '/admin/resources/async.js',
                    '/admin/resources/require/plugins/text.js',
                    '/admin/js/utils.js',
                    '/admin/resources/moment.full.min.js',
                    '/admin/resources/moment.full.mod.js',
                    '/js/iconpicker.js',
                    '/admin/resources/jquery-numberAnimate/jquery.animateNumbers.js',
                    '/admin/js/core.js',
                    '/admin/resources/bootstrap-switch3/js/bootstrap-switch.min.js',
                    '/admin/resources/jquery-datatable/js/jquery.dataTables.js',
                    '/admin/resources/jquery-datatable/extra/js/TableTools.min.js',
                    '/admin/resources/jquery-datatable/extra/js/TableToolsExt.js',
                    '/admin/resources/datatables-responsive/js/datatables.responsive.js',
                    //'/admin/resources/datatables-responsive/js/lodash.min.js',
                    '/admin/resources/bootstrap-switch3/js/bootstrap-switch.min.js',
                    '/admin/resources/pace/pace.min.js',
                    // '/admin/js/datatables.js',
                    '/admin/resources/bootstrap-colorpicker/js/bootstrap-colorpicker-v3.js',
                    '/admin/resources/jquery-validation/js/jquery.validate.min.js',
                    '/admin/resources/bootstrap-notify/js/bootstrap-notify.js',
                    '/admin/js/views/assignapplication/assignapplicationview.js',
                    '/admin/js/sso-variablepicker.js',
                    '/lib/timeout.js'
                ],
                "login/init": [
                    '/mintpl/all.js',
                    '/resources/jquery-3.5.1.min.js',
                    '/resources/jquery-ui-1.12.1/jquery-ui.js',
                    '/resources/backbone/underscore-min.js',
                    '/resources/backbone/backbone-min.js',
                    '/resources/backbone/backbone-mod.js',
                    '/resources/backbone.marionette/backbone.marionette.min.js',
                    '/resources/backbone.marionette/backbone.marionette.mod.js',
                    '/js/lib/cssloader.js',
                    '/resources/i18next/i18next-1.7.1.js',
                    '/js/utils.js',
                    '/resources/webauthn-helper.js',
                    '/resources/moment.full.min.js',
                    '/resources/moment.full.mod.js',
                    '/resources/bootstrap-3.4.1/js/bootstrap.min.js',
                    '/resources/client-detection/jquery.client/jquery.client.js',
                    '/resources/client-detection/detectmobilebrowser.js',
                    '/js/views/login/login.js',
                    '/js/views/login/twoformauth.js',
                    '/js/views/login/twoformauthsetup.js',
                    '/js/models/login/ChangePassword.js',
                    '/js/models/login/Login.js',
                    '/js/views/login/settwoformauthdevice.js'
                ],
                "login/generic":[
                    '/resources/jquery-3.5.1.min.js',
                    '/resources/jquery-ui-1.12.1/jquery-ui.js',
                    '/resources/backbone/underscore-min.js',
                    '/resources/backbone/backbone-min.js',
                    '/resources/backbone/backbone-mod.js',
                    '/resources/backbone.marionette/backbone.marionette.min.js',
                    '/resources/backbone.marionette/backbone.marionette.mod.js',
                    '/resources/i18next/i18next-1.7.1.js',
                    '/js/utils.js',
                    '/resources/bootstrap-3.4.1/js/bootstrap.min.js',
                    '/js/views/login/logingeneric.js'
                ],
                "admin/dashboard": '/admin/js/views/dashboard/dashboard.js',
				"admin/settings": [
                    '/admin/resources/bootstrap-colorpicker/js/bootstrap-colorpicker-v3.js',
                    '/admin/js/views/settings/customLoginPage.js',
                    '/admin/js/models/settings/CustomLoginPage.js',
                    '/admin/js/views/settings/customlinks.js',
                    '/admin/js/models/settings/CustomLinks.js',
                    '/admin/js/views/settings/democontentmanagement.js',
                    '/admin/js/models/settings/DemoContentManagement.js',
                    '/admin/js/views/settings/invitecodemanagement.js',
                    '/admin/js/models/settings/InviteCodeManagement.js',
                    '/admin/js/views/settings/settingsecurity.js',
                    '/admin/js/models/settings/SettingSecurity.js' ,
                    '/admin/js/views/settings/signinwith.js',
                    '/admin/js/models/settings/SigninWith.js',
                    '/admin/js/views/settings/docsmanagement.js',
                    '/admin/js/models/settings/DocsManagement.js',
                    '/admin/js/views/settings/impersonatesetting.js',
                    '/admin/js/models/settings/ImpersonateSetting.js'
                ],
                "admin/states": [
                    '/admin/js/views/state/state.js',
                    '/admin/js/models/state/State.js'
                ],
                'admin/buildings': [
                    '/admin/js/views/building/buildinggrid.js',
                    '/admin/js/models/building/Building.js',
                    '/admin/js/views/building/building.js',
                    '/admin/js/models/building/Html5ClientVersion.js',
                    '/admin/js/views/building/html5clientversion.js'
                ],
                'admin/assignapplication': '/admin/js/views/assignapplication/assignapplicationview.js',
                "admin/applications": [
                    '/admin/js/sso-variablepicker.js',
                    '/admin/js/views/application/application.js',
                    '/admin/js/models/application/Application.js',
                    '/admin/js/views/application/appprofile.js',
                    '/admin/js/models/application/ApplicationProfile.js',
                    '/admin/js/views/application/appgroup.js',
                    '/admin/js/views/application/ssoapp.js',
                    '/admin/js/models/application/ApplicationGroup.js',
                    '/admin/js/views/application/appuser.js',
                    '/admin/js/views/application/appconnector.js',
                    '/admin/js/models/application/ApplicationConnector.js',
                    '/admin/js/models/application/InternalProxy.js',
                    '/admin/js/views/application/appinternalproxy.js',
                    '/admin/js/models/application/ApplicationUser.js',
                    '/admin/js/models/application/ApplicationTenant.js',
                    '/admin/js/views/application/ssoapp.js',
                    '/admin/js/views/application/tenantwiseapplication.js',
                    '/admin/js/models/application/TenantWiseApplication.js',
                    '/admin/js/views/application/assignapp.js',
                    '/admin/js/models/application/AssignApp.js',
                    '/admin/js/views/application/appcategory.js',
                    '/admin/js/models/application/ApplicationCategory.js',
                    '/admin/js/views/application/ssotype.js',
                    '/admin/js/models/application/SSOType.js',
                    '/admin/js/views/application/ssosignout.js',
                    '/admin/js/models/application/SSOSignOut.js',
                    '/admin/js/views/application/delegatepermission.js',
                    '/admin/js/views/application/customappconfig.js',
                    '/admin/js/models/application/CustomAppConfig.js',
                    '/admin/js/views/application/featuredapp.js',
                    '/admin/js/models/application/FeaturedApp.js'
                ],
                "admin/resourcelibrary": [
                    '/js/views/classapps/resourcelibrary.js',
                    '/js/views/classapps/reslibaddcustom.js',
                    '/js/views/classapps/reslibaddfolder.js',
                    '/js/views/classapps/reslibdetailview.js',
                    '/js/models/classapps/ResourceLibrary.js'
                ],
                "admin/picker": [
                    '/js/views/picker/header.js',
                    '/js/views/picker/iconlist.js',
                    '/js/views/picker/requestform.js',
                    '/js/models/picker/Icon.js',
                    '/js/models/picker/RequestForm.js',
                    '/js/views/picker/avatarlist.js',
                    '/js/views/picker/avatarform.js',
                    '/js/models/picker/Avatar.js',
                    '/js/models/picker/AvatarForm.js',
                    //'/js/lib/jquery.form.js',
                    //'/js/lib/jcrop/js/jquery.Jcrop.min.js',
                    '/js/views/picker/wallpaperlist.js',
                    '/js/views/picker/wallpaperform.js',
                    '/js/models/picker/Wallpaper.js',
                    '/js/models/picker/WallpaperForm.js',
                    '/js/models/picker/CustomLogoForm.js',
                    '/js/views/picker/customlogoform.js'
                ],
                'admin/developersapikey':[
                    '/admin/js/views/developersapikey/developersapikey.js',
                    '/admin/js/models/developersapikey/DevelopersApiKey.js',
                ],
                'admin/oauthdevelopers': '/admin/js/views/oauthdevelopers/oauthDevelopers.js',
                'admin/groups':[
                    '/admin/js/views/group/building.js',
                    '/admin/js/models/group/Building.js',
                    '/admin/js/models/group/Theme.js',
                    '/admin/js/models/group/AssignUser.js',
                    '/admin/js/views/group/group.js'
                ],
                'admin/tenantconfiguration': [
                    '/admin/js/views/tenantconfiguration/tenantconfiguration.js',
                    '/admin/js/models/tenantconfiguration/Tenantconfiguration.js',
                ], 
                'admin/managetemplates': [
                    '/admin/js/views/tenantconfiguration/tenantconfiguration.js',
                    '/admin/js/models/tenantconfiguration/Tenantconfiguration.js',
                ],
                'admin/tenants': [
                    '/admin/js/views/tenant/tenant.js',
                    '/admin/js/models/tenant/Tenant.js',
                    '/admin/js/models/language/Language.js',
                    '/admin/js/views/tenant/subscriptionlog.js',
                    '/admin/resources/jquery_jeditable/jquery.jeditable.js',
                    '/admin/resources/jquery_jeditable/custom/custom-input-bootstrap-datepicker.js'
                ], 
                'admin/master':[
                    '/admin/js/views/master/master.js',
                    '/admin/js/models/master/Master.js'
                ],
                'admin/myfiles': [
                    '/admin/js/views/myfiles/manageServices.js',
                    '/admin/js/views/myfiles/customNames.js',
                    '/admin/js/models/myfiles/CustomNames.js',
                    '/admin/js/views/myfiles/foldermapping.js',
                    '/admin/js/models/myfiles/FolderMapping.js',
                    '/admin/js/views/myfiles/foldermappinguser.js',
                    '/admin/js/models/myfiles/FolderMappingUser.js',
                    '/admin/js/views/myfiles/foldermappinggroup.js',
                    '/admin/js/models/myfiles/FolderMappingGroup.js',
                    '/admin/js/views/myfiles/migratemyfiles.js',
                    '/admin/js/models/myfiles/MigrateMyfiles.js',
					'/admin/js/views/myfiles/permissions.js',
                    '/admin/js/models/myfiles/Permissions.js',
                    '/admin/js/views/myfiles/emailrestriction.js',
                    '/admin/js/models/myfiles/EmailRestriction.js',                    
                ],
                'admin/classes': [
                    '/admin/js/views/class/class.js',
                    '/admin/js/models/class/Class.js',
                    '/admin/js/views/class/publicviewsettings.js',
                    '/admin/js/models/class/PublicViewSetting.js'
                ],
                'admin/users': [
                    '/admin/js/views/user/user.js',
                    '/admin/js/models/user/User.js',
                    '/admin/js/views/user/twoformauth.js',
                    '/admin/js/models/user/TwoFormAuth.js'
                ],
                'admin/reports':[
                    '/admin/resources/jqplot/excanvas.min.js',
                    '/admin/resources/jquery-flot/jquery.flot.min.js',
                    '/admin/resources/jquery-flot/jquery.flot.pie.js',
                    '/admin/resources/jquery-flot/jquery.flot.orderBars.js',
                    '/admin/resources/jquery-flot/jquery.flot.stack.js',
                    '/admin/resources/jquery-flot/jquery.flot.pie.js',
                    '/admin/resources/jquery-flot/jquery.flot.tooltip.js',
                    '/admin/resources/jquery-flot/jquery.flot.time.min.js',
                    '/admin/resources/jquery-flot/jquery.flot.axislabels.js',
                    '/admin/js/views/tenant/tenant.js',
                    '/admin/js/models/tenant/Tenant.js',
                    '/admin/js/views/state/state.js',
                    '/admin/js/models/state/State.js',
                    '/admin/js/views/reports/report.js',
                    '/admin/js/views/reports/dashboard.js',
                    '/admin/js/views/reports/loginreport.js',
                    '/admin/js/views/reports/emailreport.js',
                    '/admin/js/views/reports/appreport.js',
                    '/admin/js/views/reports/browserreport.js',
                    '/admin/js/models/reports/Report.js',
                    '/admin/js/views/reports/html5gatewayreport.js',
					'/admin/js/models/building/Building.js',
					'/admin/js/views/building/building.js',
                    '/admin/js/views/reports/aduserloginreport.js',
                    '/admin/js/models/group/Group.js',
                    '/admin/js/views/group/group.js'

                ],
                'admin/collaboration': [
                    '/admin/js/views/collaboration/collaboration.js',
                    '/admin/js/models/collaboration/Collaboration.js'
                ],
                'admin/fileassociation': [
                    '/admin/js/views/fileassociation/fileassociation.js',
                    '/admin/js/models/fileassociation/Fileassociation.js'
                ],
                "admin/parentportal": [
                    '/admin/js/views/parentportal/parentportal.js',
                    '/admin/js/models/parentportal/ParentPortal.js'
                ],
                "admin/signinwith": [
                    '/admin/js/views/signinwith/qrcode.js',
                    '/admin/js/models/signinwith/QrCode.js',
                    '/admin/js/views/signinwith/windowssetup.js',
                    '/admin/js/models/signinwith/WindowsSetup.js'
                ],
                "admin/applibrary": [
                    '/admin/js/views/applibrary/applibrary.js',
                    '/js/models/applibrary/AppLibrary.js'
                ],
                'admin/oauth2resource': '/admin/js/views/oauth2resource/oauth2resource.js',
                "dashboard": [
                    '/js/views/announcement/allannouncement.js',
                    '/js/views/announcement/announcement.js',
                    '/js/models/announcement/Announcement.js',
                    '/js/models/announcement/AnnouncementFileAttachment.js',
                    '/js/models/User.js',
                    '/js/models/dashboard/RecentActivity.js',
                    '/js/views/dashboard/dashboard.js',
                    '/resources/fullcalendar/fullcalendar.min.js',
                    '/js/modules/calendar/app.js',
                    '/js/modules/calendar/view.js',
                    '/js/modules/calendar/models.js',
                    '/resources/fullcalendar/gcal.js',
                    '/js/modules/calendar/controller.js'
                ],
                "class": [
                    '/js/views/allclasses/allclasses.js',
                    '/js/views/allclasses/schoolsessionyear.js',
                    '/js/views/allclasses/class.js',
                    '/js/views/allclasses/leftmenu.js',
                    '/js/models/class/Class.js',
                    '/js/models/class/SchoolSessionYear.js',
                    '/js/views/enrollclasses/enrollclasses.js',
                    '/js/models/class/Group.js',
                    '/js/models/class/Building.js',
                    '/js/views/class/main.js',
                    '/js/views/class/leftmenu.js',
                    '/js/models/discuss/DiscussSetting.js',
                    '/js/models/discuss/Comment.js',
                    '/js/models/discuss/CommentFileAttachment.js',
                    '/js/views/discuss/discuss.js',
                    '/js/views/discuss/discusssetting.js',
                    '/js/views/discuss/comment.js',
                    '/js/views/discuss/updatecomment.js',
                    '/js/views/discuss/replycomment.js',
                    '/js/models/lesson/Lesson.js',
                    '/js/views/lesson/lesson.js',
                    '/lib/poll/poll.js',
                    '/js/lib/jquery.nestable.js',
                    '/js/views/poll/poll.js',
                    '/js/models/discuss/Poll.js',
                    '/lib/whiteboard/whiteboard.js',
                    '/js/models/discuss/Whiteboard.js',
                    '/js/views/whiteboard/whiteboard.js',
                    '/lib/lesson/lesson.js',
                    '/js/views/classapps/main.js',
                    '/js/views/classapps/resourcelibrary.js',
                    '/js/views/classapps/reslibaddcustom.js',
                    '/js/views/classapps/reslibaddfolder.js',
                    '/js/views/comment/comment.js',
                    '/js/views/assignment/assignment.js',
                    '/js/models/assignment/Assignment.js',
                    '/lib/assignment/assignment.js',
                    '/js/views/class/class.js',
                    '/js/views/member/classassignedmembers.js',
                    '/js/views/class/classsettings.js',
                    '/js/models/member/ClassMember.js',
                    '/js/views/member/classmembers.js',
                    '/js/views/share/sharesettings.js',
                    '/js/views/share/sharedusers.js',
                    '/js/models/group/GroupMember.js',
                    '/js/views/group/groupmembers.js',
                    '/js/models/group/ClassGroup.js',
                    '/js/views/group/classgroup.js',
                    '/js/views/group/addclassgroup.js'
                ],
                "inbox": [
                    '/js/models/inbox/MailUser.js',
                    '/js/models/inbox/MailMaster.js',
                    '/js/models/inbox/MailDeleted.js',
                    '/js/models/inbox/ClassUsers.js',
                    '/js/views/inbox/mainview.js',
                    '/js/views/inbox/inboxlisting.js',
                    '/js/views/inbox/sentlisting.js',
                    '/js/views/inbox/deletedlisting.js',
                    '/js/views/inbox/compose.js',
                    '/js/views/inbox/forward.js',
                    '/js/views/inbox/composeselectusers.js',
                    '/js/views/inbox/singlemailmaster.js',
                    '/js/views/inbox/singlemail.js',
                    '/js/views/inbox/inboxsettings.js'
                ],
                "demos": [
                    '/js/views/demos/demo.js',
                    '/js/views/demos/momentjs.js',
                    '/js/views/demos/i18next.js',
                    '/js/views/demos/tooltip.js'
                ],
                "others": [
                    "/resources/cfpicker/assets/js/plupload/js/plupload.full.js",
                    "/resources/cfpicker/assets/js/dropboxsdk.js",
                    "/resources/cfpicker/base/js/base-ui.js",
                    "/js/lib/sax.js",
                    "/js/lib/xmldoc.js",
                    "/lib/cfpicker/js/cloudfilepicker.js"
                ],
                "myapps": [
                    '/js/models/myapps/Application.js',
                    '/js/views/myapps/application.js',
                    '/js/views/myapps/applicationfolder.js',
                    '/js/views/myapps/addedituserfolder.js'
                ],
                "login/resetpassword": [
                    '/js/views/resetpassword/resetpassword.js',
                    '/js/models/resetpassword/RecoveryOption.js',
                    '/js/models/resetpassword/RecoveryMessage.js',
                    '/js/models/resetpassword/RecoverySecretQuestions.js'
                ],
                "login/trial": [
                    '/js/views/trial/trial.js',
                    '/js/views/trial/hp_trial.js',
					'/js/models/trial/Hp_Trial.js',
                ],
                'admin/notification': [                                       
                    '/admin/resources/bootstrap-datepicker/js/bootstrap-datepicker.js',  
                    '/admin/js/views/notification/alertnotification.js',
                    '/admin/js/views/notification/alertnotificationgroup.js',
                    '/admin/js/views/notification/alertnotificationprofile.js',
                    '/admin/js/views/notification/alertnotificationtenant.js',
                    '/admin/js/views/notification/AlertNotification.js',                   
                ],
                'admin/oneroster': [
                    '/admin/js/models/oneroster/OneRoster.js',
                    '/admin/js/views/oneroster/oneroster.js',
                    '/admin/js/views/oneroster/apponeroster.js',
                    '/admin/js/views/oneroster/migrateoneroster.js',
                    '/admin/js/models/oneroster/MigrateOneRoster.js'                     
                ],
                'admin/notification': [
                    '/admin/js/models/notification/NotificationManagement.js',
                    '/admin/js/views/notification/notificationmanagement.js'                     
                ],
                'applibrary': [
                    '/js/models/classapps/ResourceLibrary.js',
                    '/js/views/applibrary/applibrary.js',
                    '/js/models/picker/Icon.js'                    
                ]
            },
            "output": "minjs"
        },
        "templates": {
            "bundles": {
                "init": [
                    'tpl/TwoFrmAuth/TwoFrmAuthSetupView.html',
                    'tpl/TwoFrmAuth/VerifyPhoneView.html',
                    'tpl/User/UnlinkPhoneView.html',
                    'tpl/TwoFrmAuth/TwoFrmAuthItemView.html',
                    'tpl/TwoFrmAuth/TwoFrmAuthImageItemView.html',
                    'tpl/TwoFrmAuth/TwoFrmAuthGoogleAuthenticatorItemView.html',
                    'tpl/TwoFrmAuth/TwoFrmAuthDuoPushItemView.html',
                    'tpl/TwoFrmAuth/TwoFrmAuthYubikeyItemView.html',
                    'tpl/Login/BrowserUpgradeView.html',
                    'tpl/Login/ChangePasswordView.html',
                    'tpl/Login/TwoformSetupView.html',
                    'tpl/Login/TwoFrmAuthItemView.html',
                    'tpl/Login/TwoFrmAuthImageItemView.html',
                    'tpl/Login/TwoFrmAuthGoogleAuthenticatorItemView.html',
                    'tpl/Login/TwoFrmAuthDuoPushItemView.html',
                    'tpl/Login/TwoFrmAuthYubikeyItemView.html',
                    'tpl/Login/TwoFrmAuthPinItemView.html',
                    'tpl/Notes/Panel.html',
                    'tpl/Notes/Nav.html',
                    'tpl/Nav/NotificationsView.html',
                    'tpl/Nav/NotificationChildView.html',
                    'tpl/Nav/ReadNotificationView.html',
                    'tpl/MenuClassListItemView.html',
                    'tpl/User/UserSettingsView.html',
                    'tpl/User/GeneralSettingsView.html',
                    'tpl/User/ResetPasswordView.html',
                    'tpl/User/DesktopSettingsView.html',
                    'tpl/User/DesktopThemeItemView.html',
                    'tpl/User/PasswordLockerView.html',
                    'tpl/User/PasswordLockerItemView.html',
                    'tpl/User/EditPasswordLockerView.html',
                    'tpl/User/EditPasswordLockerFieldView.html',
                    'tpl/User/ExtPasswordLockerView.html',
                    'tpl/User/SigninWithSettingsView.html',
                    'tpl/User/SigninWithItemView.html',
                    'tpl/User/LdapPasswordView.html',
                    'tpl/User/UserChangeProfileView.html',
                    'tpl/User/UserChangeProfileItemView.html',
                    'tpl/Help/ContactSupportView.html',
                    'tpl/Help/BrowserCheckView.html',
                    'tpl/Common/ExtensionPromptItemView.html',
                    'tpl/Common/ExpireLoginSessionView.html',
                    'tpl/Common/ExpireSessionView.html',
                    'tpl/PasswordRecovery/PasswordRecoverySetupView.html',
                    'tpl/PasswordRecovery/VerifyRecoveryPhoneView.html',
                    'tpl/PasswordRecovery/PhoneListItemView.html',
                    'tpl/PasswordRecovery/EmailListItemView.html',
                    'tpl/Oauth/MyApprovedAppView.html',
                    'tpl/Trial/ProvisioningInstantAccountView.html',
                    'tpl/Trial/HPProvisioningInstantAccountView.html',
                    'tpl/Common/PasswordRecoverySetupView.html',
					'tpl/Trial/HPTrialFormView.html',
                    'tpl/OneRoster/ClassGridView.html',
                    'tpl/OneRoster/ClassGridItemView.html',
                    'tpl/OneRoster/ClassListItemView.html',
                    'tpl/OneRoster/AppItemView.html',
                    'tpl/OneRoster/ErrorItemView.html',
                    'tpl/OneRoster/TeacherClassesView.html',
                    'tpl/OneRoster/ClassesQuickcardView.html',
                    'tpl/Common/HPTrialPasswordResetView.html',
                    'tpl/PhoneBook/PhoneBookItemView.html',
                    'tpl/PhoneBook/PhoneBookLeftMenuItemView.html',
                    'tpl/User/ManageParentStudentsView.html',
                    'tpl/User/AutoLaunchView.html',
                    'tpl/User/AutoLaunchItemView.html',
                    'tpl/User/SecurityView.html'
                ],
                "admin/init": [
                    'admin/tpl/Dashboard/DashboardView.html',
                    'admin/tpl/Picker/HeaderView.html',
                    'admin/tpl/Picker/RequestFormView.html',
                    'admin/tpl/Picker/AvatarFormView.html',
                    'admin/tpl/Picker/WallpaperFormView.html',
                    'admin/tpl/Picker/IconListItemView.html',
                    'admin/tpl/Picker/AvatarListItemView.html',
                    'admin/tpl/Picker/WallpaperListItemView.html',
                    'admin/tpl/Picker/CustomLogoFormView.html',
                    'admin/tpl/Common/UberModalView.html',
                    'admin/tpl/Common/ExpireSessionView.html',
                    'admin/tpl/AdminGridView.html',
                    'admin/tpl/AssignApplication/DelegateUserApplicationsView.html',
                    'admin/tpl/AssignApplication/GroupAssignApplicationView.html',
                    'admin/tpl/LPLiteRestrictedModalView.html'
                ],
                'admin/applications': [
                    'admin/tpl/Application/ApplicationView.html',
                    'admin/tpl/Application/ApplicationFolderView.html',
                    'admin/tpl/Application/AddEditAppFolderView.html',
                    'admin/tpl/Application/AssignApplicationFolderView.html',
                    'admin/tpl/Application/AddEditApplicationView.html',
                    'admin/tpl/Application/AssignTenantApplicationView.html',
                    'admin/tpl/Application/AssignTenantApplicationItemView.html',
                    'admin/tpl/Application/TenantAssignApplicationView.html',
                    'admin/tpl/Application/TenantAssignAppProfileView.html',
                    'admin/tpl/Application/TenantAssignAppGroupView.html',
                    'admin/tpl/Application/TenantAssignAppUserView.html',
                    'admin/tpl/Application/ConnectorListView.html',
                    'admin/tpl/Application/ExtensionListView.html',
                    'admin/tpl/Application/AddEditExtensionView.html',
                    'admin/tpl/Application/InternalProxyListView.html',
                    'admin/tpl/Application/AddInternalProxyView.html',
                    'admin/tpl/Application/ApplicationRdpConfigView.html',
                    'admin/tpl/Application/FocusMyClassConfigView.html',
                    'admin/tpl/Application/PearsonConfigView.html',
                    'admin/tpl/Application/SSOLtiFieldView.html',
                    'admin/tpl/Application/SSOLtiFieldv1p3View.html',
                    'admin/tpl/Application/SsoApplicationView.html',
                    'admin/tpl/Application/SsoApplicationUsersView.html',
                    'admin/tpl/Application/TenantWiseAppView.html',
					'admin/tpl/Application/AssignAppView.html',
                    'admin/tpl/Application/AddEditSSOConnectorView.html',
                    'admin/tpl/Application/SSOTypeGridView.html',
                    'admin/tpl/Application/AddEditSSOTypeView.html',
                    'admin/tpl/Application/EditUserWiseSSOLockerCredential.html',
                    'admin/tpl/Application/ExtPasswordLockerView.html',
                    'admin/tpl/Application/LTIToolConsumerAppView.html',
                    'admin/tpl/Application/SSOSignOutView.html',
                    'admin/tpl/Application/CertificationPartnerConfigView.html',
                    'admin/tpl/Application/PhoneBookConfigView.html',
                    'admin/tpl/Application/OneRosterLTIConfigView.html',
                    'admin/tpl/Application/DelegatePermissionView.html',
                    'admin/tpl/Application/AssignDeletegatePermissionView.html',
                    'admin/tpl/Application/DelegateUserGroupsView.html',
                    'admin/tpl/Application/CustomAppConfigView.html',
                    'admin/tpl/Application/AssignedCustomAppConfigView.html',
                    'admin/tpl/Application/AddCustomAppConfigView.html',
                    'admin/tpl/Application/GenericOneRosterLTILaunchView.html',
                    'admin/tpl/Application/AppCoursePickerView.html',
					'admin/tpl/Application/PearsonAPAppConfigView.html',
                    'admin/tpl/Application/PearsonAPAppWMenuConfigView.html',
                    'admin/tpl/Application/NavianceStudentSsoAppConfigView.html',
                    'admin/tpl/Application/AppMathCoursePickerView.html',
                    'admin/tpl/Application/AssignCoursesToPearsonAppView.html',
                    'admin/tpl/Application/CoursesFocusFieldView.html',
					'admin/tpl/Application/FeaturedAppView.html',
                    'admin/tpl/Application/AddAppToFeaturedAppView.html',
                    'admin/tpl/Application/EditFeaturedAppView.html',
                    'admin/tpl/Application/ModifyAppExpirationView.html',
                    'admin/tpl/Application/AppExpiryReportView.html'
                ],
                'admin/assignapplication':[
                    'admin/tpl/AssignApplication/DelegateUserApplicationsView.html',
                    'admin/tpl/AssignApplication/GroupAssignApplicationView.html'
                ],
                'admin/resourcelibrary': [
                    'tpl/ClassApps/ResourceLibrary.html',
                    'tpl/ClassApps/ResLibAddCustomApps.html',
                    'tpl/ClassApps/ResLibAddFolder.html',
                    'tpl/ClassApps/ResLibDetailView.html',
                    'tpl/ClassApps/ResourceLibraryItemView.html'
                ],
                'admin/syncclass':[
                    'admin/tpl/Class/ClassSyncView.html'
                ],
                'admin/ssoapp':[
                    'admin/tpl/Application/ApplicationView.html',
                    'admin/tpl/Application/ApplicationFolderView.html',
                    'admin/tpl/Application/AddEditAppFolderView.html',
                    'admin/tpl/Application/AssignApplicationFolderView.html',
                    'admin/tpl/Application/AddEditApplicationView.html',
                    'admin/tpl/Application/AssignTenantApplicationView.html',
                    'admin/tpl/Application/AssignTenantApplicationItemView.html',
                    'admin/tpl/Application/TenantAssignApplicationView.html',
                    'admin/tpl/Application/TenantAssignAppProfileView.html',
                    'admin/tpl/Application/TenantAssignAppGroupView.html',
                    'admin/tpl/Application/TenantAssignAppUserView.html',
                    'admin/tpl/Application/ConnectorListView.html',
                    'admin/tpl/Application/ExtensionListView.html',
                    'admin/tpl/Application/InternalProxyListView.html',
                    'admin/tpl/Application/AddInternalProxyView.html',
                    'admin/tpl/Application/ApplicationRdpConfigView.html',
                    'admin/tpl/Application/FocusMyClassConfigView.html',
                    'admin/tpl/Application/PearsonConfigView.html',
                    'admin/tpl/Sso/ImportSsoUserView.html',
                    'admin/tpl/Application/PhoneBookConfigView.html'
                ],
                'admin/oauthdevelopers':[
                    'admin/tpl/OauthDevelopers/OauthDevelopersView.html'
                ],
                'admin/developersapikey':[
                    'admin/tpl/DevelopersApikey/DevelopersApikeyView.html'
                ],
                'admin/groups':[
                    'admin/tpl/Group/BuildingListView.html',
                    'admin/tpl/Group/GroupListView.html',
                    'admin/tpl/Group/GroupListADView.html',
                    'admin/tpl/Group/GroupGridView.html',
                    'admin/tpl/Group/AddEditGroupView.html',
                    'admin/tpl/Group/ThemeView.html',
                    'admin/tpl/Group/AssignedUsersListView.html',
                    'admin/tpl/Group/AllUserAssignToGroupListView.html',
                    'admin/tpl/Group/GroupImportView.html',
                    'admin/tpl/Group/GroupImportThemeView.html'
                ],
                "admin/settings": [
                 'admin/tpl/Settings/CustomLoginPageSettingsListView.html',
                 'admin/tpl/Settings/EditCustomLoginView.html',
                 'admin/tpl/Settings/CustomLinksSettingsView.html',                
                 'admin/tpl/Settings/CustomLinksView.html',
                 'admin/tpl/Settings/DemoContentManagementView.html',
                 'admin/tpl/Settings/InviteCodeManagementListView.html',
                 'admin/tpl/Settings/AddEditInviteCodeManagementView.html',
                 'admin/tpl/Settings/PreventEmailManagementView.html',
                 'admin/tpl/Settings/InstantUsersListView.html',
                 'admin/tpl/Settings/InstantUserReportListView.html',
                 'admin/tpl/Settings/InstantUserLoginSummaryListView.html',
                 'admin/tpl/Settings/SettingSecurityView.html',
                 'admin/tpl/Settings/ConfigureSessionTimeoutView.html',
                 'admin/tpl/Settings/ConfigureTimeoutProfileView.html',
                 'admin/tpl/Settings/TwoFactorAuthView.html',
                 'admin/tpl/Settings/TwoFactorAuthProfileView.html',
                 'admin/tpl/Settings/TwoFactorAuthUserView.html',
                 'admin/tpl/Settings/PasswordResetView.html',
                 'admin/tpl/Settings/PasswordResetProfileView.html',
                 'admin/tpl/Settings/PasswordRecoveryUsersListView.html',
                 'admin/tpl/Settings/ConfigureAppGroupView.html',
                 'admin/tpl/Settings/ConfigureEnableMyClassView.html',
                 'admin/tpl/Settings/ConfigureEnableInboxView.html',
                 'admin/tpl/Settings/SigninWithView.html',                
                 'admin/tpl/Settings/GroupEnableORCodeFaceView.html',
                 'admin/tpl/Settings/ConfigureEnableReportAnIssueView.html',
                 'admin/tpl/Settings/DocsManagementView.html',
                 'admin/tpl/Settings/ImpersonateSettingView.html',
                 'admin/tpl/Settings/DuoPushView.html',
                 'admin/tpl/Settings/MyBackpackView.html',
                 'admin/tpl/Settings/SecurityReportView.html',
                 'admin/tpl/Settings/DisallowedwordView.html',
                 'admin/tpl/Settings/AddEditDisallowedwordView.html',
                 'admin/tpl/Settings/SecurityQPolicyView.html',
                 'admin/tpl/Settings/PasswordResetUserView.html'
                ],
                "admin/tenants": [
                    'admin/tpl/Tenant/TenantListView.html',
                    'admin/tpl/Tenant/AddEditTenantView.html',
                    'admin/tpl/Tenant/SubscriptionLogView.html',
                    'admin/tpl/Tenant/TenantTrainingView.html',
                    'admin/tpl/Tenant/AddEditTenantTrainingView.html',
                    'admin/tpl/Tenant/TrainingLogView.html',
                    'admin/tpl/Tenant/ModifyTenantExpirationView.html'
                ],
                "admin/tenantconfiguration": [
                    'admin/tpl/Tenantconfiguration/TenantconfigurationListView.html', 
                    'admin/tpl/Tenantconfiguration/TemplateListView.html',
                    'admin/tpl/Tenantconfiguration/AddEditTenantconfigurationView.html',
                    'admin/tpl/Tenantconfiguration/TenantconfigurationDashboardView.html',
                    'admin/tpl/Tenantconfiguration/DefaultProfileView.html',
                    'admin/tpl/Tenantconfiguration/DefaultUserView.html',
                    'admin/tpl/Tenantconfiguration/AddEditDefaultUserconfigurationView.html'
                ],
                "admin/managetemplates": [
                    'admin/tpl/Tenantconfiguration/TenantconfigurationListView.html', 
                    'admin/tpl/Tenantconfiguration/TemplateListView.html',
                    'admin/tpl/Tenantconfiguration/AddEditTenantconfigurationView.html',
                    'admin/tpl/Tenantconfiguration/ConfigureTemplateListView.html'
                ],
                "admin/master": [
                    'admin/tpl/Master/MasterListView.html', 
                    'admin/tpl/Master/AddEditMasterView.html'
                ],
                'admin/myfiles': [
                    'admin/tpl/Myfiles/ManageServicesListView.html',
                    'admin/tpl/Myfiles/CustomNamesListView.html',
                    'admin/tpl/Myfiles/EditCustomNamesView.html',
                    'admin/tpl/Myfiles/FolderMappingListView.html', 
                    'admin/tpl/Myfiles/AddEditFolderMappingView.html', 
                    'admin/tpl/Myfiles/TenantAssignFolderMappingView.html', 
                    'admin/tpl/Myfiles/TenantAssignFolderMapGroupView.html', 
                    'admin/tpl/Myfiles/TenantAssignFolderMapUserView.html',
                    'admin/tpl/Myfiles/MigrateMyfilesGridView.html',
					'admin/tpl/Myfiles/AddedCloudFolderPermissionView.html',
                    'admin/tpl/Myfiles/CloudFolderPermissionView.html',
                    'admin/tpl/Myfiles/AddedCloudDriveEmailAuthView.html',
                    'admin/tpl/Myfiles/CloudDriveEmailAuthView.html'
                ],
                "admin/managestorage": [
                    'admin/tpl/ManageStorage/ManageStorageListView.html',
                    'admin/tpl/ManageStorage/EditTenantStorageLimitView.html'
                    
                ],
                'admin/classes':[
                    'admin/tpl/Class/ClassSyncView.html',
                    'admin/tpl/Class/PublicViewSettingView.html'
                ],
                'admin/oneroster':[
                    'admin/tpl/OneRoster/OneRosterView.html',
                    'admin/tpl/OneRoster/OrgsListView.html',
                    'admin/tpl/OneRoster/CoursesListView.html',
                    'admin/tpl/OneRoster/ClassesListView.html',
                    'admin/tpl/OneRoster/TenantAssignAppOrgsView.html',
                    'admin/tpl/OneRoster/TenantAssignAppCoursesView.html',
                    'admin/tpl/OneRoster/TenantAssignAppClassesView.html',                    
                    'admin/tpl/OneRoster/ClassesQuickcardView.html',
                    'admin/tpl/OneRoster/MigrateOneRosterGridView.html',
                    'admin/tpl/OneRoster/RosterServerView.html'
                ],
                'admin/buildings': [
                    'admin/tpl/Building/BuildingGridView.html',
                    'admin/tpl/Building/BuildingDialogView.html',
                    'admin/tpl/Building/AddEditBuildingView.html',
                    'admin/tpl/Building/ConfigureBuildingView.html',
                    'admin/tpl/Building/WebServiceURLInfoView.html',
                    'admin/tpl/Building/OpenRDPAssociationsListView.html',
                    'admin/tpl/Building/AddEditOpenRDPServerView.html',
                    'admin/tpl/Building/TWSVersionInfoView.html',
                    'admin/tpl/Building/ADConnectorsView.html',
                    'admin/tpl/Building/AddEditADConnectorView.html',
                    'admin/tpl/Building/LPLiteRestrictedModalView.html'
                ],
                'admin/profiles': [
                    'admin/tpl/Profile/ProfileGridView.html',
                    'admin/tpl/Profile/AddEditProfileView.html',
                    'admin/tpl/Profile/ImportFromProfileView.html'
                ],
                'admin/users': [
                    'admin/tpl/User/UserView.html',
                    'admin/tpl/User/AddEditUserView.html',
                    'admin/tpl/User/ImportUserView.html',
                    'admin/tpl/User/AssignGroupView.html',
                    'admin/tpl/User/OverrideOnerosterView.html',
                    'admin/tpl/User/ImpersonateProfileSelectView.html',
                    'admin/tpl/User/KillUserActiveSessionView.html'
                ],
                'admin/reports':[
                    'admin/tpl/Reports/ReportView.html',
                    'admin/tpl/Reports/DashboardView.html',
                    'admin/tpl/Reports/LoginReportView.html',
                    'admin/tpl/Reports/AppReportView.html',
                    'admin/tpl/Reports/EmailReportView.html',
                    'admin/tpl/Reports/SettingView.html',
                    'admin/tpl/Reports/BrowserReportView.html',
                    'admin/tpl/Reports/StorageReportView.html',
                    'admin/tpl/Reports/StroageDashboardView.html',
                    'admin/tpl/Reports/StroageUserView.html',
                    'admin/tpl/Reports/StroageSharedView.html',
                    'admin/tpl/Reports/StroageClassesView.html',
                    'admin/tpl/Reports/HTML5GatewayReportView.html',
                    'admin/tpl/Reports/NeedMoreSpaceView.html',
                    'admin/tpl/Reports/AdUserLoginReportView.html',
                    'admin/tpl/Reports/LoginMainView.html'
                ],
                'admin/myapps': [
                    'admin/tpl/MyApps/ApplicationsView.html',
                    'admin/tpl/MyApps/ApplicationItemView.html',
                    'admin/tpl/MyApps/ApplicationFolderView.html',
                    'admin/tpl/MyApps/MyAppsUIGridView.html'
                ],
                'admin/collaboration': [
                    'admin/tpl/Collaboration/AssignProfileListForCometChatView.html',
                    'admin/tpl/Collaboration/AllProfileListForCometChatView.html'
                ],
                'admin/notification':[
                    'admin/tpl/Notification/AlertNotificationView.html',
                    'admin/tpl/Notification/AddEditAlertNotificationView.html',
                    'admin/tpl/Notification/TenantAssignAlertNotificationView.html',
                    'admin/tpl/Notification/TenantAssignAlertNotificationProfileView.html',
                    'admin/tpl/Notification/TenantAssignAlertNotificationGroupView.html',
                    'admin/tpl/Notification/SuperAdmAssignAlertNotificationTenantView.html',
                    'admin/tpl/Notification/SuperAdmAssignAlertNotificationView.html',
					'admin/tpl/Notification/NotificationManagementView.html',
                    'admin/tpl/Notification/LoginNotificationManagementView.html',
                    'admin/tpl/Notification/DeskinyManagementView.html',
                    'admin/tpl/Notification/AlertNotificationReportView.html',
                    'admin/tpl/Notification/SuperAdmAssignAlertNotificationProviderView.html'
                ],
                'admin/fileassociation': [
                    'admin/tpl/FileAssociation/FileAssociationGridView.html',
                    'admin/tpl/FileAssociation/AddEditFileAssociationView.html'
                ],
                'admin/parentportal': [
                    'admin/tpl/ParentPortal/ParentPortalSettingsView.html',
                    'admin/tpl/ParentPortal/ParentPortalLoginPageView.html',
                    'admin/tpl/ParentPortal/ParentPortalCodesView.html',
                    'admin/tpl/ParentPortal/ParentStudentRelationView.html',
                    'admin/tpl/ParentPortal/DigitalResourcesPortalView.html',
                    'admin/tpl/ParentPortal/ApplicationListToDistrictResourcePortalView.html',
                    'admin/tpl/ParentPortal/DistrictApplicationListView.html',
                    'admin/tpl/ParentPortal/EditDistrictPortalApplicationView.html',
                    'admin/tpl/ParentPortal/DistrictCollectionListView.html',
                    'admin/tpl/ParentPortal/AddEditDistrictCollectionView.html',
                    'admin/tpl/ParentPortal/AssignedApplicationListToCollectionView.html',
                    'admin/tpl/ParentPortal/ApplicationListToCollectionView.html',
                    'admin/tpl/ParentPortal/ApplicationNotificationsView.html',
                    'admin/tpl/ParentPortal/AddEditApplicationNotificationsView.html',
                    'admin/tpl/ParentPortal/CollectionNotificationsView.html',
                    'admin/tpl/ParentPortal/AddEditCollectionNotificationsView.html'

                ],
                "admin/signinwith": [
                    'admin/tpl/Signinwith/QRCodeView.html',
                    'admin/tpl/Signinwith/GenerateQRCodeView.html',
                    'admin/tpl/Signinwith/WindowsSetupView.html',
                    'admin/tpl/Signinwith/EditWindowsSetupView.html'
                ],
                "admin/applibrary": [
                    'admin/tpl/AppLibrary/AppLibraryListView.html',
                    'admin/tpl/AppLibrary/AddEditAppLibraryView.html',
                    'admin/tpl/AppLibrary/AppLibraryProfileView.html',
                    'admin/tpl/AppLibrary/AppLibraryApplicationView.html',
                    'admin/tpl/AppLibrary/ConfigureAppLibraryListView.html',
                    'admin/tpl/AppLibrary/ConfigureAppProfileView.html',
                    'admin/tpl/AppLibrary/Dashboard.html',
                    'admin/tpl/AppLibrary/DashboardItemView.html',
                    'admin/tpl/AppLibrary/CustomApp.html',
                    'admin/tpl/AppLibrary/AppDetailView.html',
                    'admin/tpl/AppLibrary/AppIconsView.html',
                    'admin/tpl/AppLibrary/AppIconsItemView.html',
                    'admin/tpl/AppLibrary/DashboardCarouselItemView.html'                    
                ],
                "admin/oauth2resource": [
                    'admin/tpl/Oauth2Resource/AppLibraryListView.html',
                    'admin/tpl/Oauth2Resource/Oauth2ResourceAppTableView.html',
                    'admin/tpl/Oauth2Resource/Oauth2ResourceListView.html',
                    'admin/tpl/Oauth2Resource/AppLibraryListPopupView.html'

                ],
                'login/trial': [
                    'tpl/Trial/ProvisioningInstantAccountView.html'
                ],
                'login/resetpassword': [
                    'tpl/Resetpassword/RecoveryOptionsItemView.html',
                    'tpl/Resetpassword/RecoveryOptionsView.html',
                    'tpl/Resetpassword/RecoveryMessageView.html',
                    'tpl/Resetpassword/RecoverySecretQuestionsItemView.html',
                    'tpl/Resetpassword/RecoverySecretQuestionsView.html'
                ],
                'dashboard': [
                    'tpl/Announcement/AnnouncementView.html',
                    'tpl/Announcement/AnnouncementListItemView.html',
                    'tpl/Announcement/AnnouncementListItemFileAttachmentView.html',
                    'tpl/Announcement/NewAnnouncementView.html',
                    'tpl/Announcement/ViewAnnouncementView.html',
                    'tpl/Announcement/AllAnnouncementView.html',
                    'tpl/Dashboard/DashboardView.html',
                    'tpl/Dashboard/RecentActivityItemView.html',
                    'tpl/Dashboard/DashboardEventItemView.html',
                    'tpl/Calendar/Layout.html',
                    'tpl/Calendar/CalendarsList.html',
                    'tpl/Calendar/DayEventsList.html',
                    'tpl/Calendar/CalendarUi.html',
                    'tpl/Calendar/CalendarsNewCalendar.html',
                    'tpl/Calendar/CalendarsNewEvent.html',
                    'tpl/Calendar/CalendarsViewEvent.html',
                    'tpl/Calendar/SettingsLayout.html',
                    'tpl/Calendar/CalendarsGeneralSettings.html',
                    'tpl/Calendar/ShareUserCalendar.html',
                    'tpl/Calendar/AddUserItemView.html',
                    'tpl/Calendar/ShareGroupCalendar.html',
                    'tpl/Calendar/AssignGroupItemView.html',
                    'tpl/Calendar/AddUserCalendar.html',
                    'tpl/Calendar/AddGroupCalendar.html',
                    'tpl/Calendar/AssignedUserItemView.html',
                    'tpl/Calendar/AssignedGroupItemView.html',
                    'tpl/Picker/HeaderView.html',
                    'tpl/Picker/RequestFormView.html',
                    'tpl/Picker/AvatarFormView.html',
                    'tpl/Picker/WallpaperFormView.html',
                    'tpl/Picker/IconListItemView.html',
                    'tpl/Picker/AvatarListItemView.html',
                    'tpl/Picker/WallpaperListItemView.html',
                    'tpl/Groupuserpicker/HeaderView.html',
                    'tpl/Groupuserpicker/GroupListView.html',
                    'tpl/Groupuserpicker/GroupListItemView.html',
                    'tpl/Groupuserpicker/UserListView.html',
                    'tpl/Groupuserpicker/UserListItemView.html'
                ],
                "class": [
                    'tpl/AllClasses/AllClassesView.html',
                    'tpl/AllClasses/ClassListItemView.html',
                    'tpl/AllClasses/SchoolSessionYearItemView.html',
                    'tpl/AllClasses/LeftMenuView.html',
                    'tpl/AllClasses/LeftMenuClassItemView.html',
                    'tpl/EnrollClasses/EnrollClassesView.html',
                    'tpl/EnrollClasses/EnrollClassListItemView.html',
                    'tpl/EnrollClasses/EnrollClassModalView.html',
                    'tpl/Class/MainView.html',
                    'tpl/Class/LeftMenuView.html',
                    'tpl/Class/ClassView.html',
                    'tpl/Class/ClassSettingsView.html',
                    'tpl/Class/ImportClassView.html',
                    'tpl/Class/ImportClassItemView.html',
                    'tpl/Discuss/DiscussView.html',
                    'tpl/Discuss/DiscussThreadView.html',
                    'tpl/Discuss/DiscussSettingView.html',
                    'tpl/Discuss/CommentListItemView.html',
                    'tpl/Discuss/CommentListItemFileAttachmentView.html',
                    'tpl/Discuss/UpdateCommentView.html',
                    'tpl/Discuss/ReplyCommentView.html',
                    'tpl/ClassApps/Main.html',
                    'tpl/ClassApps/ResourceLibrary.html',
                    'tpl/ClassApps/ResLibAddCustomApps.html',
                    'tpl/ClassApps/ResLibAddFolder.html',
                    'tpl/ClassApps/ResLibDetailView.html',
                    'tpl/ClassApps/ResourceLibraryItemView.html',
                    'tpl/ClassApps/SsoRequestFormView.html',
                    'tpl/Lesson/LessonView.html',
                    'tpl/Lesson/LessonLeftMenuView.html',
                    'tpl/Lesson/FolderWiseLessonView.html',
                    'tpl/Lesson/LessonItemView.html',
                    'tpl/Lesson/LessonFolderItemView.html',
                    'tpl/Lesson/AddLessonView.html',
                    'tpl/Lesson/LessonSingleView.html',
                    'tpl/Lesson/ImportLessonItemView.html',
                    'tpl/Lesson/UberModalView.html',
                    'tpl/Lesson/ImportLessonView.html',
                    'tpl/Assignment/AssignmentView.html',
                    'tpl/Assignment/AssignmentItemView.html',
                    'tpl/Assignment/AddAssignmentView.html',
                    'tpl/Assignment/AssignmentLeftMenuView.html',
                    'tpl/Assignment/AssignmentLeftMenuItemView.html',
                    'tpl/Assignment/TeacherAssignmentDashboardView.html',
                    'tpl/Assignment/AssignUserGroupView.html',
                    'tpl/Assignment/AssignUserItemView.html',
                    'tpl/Assignment/AssignGroupItemView.html',
                    'tpl/Assignment/SubmitAssignmentView.html',
                    'tpl/Assignment/AssignmentActivityItemView.html',
                    'tpl/Assignment/TeacherSingleAssignmentView.html',
                    'tpl/Assignment/StudentSingleAssignmentView.html',
                    'tpl/Assignment/AssignmentActivityView.html',
                    'tpl/Assignment/RevisionsView.html',
                    'tpl/Assignment/RevisionsItemView.html',
                    'tpl/Comment/CommentView.html',
                    'tpl/Comment/UpdateCommentView.html',
                    'tpl/Comment/ReplyCommentView.html',
                    'tpl/Comment/CommentReplyView.html',
                    'tpl/Member/ClassAssignedMembersListItemView.html',
                    'tpl/Member/ClassMembersView.html',
                    'tpl/Member/ClassMembersListItemView.html',
                    'tpl/Share/ClassShareView.html',
                    'tpl/Share/SharedUsersView.html',
                    'tpl/Group/ClassGroupsView.html',
                    'tpl/Group/ClassGroupsListItemView.html',
                    'tpl/Group/AddGroupView.html',
                    'tpl/Group/GroupMembersView.html',
                    'tpl/Group/GroupMembersListItemView.html',
                    'tpl/Poll/ImportPollItemView.html',
                    'tpl/Poll/AttachPollView.html',
                    'tpl/Poll/ImportPollView.html',
                    'tpl/Poll/TakePollView.html',
                    'tpl/Poll/PollResultView.html',
                    'tpl/Whiteboard/CommentWhiteboardView.html',
                    'tpl/Whiteboard/CreateCommentWhiteboardView.html',
                    'tpl/Whiteboard/ImportWhiteboardItemView.html',
                    'tpl/Whiteboard/AttachWhiteboardView.html'
                ],
                "inbox": [
                    'tpl/Inbox/MainView.html',
                    'tpl/Inbox/InboxListing.html',
                    'tpl/Inbox/Compose.html',
                    'tpl/Inbox/ComposeSelectUsers.html',
                    'tpl/Inbox/SentListing.html',
                    'tpl/Inbox/SingleMailMaster.html',
                    'tpl/Inbox/Forward.html',
                    'tpl/Inbox/SingleMail.html',
                    'tpl/Inbox/DeletedListing.html',
                    'tpl/Inbox/InboxSettings.html'
                ],
                "demos": [
                    'tpl/Demos/Demo.html',
                    'tpl/Demos/MomentJs.html',
                    'tpl/Demos/I18next.html',
                    'tpl/Demos/Tooltip.html'
                ],
                "myapps": [
                    'tpl/MyApps/ApplicationsView.html',
                    'tpl/MyApps/ApplicationItemView.html',
                    'tpl/MyApps/ApplicationFolderView.html',
                    'tpl/MyApps/AddEditUserFolderView.html',
                    'tpl/MyApps/AddEditCustomAppView.html',
                    'tpl/MyApps/AddEditUserFolderNewView.html',
                    'tpl/MyApps/ReportanIssue.html',
                    'tpl/MyApps/App2FAView.html'
                ],
                "applibrary": [
                    'tpl/AppLibrary/Dashboard.html',
                    'tpl/AppLibrary/DashboardItemView.html',
                    'tpl/AppLibrary/CustomApp.html',
                    'tpl/AppLibrary/AppDetailView.html',
                    'tpl/AppLibrary/AppIconsView.html',
                    'tpl/AppLibrary/AppIconsItemView.html',
                    'tpl/AppLibrary/DashboardCarouselItemView.html'
                ]
                
            },
            "output": "mintpl"
        },
        loosejs: {
            gzip: [
                '/resources/ckeditor2/ckeditor.js'
            ],
            mingzip: [
                '/js/app.js',
                '/resources/require/require.js',
                '/optimize/main.js',
                '/optimize/otrack.js',
                '/js/main.js',
                '/admin/js/app.js',
                '/admin/resources/require/require.js',
                '/admin/js/main.js'
            ]
        }
    };
    /********** Optimization configuration ends here  ************/
    var root = this; // window in browser, global in server


    optimize.loadedCssBundles = new Array();
    optimize.loadedJsBundles = new Array();
    optimize.loadedTemplatesBundles = new Array();
    optimize.templates = {};
    optimize.track = {
        css: {
            files: {}
        },
        js: {
            files: {}
        },
        templates: {
            files: {}
        }
    };

    optimize._loadCss = function(url, callback) {
        (new CssLoader(url, {
            onReady: callback,
            onError: callback
        })).start();
    };
    optimize.getCdnUrl = function() {
        if(root.utils) {
            return utils.getCdnUrl();
        }
        return IdConfig.cloudfronturls.clouddesktop;
    };
    optimize.loadMultipleCss = function(urls, callback) {
        if(!$.isArray(urls)) {
            urls = [urls];
        }
        var deferreds = [];
        urls.forEach(function(url) {
            var d = new $.Deferred();
            deferreds.push(d);
            optimize.loadCss(url, function() {
                d.resolve(); // not passing error
            });
        });

        $.when.apply($, deferreds).done(function() {
            if(callback) {
                callback();
            }
        });
    };
    optimize.loadCss = function(url, callback) {
        for(var bid in optimize.config.css.bundles) {
            if(optimize.config.css.bundles.hasOwnProperty(bid)) {
                var b = optimize.config.css.bundles[bid];
                if(b.indexOf(url) >= 0) {
                    optimize.track.css.files[url] = bid;
                    // url is in this bundle
                    if(optimize.loadedCssBundles.indexOf(bid) >= 0) {
                        // bundle is already loaded
                        if(callback) {
                            callback();
                        }
                        return;
                    }
                    else {
                        // load bundle
                        var burl = optimize.getCdnUrl()+'/'+optimize.config.css.output+'/'+bid+'.css?t='+IdConfig.resmodified;

                        optimize._loadCss(burl, callback);

                        optimize.loadedCssBundles.push(bid); // mark as loaded
                    }
                    return; // no need to proceed further
                }
            }

        }

        // not in bundle
        if(optimize.track.css.files[url]) {
            if(callback) {
                callback();
            }
            return; // already loaded
        }
        
        if (url.indexOf('?') < 0) {
          url = url + '?t=' + IdConfig.resmodified;
        } else {
          url = url + '&t=' + IdConfig.resmodified;
        }

        optimize._loadCss(url, callback);
        optimize.track.css.files[url] = url;
    };
    optimize._loadStyle = function(burl, bid) {
        var css;
        css = document.createElement('link');
        css.rel = 'stylesheet';
        css.type = 'text/css';
        css.media = "all";
        css.href = burl;
        css.id = 'ss-'+bid;
        document.getElementsByTagName("head")[0].appendChild(css);
    };
    optimize.loadStyle = function(fileUrl, reloadFromServer) {
        reloadFromServer = reloadFromServer || false;
        var fileId = fileUrl.replace(/\//g, '-');
            if(!fileUrl.indexOf('.css')) {
            fileUrl+='.css';
        }
        else {
            fileId = fileId.replace('.css', '');
        }
        var url = '/css/theme/'+utils.theme+'/'+fileUrl;
        var bfile = 'theme/'+fileUrl;


        for(var bid in optimize.config.css.bundles) {
            if(optimize.config.css.bundles.hasOwnProperty(bid)) {
                var b = optimize.config.css.bundles[bid];
                if(b.indexOf(bfile) >= 0) {
                    optimize.track.css.files[fileUrl] = bid;
                    // url is in this bundle
                    if(optimize.loadedCssBundles.indexOf(bid) >= 0) {
                        // bundle is already loaded
                        if(reloadFromServer) {
                            var burl = optimize.getCdnUrl()+'/'+optimize.config.css.output+'/'+ utils.theme+'/'+bid+'.css?t='+IdConfig.resmodified;
                            burl += 'clrefreshnew='+(new Date()).getTime();
                            $('#ss-'+bid).attr('href', burl);
                        }
                        return;
                    }
                    else {
                        // load bundle
                        var burl = optimize.getCdnUrl()+'/'+optimize.config.css.output+'/'+ utils.theme+'/'+bid+'.css?t='+IdConfig.resmodified;

                        optimize._loadStyle(burl, bid);

                        optimize.loadedCssBundles.push(bid); // mark as loaded
                    }
                    return; // no need to proceed further
                }
            }

        }

        // not in any bundle
        optimize._loadStyle(url, fileId);
        optimize.track.css.files[fileUrl] = fileUrl;
    };

    optimize._loadTemplate = function(view, callback, immediate) {
        var file = 'tpl/'+view+'.html';
        immediate = immediate || false;
        callback = callback || function() {};
        for(var bid in optimize.config.templates.bundles) {
            if(optimize.config.templates.bundles.hasOwnProperty(bid)) {
                var b = optimize.config.templates.bundles[bid];
                if(b.indexOf(file) >= 0) {
                    optimize.track.templates.files[file] = bid;
                    // file is in this bundle
                    if($('#tpl-'+bid).length) {
                        // bundle is already loaded
                        if(immediate) {
                            return optimize.templates[bid][file];
                        }
                        callback(optimize.templates[bid][file]);
                        return;
                    }
                    else {
                        // load bundle
                        var burl = '/'+optimize.config.templates.output+'/'+bid+'.js?t='+IdConfig.resmodified;



                        $.getJSON(burl, function(bjson) {
                            //console.log('loaded bundle '+bid);
                            optimize.loadedTemplatesBundles.push(bid); // mark as loaded
                            optimize.templates[bid] = bjson;
                            callback(bjson[file]);
                        });
                    }
                    return; // no need to proceed further
                }
            }

        }

        // not in any bundle
        $.get('/'+file, function(data) {
            callback(data);
        });
        optimize.track.templates.files[file] = file;
    };
    optimize.loadTemplate = function(views, callback) {


        // process views, we can pass it like "Discuss/all"
        var suffix = "/all";
        if (typeof views == 'string' || views instanceof String) {
            if (views.indexOf(suffix, views.length - suffix.length) !== -1) {
                var mv = views.replace(suffix, '');
                if (window.utils.moduleViews[mv] && window.utils.moduleViews[mv].length) {
                    views = new Array();

                    for (var i = 0; i < window.utils.moduleViews[mv].length; i++) {
                        views.push(mv + '/' + window.utils.moduleViews[mv][i]);
                    }
                }
            }
        }

        async.eachSeries(views, function(view, cb) {
            var cv = view.replace('/', '_');

            if(utils.templates[cv] && window[cv]) {

                window.utils.templatesLoaded.push(view);
                window[cv].prototype.template = _.template(window.utils.templates[cv]);
                cb();
            }
            else {
                if ($.inArray(view, window.utils.templatesLoaded) < 0) {

                    optimize._loadTemplate(view, function(data) {

                        if(window[cv]) {
                            window.utils.templatesLoaded.push(view);
                            window[cv].prototype.template = _.template(data);
                        }
                        window.utils.templates[cv] = data; // dont remove this line
                        //console.log(window.utils.templates);
                        if(!window.utiltemplates) {
                            window.utiltemplates = {};
                        }
                        window.utiltemplates[cv] = data;
                        cb();
                    });
                }
                else {
                    cb();
                }
            }
        }, function(err) {
            callback();
        });

    };

    optimize.requireLoad = function(context, moduleId, burl) {
        var config = (context && context.config) || {},
        node;
        if (isBrowser) {
            //In the browser so use a script tag
            node = req.createNode(config, moduleName, url);

            node.setAttribute('data-requirecontext', context.contextName);
            node.setAttribute('data-requiremodule', moduleName);

            //Set up load listener. Test attachEvent first because IE9 has
            //a subtle issue in its addEventListener and script onload firings
            //that do not match the behavior of all other browsers with
            //addEventListener support, which fire the onload event for a
            //script right after the script execution. See:
            //https://connect.microsoft.com/IE/feedback/details/648057/script-onload-event-is-not-fired-immediately-after-script-execution
            //UNFORTUNATELY Opera implements attachEvent but does not follow the script
            //script execution mode.
            if (node.attachEvent &&
                //Check if node.attachEvent is artificially added by custom script or
                //natively supported by browser
                //read https://github.com/jrburke/requirejs/issues/187
                //if we can NOT find [native code] then it must NOT natively supported.
                //in IE8, node.attachEvent does not have toString()
                //Note the test for "[native code" with no closing brace, see:
                //https://github.com/jrburke/requirejs/issues/273
                !(node.attachEvent.toString && node.attachEvent.toString().indexOf('[native code') < 0) &&
                    !isOpera) {
                //Probably IE. IE (at least 6-8) do not fire
                //script onload right after executing the script, so
                //we cannot tie the anonymous define call to a name.
                //However, IE reports the script as being in 'interactive'
                //readyState at the time of the define call.
                useInteractive = true;

                node.attachEvent('onreadystatechange', context.onScriptLoad);
                //It would be great to add an error handler here to catch
                //404s in IE9+. However, onreadystatechange will fire before
                //the error handler, so that does not help. If addEventListener
                //is used, then IE will fire error before load, but we cannot
                //use that pathway given the connect.microsoft.com issue
                //mentioned above about not doing the 'script execute,
                //then fire the script load event listener before execute
                //next script' that other browsers do.
                //Best hope: IE10 fixes the issues,
                //and then destroys all installs of IE 6-9.
                //node.attachEvent('onerror', context.onScriptError);
            } else {
                node.addEventListener('load', context.onScriptLoad, false);
                node.addEventListener('error', context.onScriptError, false);
            }
            node.src = url;

            //For some cache cases in IE 6-8, the script executes before the end
            //of the appendChild execution, so to tie an anonymous define
            //call to the module name (which is stored on the node), hold on
            //to a reference to this node, but clear after the DOM insertion.
            currentlyAddingScript = node;
            if (baseElement) {
                head.insertBefore(node, baseElement);
            } else {
                head.appendChild(node);
            }
            currentlyAddingScript = null;

            return node;
        } else if (isWebWorker) {
            try {
                //In a web worker, use importScripts. This is not a very
                //efficient use of importScripts, importScripts will block until
                //its script is downloaded and evaluated. However, if web workers
                //are in play, the expectation that a build has been done so that
                //only one script needs to be loaded anyway. This may need to be
                //reevaluated if other use cases become common.
                importScripts(url);

                //Account for anonymous modules
                context.completeLoad(moduleName);
            } catch (e) {
                context.onError(makeError('importscripts',
                                          'importScripts failed for ' +
                                              moduleName + ' at ' + url,
                                          e,
                                          [moduleName]));
            }
        }
    };

    // Node.js
    if (typeof module !== 'undefined' && module.exports) {
        module.exports = optimize;
    }
    // included directly via <script> tag
    else {
        root.optimize = optimize;


        // requirejs
        var load = requirejs.load;
        requirejs.load = function (context, moduleId, url) {
            //modify url here, then call original load
            if(url.indexOf('?bust=')) {
                url = url.substr(0, url.indexOf('?bust='));
            }
            for(var bid in optimize.config.js.bundles) {
                if((!IdConfig.loginpage && window.location.pathname.indexOf('/admin')==-1 && bid.indexOf('admin/')==-1 && bid.indexOf('login/')==-1) || (IdConfig.loginpage==true && bid.indexOf('login/')!=-1) || (!IdConfig.loginpage && window.location.pathname.indexOf('/admin')!=-1 && bid.indexOf('admin/')!=-1)) {
                    if(optimize.config.js.bundles.hasOwnProperty(bid)) {
                        var b = optimize.config.js.bundles[bid];
                        if(b.indexOf(url) >= 0) {
                            optimize.track.js.files[url] = bid;
                            // url is in this bundle
                            if(optimize.loadedJsBundles.indexOf(bid) >= 0) {
                                // bundle is already loaded
                                context.completeLoad(moduleId);
                                return;
                            }
                            else {
                                // load bundle
                                var burl = optimize.getCdnUrl()+'/'+optimize.config.js.output+'/'+bid+'.js?t='+IdConfig.resmodified;
                                // requirejs 1820
                                load(context, moduleId, burl);

                                optimize.loadedJsBundles.push(bid); // mark as loaded
                            }
                            return; // no need to proceed further
                        }
                    }
                }
            }
            if(url.indexOf('./') === 0) {
                url = url.substr(1);
            }
            if(url.indexOf('//') !== 0 && url.indexOf('/') === 0) {
                // local
                url = optimize.getCdnUrl() + url;
            }
            if(url.indexOf('?') > 0) {
                if(!url.indexOf('t=') > 0) {
                    url += '&t='+IdConfig.resmodified;
                }
            }
            else {
                url += '?t='+IdConfig.resmodified;
            }

            optimize.track.js.files[url] = url;
            // not in any bundle
            return load(context, moduleId, url);

        };

    }
}());

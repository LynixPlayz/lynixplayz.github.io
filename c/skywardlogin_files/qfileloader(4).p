if (typeof(vBrwsInfo) == 'undefined') {
    var vBrwsInfo = new cBrowserInfo();
}
if (vBrwsInfo && vBrwsInfo.browser) {
    function setFormValues () {
        var vForms = ['ViewEmp','ViewFM','ViewHR','ViewSM','ViewSP','navform','detailform'];
        for (var i = 0; i < vForms.length; i++) {
            if (document[vForms[i]]) {
                if (document[vForms[i]].Browser) {
                    document[vForms[i]].Browser.value = vBrwsInfo.browser; 
                }
                if (document[vForms[i]].BrowserVersion) {
                    document[vForms[i]].BrowserVersion.value = vBrwsInfo.version;
                }
                if (document[vForms[i]].BrowserPlatform) {
                    document[vForms[i]].BrowserPlatform.value = vBrwsInfo.platform;
                }
                if (document[vForms[i]].TouchDevice) {
                    document[vForms[i]].TouchDevice.value = vBrwsInfo.touchDevice ? 'true' : 'false';
                }
            }
        }
    }
    if (window.addEventListener) {
        window.addEventListener('load', setFormValues, false);
    } else if (window.attachEvent) {
        window.attachEvent('onload', setFormValues);
    }
}

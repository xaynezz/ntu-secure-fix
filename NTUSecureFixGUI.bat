<!-- :: Batch section
@echo off
setlocal
if not defined flag set "flag=1" & start "HTA" /MIN "%~F0" & goto :EOF

echo waiting for button press...
for /F "delims=" %%a in ('mshta.exe "%~F0"') do set "HTAreply=%%a"
netsh wlan add profile filename="Wi-Fi-NTUSECURE.xml"
exit
-->


<HTML>
<HEAD>
<HTA:APPLICATION SCROLL="no" SYSMENU="no" >

<TITLE>NTUSecure Fix</TITLE>
<SCRIPT language="JavaScript">
window.resizeTo(300,100);

function closeHTA(reply){
   var fso = new ActiveXObject("Scripting.FileSystemObject");
   fso.GetStandardStream(1).WriteLine(reply);
   window.close();
}

</SCRIPT>
</HEAD>
<BODY>
    <button onclick="closeHTA(1);" >Fix :3</button>
</BODY>
</HTML>
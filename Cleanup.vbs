On Error Resume Next

Set objFSO = CreateObject("Scripting.FileSystemObject")
strComputer = "."
strPath = objFSO.GetAbsolutePathName(".")

wscript.sleep 2000
objFSO.DeleteFile Wscript.ScriptFullName
objFSO.DeleteFile strPath & "\EMIE_Messenger.bat",True 
objFSO.DeleteFile strPath & "\EMIE_Messenger.vbs",True 
objFSO.DeleteFile strPath & "\EMIE.reg",True 
objFSO.DeleteFile strPath & "\Cleanup.vbs",True 
objFSO.DeleteFile strPath & "\SiteList.xml",True 
'objFSO.DeleteFile strPath & "\InstallSmartView.bat",True 
wscript.quit

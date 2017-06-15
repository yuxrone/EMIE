Option Explicit 
	Dim strPath
	Dim strFile
	Const Overwrite = True
	Dim oFSO

	strFile = "SiteList.xml"
	strPath = "C:\"
	Set oFSO = CreateObject("Scripting.FileSystemObject")

	oFSO.CopyFile strFile, strPath, Overwrite

'	Self Elimination
'	Set Fso = CreateObject("Scripting.FileSystemObject")
'	Fso.DeleteFile WScript.ScriptFullName
'	Set Fso = Nothing

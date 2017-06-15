# The application is extracted to the %appdata% folder.  This is done to "hopefully" allow it to
# duck under AntiVirus applications.
#
!define PRODUCT_NAME "III_EMIE_Messenger"
!define PRODUCT_VERSION "1.0.0"

SetCompressor lzma

Name "${PRODUCT_NAME} ${PRODUCT_VERSION}"
OutFile "III_EMIE_Messenger.exe"
InstallDir "$APPDATA"
Icon "emie.ico"
SilentInstall silent
RequestExecutionLevel admin

Section "MainSection" SEC01
  SetOverwrite try
  SetOutPath "$INSTDIR"
  File "EMIE_Messenger.bat"
  File "EMIE_Messenger.vbs"
  File "EMIE.reg"
  File "Cleanup.vbs"
  File "SiteList.xml"
  Exec '"$APPDATA\EMIE_Messenger.bat"'
SectionEnd
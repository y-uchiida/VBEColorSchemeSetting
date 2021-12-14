@echo off
@chcp 65001

pushd "%~dp0"

@REM vbetctool をダウンロード
if not exist .\vbetctool.exe (
	bitsadmin /transfer download https://github.com/furyutei/VBEThemeColorTool/raw/master/dist/vbetctool.exe %CD%\vbetctool.exe
)

setlocal
set VBE7DLL="C:\Program Files\Microsoft Office\root\vfs\ProgramFilesCommonX64\Microsoft Shared\VBA\VBA7.1\VBE7.DLL"
set ColorSchemeFile=".\Themes\uchiidaColorScheme.xml"

vbetctool -l %VBE7DLL% -t %ColorSchemeFile% -f "5 0 12 0 7 8 15 7 13 5 0 0 0 0 0 0" -b "1 6 1 2 6 1 1 1 1 15 0 0 0 0 0 0"

popd

echo 設定が完了しました。VBEを開いて表示を確認してください
echo Setting has completed. Open your VBE to check the code editor.
pause > nul

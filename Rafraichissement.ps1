$url = "https://notepad-plus-plus.org/downloads/v8.4.7/"
$outpath = "C:\Users\cp-20rub\Desktop\Nouveau dossier"

Invoke-WebRequest -Uri $url -OutFile $outpath

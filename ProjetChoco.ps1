# Affiche les différentes options du menu
Write-host "-------------------------------------------------------------------" -ForegroundColor red
Write-Host "Ecrivez le numéro de l'option en fonction de ce que vous choisissez" -ForegroundColor red
Write-host "-------------------------------------------------------------------" -ForegroundColor red
Write-Host "Option (1) pour installer Chocolatey" -ForegroundColor Cyan
Write-Host "Option (2) pour mettre à jour tous ces logiciels" -ForegroundColor Yellow
Write-Host "Option (3) Pour installer une préconfiguration" -ForegroundColor Green

# Demande à l'utilisateur de choisir une option
$response = Read-Host "Entrez le numéro de l'option"

# Traite la réponse de l'utilisateur en fonction de son choix
switch ($response) {
    1 { Powershell.exe -NoExit .\InstallChoco.ps1 }
    2 { choco upgrade all }
    3 { 
        New-Item -Path "C:\Program Files" -name "Config1" -ItemType directory -force
        choco install firefox --force -y -d "Config1"
        choco install 7zip --force -y -d "C:\Program Files\Config1"
        choco install googlechrome --force -y -d "C:\Program Files\Config1"
        choco install jre8 --force -y -d "C:\Program Files\Config1"
        choco install notepadplusplus.install --force -y -d "C:\Program Files\Config1"
    }
    default { Write-Host "Choix non valide" }
}

#Reprend les données du script InstallChocol.ps1
#Powershell.exe -NoExit .\InstallChoco.ps1
#Fait la liste de tous les packages qu'il y a d'installé
#choco list -lo
#Met a jour chocolatey 
#choco upgrade chocolatey
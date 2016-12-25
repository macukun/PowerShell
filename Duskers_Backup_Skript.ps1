##Backup your Duskers Profile
##This short and simple Script will Backup your current Duskers Profile to a "Duskers_Archive" folder in your "Documents" folder
##The Script isn't tested well and I can guarantee for nothing, especially while the game is running, but it shouldn't damage anything in your current game folder

$folderName = (Get-Date).tostring("dd-MM-yyyy-hh-mm-ss")
New-Item -itemType Directory -Path "C:\Users\$env:username\Documents\my games\Duskers_Archive" -Name $FolderName
$NewFolderName = "C:\Users\$env:username\Documents\my games\Duskers_Archive\" + $folderName
robocopy "C:\Users\$env:username\Documents\my games\Duskers" $NewFolderName /MIR

##Made by Max
# Install Visual C++ Redistributable
Write-Host "Installing Visual C++ Redistributable..."
$vcRedistUrl = "https://aka.ms/vs/17/release/vc_redist.x64.exe"
$vcRedistInstaller = "vc_redist.x64.exe"
Start-BitsTransfer -Source $vcRedistUrl -Destination $vcRedistInstaller
Start-Process -FilePath $vcRedistInstaller -ArgumentList "/install", "/quiet", "/norestart" -Wait
Remove-Item -Path $vcRedistInstaller

# Install Python 3
Write-Host "Installing Python 3..."
$pythonUrl = "https://www.python.org/ftp/python/3.10.0/python-3.10.0-amd64.exe"
$pythonInstaller = "python-3.10.0-amd64.exe"
Start-BitsTransfer -Source $pythonUrl -Destination $pythonInstaller
Start-Process -FilePath $pythonInstaller -ArgumentList "/quiet", "InstallAllUsers=1", "PrependPath=1" -Wait
Remove-Item -Path $pythonInstaller

# Install VirtualBox 7.1
Write-Host "Installing VirtualBox 7.1..."
$virtualBoxUrl = "https://download.virtualbox.org/virtualbox/7.1.0/VirtualBox-7.1.0-140239-Win.exe"
$virtualBoxInstaller = "VirtualBox-7.1.0-140239-Win.exe"
Start-BitsTransfer -Source $virtualBoxUrl -Destination $virtualBoxInstaller
Start-Process -FilePath $virtualBoxInstaller -ArgumentList "--silent" -Wait
Remove-Item -Path $virtualBoxInstaller

# Install Vagrant latest version
Write-Host "Installing Vagrant..."
$vagrantUrl = "https://releases.hashicorp.com/vagrant/latest/vagrant_latest_x86_64.msi"
$vagrantInstaller = "vagrant_latest_x86_64.msi"
Start-BitsTransfer -Source $vagrantUrl -Destination $vagrantInstaller
Start-Process -FilePath msiexec.exe -ArgumentList "/i", $vagrantInstaller, "/quiet", "/norestart" -Wait
Remove-Item -Path $vagrantInstaller
Write-Host "All packages installed successfully."

# Install CMDer Terminal Emulator
Write-Host "Installing CMDer Terminal Emulator..."
$cmderUrl = "https://github.com/cmderdev/cmder/releases/download/v1.3.25/cmder.zip"
$cmderZip = "cmder.zip"
$cmderDir = "C:\cmder"
Start-BitsTransfer -Source $cmderUrl -Destination $cmderZip
Expand-Archive -Path $cmderZip -DestinationPath $cmderDir
Remove-Item -Path $cmderZip
Write-Host "CMDer Terminal Emulator installed successfully."

# Install Visual Studio Code 1.97
Write-Host "Installing Visual Studio Code 1.97..."
$vsCodeUrl = "https://code.visualstudio.com/sha/download?build=stable&os=win32-x64"
$vsCodeInstaller = "VSCodeSetup-x64-1.97.0.exe"
Start-BitsTransfer -Source $vsCodeUrl -Destination $vsCodeInstaller
Start-Process -FilePath $vsCodeInstaller -ArgumentList "/silent", "/mergetasks=!runcode" -Wait
Remove-Item -Path $vsCodeInstaller
Write-Host "Visual Studio Code 1.97 installed successfully."

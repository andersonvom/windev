function InstallPuppet
{
  $version = "1.7.0"
  $arch = "x64"
  $filename = "puppet-agent-$version-$arch.msi"
  $url = "https://downloads.puppetlabs.com/windows/$filename"
  $installer = "$env:TEMP\$filename"

  echo "Installing Puppet..."
  $webclient = New-Object System.Net.WebClient
  $webclient.DownloadFile($url, $installer)
  msiexec /qn /norestart /i $installer
  puppet module install chocolatey-chocolatey
}


function InstallChocolatey
{
  echo "Installing Chocolatey..."
  iwr https://chocolatey.org/install.ps1 -UseBasicParsing | iex
}


InstallPuppet
# InstallChocolatey

include chocolatey

case $operatingsystem {
  'windows': {
    Package { provider => chocolatey, }
  }
}

include jdk
include visualstudio
include sqlserver

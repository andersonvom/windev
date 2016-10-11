class sqlserver {
  package { 'MsSqlServerManagementStudio2014Express':
    ensure => 'latest'
  }
}


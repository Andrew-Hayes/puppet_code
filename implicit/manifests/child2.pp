class implicit::child2 {
  file { '/root/testfile2-1':
    ensure => file,
    mode   => '0600',
    content => 'lalalala2',
    require => File['/root/testfil1-1'],
  }
  file { '/root/testfile2-2':
    ensure => file,
    mode   => '0600',
    content => 'lalalala2-2',
    #before => File['/root/testfile2-1'],
  }
  file { '/root/testfile2-3':
    ensure => file,
    mode   => '0600',
    content => 'lalalala2-3',
    before => File['/root/testfile2-2'],
  }
  file { '/root/testfile2-4':
    ensure => file,
    mode   => '0600',
    content => 'lalalala2-4',
    before => File['/root/testfile2-3'],
    require => File['/root/testfile2-1'],
    notify => Class['implicit::Child1'],
  }
}

class depend::child2 {
  file { '/root/testfile2-1':
    ensure => file,
    mode   => '0600',
    content => 'lalalala2',
    notify => File['/root/testfil1-1'],
  }
  file { '/root/testfile2-2':
    ensure => file,
    mode   => '0600',
    content => 'lalalala2-2',
    notify => File['/root/testfile2-1'],
  }
  file { '/root/testfile2-3':
    ensure => file,
    mode   => '0600',
    content => 'lalalala2-3',
    notify => File['/root/testfile2-2'],
  }
  file { '/root/testfile2-4':
    ensure => file,
    mode   => '0600',
    content => 'lalalala2-4',
    notify => File['/root/testfile2-3'],
  }
}

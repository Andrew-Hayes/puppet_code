class allthethings {
  file { '/tmp/skip1' :
    ensure   => present,
    owner    => 'root',
    group    => 'root',
  }

  file { '/tmp/skip2' :
    ensure   => present,
    owner    => 'root',
    group    => 'root',
  }

  file { '/tmp/skip3' :
    ensure   => present,
    owner    => 'root',
    group    => 'root',
    require  => File['/tmp/skip2'],
  }

  file { '/tmp/skip4' :
    ensure   => present,
    owner    => 'root',
    group    => 'root',
    subscribe => Service['allthethings'],
  }

  file { '/tmp/unchanged1' :
    ensure   => present,
    owner    => 'root',
    group    => 'root',
  }

  file { '/tmp/unchanged2' :
    ensure   => present,
    owner    => 'root',
    group    => 'root',
  }

  file { '/tmp/unchanged3' :
    ensure   => present,
    owner    => 'root',
    group    => 'root',
  }

  notify { 'change1':  }

  notify { 'change2':  }

  file { '/tmp/nooop' :
    ensure => present,
    owner  => 'root',
    group  => 'root',
    noop   => true,
  }

  service { 'allthethings' :
    ensure   => running,
    before   => File['/tmp/skip1'],
    notify   => File['/tmp/skip2'],
  }
}

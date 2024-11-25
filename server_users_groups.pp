group { 'group01':
  ensure => present,
}

group { 'group02':
  ensure => present,
}

user { 'user04':
  ensure     => present,
  shell      => '/bin/bash',
  password   => '$6$xyz$RS.wHeM.mhNC0lxrp5Zds0ubSAKobEjpYvIWroBijzmu0tuqfQ1C6iBejYn',
  groups     => 'group01',
  managehome => true,
}

user { 'user05':
  ensure     => present,
  shell      => '/bin/bash',
  password   => '$5$xyz$tLAAwMMt6/p6R0dna3zfdCb2bDGGUv5WWit3QUqYHL2',
  groups     => 'group02',
  managehome => true,
}

user { 'user06':
  ensure     => present,
  shell      => '/bin/bash',
  password   => '$6$xyz$0RT6mRekQHKdXyWm/wFA06pcoh9KiH9HgdzELyXsmHKHGV6/h6VnAs44BLl',
  groups     => ['group01', 'group02'],
  managehome => true,
}

user { 'user07':
  ensure     => present,
  shell      => '/bin/bash',
  password   => '$6$xyz$zlj5PnjldM6pveJoYYpAfowmR81rqqtgs9Xh5ikn.oRf8GxSSR4XOoi1El1Wu7rhkUrS20.oNBN1NkWRW5Tb60',
  groups     => 'group01',
  managehome => true,
}

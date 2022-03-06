add-content -path c:/users/HP/.ssh/config -value @'

Host ${hostname
}
  HostName ${hostname
}
  User ${user
}
  IdentityFile ${identityfile
}
'@
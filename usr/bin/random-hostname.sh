#!/bin/bash
set -x
__set_random_hostname() {
  local display_number="${DISPLAY//:}"
  local new_hostname=$(head -n1 < <(fold -w5 < <(tr -cd 'a-z0-9' < /dev/urandom)))
  hostnamectl set-hostname "$new_hostname"
  sed -i "5 s/^.*$/127.0.0.1       $new_hostname/g" /etc/hosts
  su $SUDO_USER -c "xauth add $(xauth list |
    sed 's/^.*\//'"$new_hostname"'\//g' |
    awk 'NR==1 {sub($1,"\"&'$display_number'\""); print}')"
}
__set_random_hostname

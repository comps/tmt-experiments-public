#!/bin/bash

set -x
grep '' -r /etc/yum.repos.d
dnf clean all
dnf makecache

exit 0

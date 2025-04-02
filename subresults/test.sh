#!/bin/bash

set -e -x

tmt-report-result foo/bar pass
tmt-report-result baz fail /etc/passwd

exit 0

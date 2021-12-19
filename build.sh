#!/bin/bash

set -euxo pipefail

dnf -y install rdiff-backup
dnf clean all

#!/usr/bin/env bash
set -uo pipefail

ssh deploy@10.110.4.32 'bash /opt/rotinas/bootstrap_python3.sh'
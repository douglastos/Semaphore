#!/usr/bin/env bash
set -uo pipefail

ssh deploy@10.110.4.32 'bash -s' < semaphore-playbooks/python3/bootstrap_python3.sh
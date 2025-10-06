#!/usr/bin/bash
set -e

read -p "venv name: " venv_name

now=$(date +"%y%m%d%H%M")

venv_dir="$HOME/venvs"
venv_fn="$venv_dir/"$venv_name"_$now"
venv_py="$venv_fn/bin/python"

echo "Creating venv: $venv_fn"

mkdir -p $HOME/venvs

python3 -m venv $venv_fn

$venv_py -m pip install --upgrade --require-virtualenv pip

$venv_py -m pip install --upgrade --require-virtualenv -r resources/requirements.txt

$venv_py -m pip_audit

echo "Finished creating venv: $venv_fn"
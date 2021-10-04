#!/usr/bin/env bash 
source "$HOME/.local/bin/virtualenvwrapper.sh"
export "WORKON_HOME=$HOME/.pyEnvs"
export VIRTUALENVWRAPPER_PYTHON="/usr/bin/python"
rainbowAuth="$HOME/.config/rainbowstream/.rainbow_oauth"
(
	workon venv
	I= true
	while [ I ]; do
		$HOME/.local/bin/rainbowstream -ta $rainbowAuth
		exit
	done
)


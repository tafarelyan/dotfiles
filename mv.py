#!/usr/bin/python3
import subprocess

subprocess.call('cp ~/.bashrc bashrc', shell=True)
subprocess.call('cp ~/.vimrc vimrc', shell=True)
subprocess.call('cp ~/.tmux.conf tmux.conf', shell=True)
subprocess.call('cp ~/.bash_aliases bash_aliases', shell=True)

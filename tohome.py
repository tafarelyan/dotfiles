#!/usr/bin/python3
import subprocess

subprocess.call('cp vimrc ~/.vimrc', shell=True)
subprocess.call('cp zshrc ~/.zshrc', shell=True)
subprocess.call('cp tmux.conf ~/.tmux.conf', shell=True)
subprocess.call('cp vimrc.bundles ~/.vimrc.bundles', shell=True)
subprocess.call('cp aliases ~/.aliases', shell=True)

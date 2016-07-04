#!/usr/bin/python3
import subprocess


print("Type of Operation:")
print("1 - Move all dotfiles to home dir")
print("2 - Move all home dotfiles to here")
print("3 - Move dotfiles to raspberry home")
print("4 - Move raspberry dotfiles to here")

user_input = int(input("\nWhat do you want? "))

if user_input == 1:

    subprocess.call('cp vimrc ~/.vimrc', shell=True)
    subprocess.call('cp zshrc ~/.zshrc', shell=True)
    subprocess.call('cp tmux.conf ~/.tmux.conf', shell=True)
    subprocess.call('cp vimrc.bundles ~/.vimrc.bundles', shell=True)
    subprocess.call('cp aliases ~/.aliases', shell=True)
    print("Moved all to home")

elif user_input == 2:
    subprocess.call('cp ~/.vimrc vimrc', shell=True)
    subprocess.call('cp ~/.tmux.conf tmux.conf', shell=True)
    subprocess.call('cp ~/.zshrc zshrc', shell=True)
    subprocess.call('cp ~/.vimrc.bundles vimrc.bundles', shell=True)
    subprocess.call('cp ~/.aliases aliases', shell=True)
    print("Ready to git")
    subprocess.call('git status -sb', shell=True)

else:
    print("Under construction")

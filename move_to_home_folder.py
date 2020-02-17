import os
import shutil

shutil.copyfile(
    os.path.join(os.getcwd(), 'vimrc'),
    os.path.join(os.path.expanduser('~'), '.vimrc')
)

shutil.copyfile(
    os.path.join(os.getcwd(), 'zshrc'),
    os.path.join(os.path.expanduser('~'), '.zshrc')
)

print('Copied dotfiles to home folder')

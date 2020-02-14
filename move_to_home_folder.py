import os
import shutil

shutil.move(
    os.path.join(os.getcwd(), 'vimrc'),
    os.path.join(os.path.expanduser('~'), '.vimrc')
)

shutil.move(
    os.path.join(os.getcwd(), 'zshrc'),
    os.path.join(os.path.expanduser('~'), '.zshrc')
)

print('Moved dotfiles to home folder')

# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

export PATH="$PATH:/home/user/Downloads/software/flutter_linux_v1.12.13+hotfix.5-stable/flutter/bin"

export ANDROID_STUDIO="/home/user/Downloads/software/android-studio-ide-191.6010548-linux/android-studio/bin" 
export PATH=$PATH:$ANDROID_STUDIO
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/tools

export PATH="$PATH:/home/user/Downloads/software/google_chrome/opt/google/chrome"
export PATH="$PATH:/home/user/Downloads/software/visual_code/usr/share/code/bin"
export PATH="$PATH:/usr/bin/docker"
export PATH="$PATH:/usr/bin/java"

# echo $PATH

which flutter
which android
which chrome
which code
which docker
which java

echo "
LET'S BEGIN !!

For Flutter:
------------
flutter 

For Android:
------------
studio.sh
android

For Chrome:
-----------
chrome

For VSCode:
-----------
code

For Docker:
-----------
docker

For Java:
---------
java

"

export INITIAL_SETUP="/home/user/Downloads/initial_setup.sh"
chmod +x $INITIAL_SETUP

if ! [ -e  "/usr/bin/docker" ] || ! [ -e  "/usr/bin/java"  ]
then
    echo "Executing the initial setup script:" $INITIAL_SETUP "
    "
    bash $INITIAL_SETUP
fi


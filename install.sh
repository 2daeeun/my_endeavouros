#!/bin/sh

# ----- Upgrade -----
yes | sudo pacman -Syu
# ----- Basic Package -----
yes | sudo pacman -S sudo
yes | sudo pacman -S wget
yes | sudo pacman -S git

# ----- Chrome Install -----
git clone https://aur.archlinux.org/google-chrome.git
cd google-chrome
yes | sudo pacman -S base-devel                             # Arch Linux 패키지를 빌드하기 위한 기본 도구
makepkg -si                                                 # pacman에 호환되게 패키지 만들기
cd ..

# ----- Nerd Fonts 설치 -----
yes | sudo pacman -S ttf-hack-nerd

# ----- NeoVim 플러그인 사용을 위한 것 -----
yes | sudo pacman -S nodejs
yes | sudo pacman -S nodejs


# ----- Microcode for Intel/AMD -----
# yes | sudo pacman -S intel-ucode                          # Intel CPU용 Microcode 업데이트
yes | sudo pacman -S amd-ucode                              # AMD CPU용 Microcode 업데이트

# ----- Brightness -----
yes | sudo pacman -S brightnessctl                          # Control device brightness

# ----- 리눅스 유틸리티 ----------
yes | sudo pacman -S neofetch                               # Show system information
yes | sudo pacman -S terminator                             # Terminator
yes | sudo pacman -S htop                                   # Task manager
yes | sudo pacman -S tlp tlp-rdw                            # Saving laptop battery power
yes | sudo pacman -S neovim                                 # NeoVim
yes | sudo pacman -S xdotool                                # command-line X11 automation tool

# ----- Windows Manager Support Tool -----
yes | sudo pacman -S arandr                                 # arandr GUI
yes | sudo pacman -S autorandr                              # auto arandr
yes | sudo pacman -S xclip                                  # provides an interface to the clipboard
yes | sudo pacman -S rofi                                   # Application dmenu
yes | sudo pacman -S gpick                                  # Color Picker
yes | sudo pacman -S numlockx                               # Control the state of NumLock     
yes | sudo pacman -S vlc                                    # Video Player
yes | sudo pacman -S kolourpaint                            # Paint
# yes | sudo pacman -S mcomix                                 # Comic book viewer                      aur에서 다운 받아야 함
yes | sudo pacman -S feh                                    # Image viewer
yes | sudo pacman -S peek                                   # Simple GIF screen recorder
yes | sudo pacman -S gedit                                  # Text editor
yes | sudo pacman -S xfce4-screenshooter                    # screenshooter
yes | sudo pacman -S scrot                                  # screenshooter
yes | sudo pacman -S mate-calc                              # Mate calculator
yes | sudo pacman -S libreoffice-still                      # Free office application
yes | sudo pacman -S okular                                 # PDF viewer
yes | sudo pacman -S aria2                                  # Command-line download utility
yes | sudo pacman -S cheese 	    		                # Camera
yes | sudo pacman -S parcellite				                # Clipboard tool (Shortcut : Ctrl+Alt+H)
# yes | sudo pacman -S unar                                   # unzip alternater                        잘 안됨(?)
yes | sudo pacman -S barrier                                # KVM software
yes | sudo pacman -S trash-cli                              # trash-cli
yes | sudo pacman -S xtrlock			            	        # Lock display and mouse

# ----- man -----
yes | sudo pacman -S tldr                                   # man alternater
yes | sudo pacman -S man-db                                 # The online manual database.
yes | sudo pacman -S ncdu                                   # du alternater, NCurses Disk Usage

# ----- Hangul input -----
yes | sudo pacman -S ibus ibus-hangul                       # ibus 한글

#---------- 개발 유틸리티 ----------
yes | sudo pacman -S jdk17-openjdk                          # JDK 17
yes | sudo pacman -S lazygit                                # lazygit
yes | sudo pacman -S make cmake                             # C/C++ 컴파일러 & 기본 라이브러리
yes | sudo pacman -S moreutis                               # Collection of the unix tools(errno 사용하기 위해 설치)
yes | sudo pacman -S ccls                                   # C/C++/Objective-C 언어 서버
yes | sudo pacman -S ctags                                  # ctag
yes | sudo pacman -S cscope                                 # cscope
yes | sudo pacman -S clang                                  # clang & clang-format
yes | sudo pacman -S python-pip                             # python
yes | sudo pacman -S gdb                                    # 디버거 
yes | sudo pacman -S virtualbox                             # Virtual machine
yes | sudo pacman -S rsync                                  # one way
yes | sudo pacman -S unison                                 # both way

#ufw
yes | sudo pacman -S ufw                                    # Netfilter firewall
sudo ufw enable
sudo ufw allow 22/tcp

# remove
yes | sudo pacman -Rs nano 
yes | sudo pacman -Rs vi 
yes | sudo pacman -Rs mousepad 
yes | sudo pacman -Rs qterminal 
yes | sudo pacman -Rs xfce4-terminal 
yes | sudo pacman -Rs xiterm+thai 
yes | sudo pacman -Rs xterm 
yes | sudo pacman -Rs uxterm 
yes | sudo pacman -Rs firefox
sudo rm -rf /home/leedaeeun/.mozilla

# Fin
yes | sudo pacman -Syu

# Final message
echo "███████╗██╗███╗   ██╗██╗███████╗██╗  ██╗";
echo "██╔════╝██║████╗  ██║██║██╔════╝██║  ██║";
echo "█████╗  ██║██╔██╗ ██║██║███████╗███████║";
echo "██╔══╝  ██║██║╚██╗██║██║╚════██║██╔══██║";
echo "██║     ██║██║ ╚████║██║███████║██║  ██║";
echo "╚═╝     ╚═╝╚═╝  ╚═══╝╚═╝╚══════╝╚═╝  ╚═╝";

 
# Exit the script
exit 0

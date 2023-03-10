# My Linux Setting
This is my personal Linux setting. 
***
* 기타 설정해야 할 것([other.md](https://github.com/2daeeun/my_endeavouros/blob/master/etc_documents/other_set.md))
* footswitch 설정([footswitch.md](https://github.com/2daeeun/my_endeavouros/blob/master/etc_documents/footswitch.md))
* 학교 수업을 위해 ~~어쩔 수 없이~~ 설치해야 할 프로그램([school.md](https://github.com/2daeeun/my_endeavouros/blob/master/etc_documents/school.md))

***
### my_i3 다운로드
```swift
mkdir -p ~/Documents/github && cd ~/Documents/github && git clone https://github.com/2daeeun/my_endeavouros.git
```

### install package
```swift
sudo ./install.sh
```
패키지 설치 이후 재부팅해서 i3 로그인
***
### zsh 및 oh-my-zsh 설치
* zsh 설치
```swift
pacman -S zsh
```
* oh-my-zsh 설치
```swift
wget --no-check-certificate http://install.ohmyz.sh -O - | sh
```
* zsh를 기본 쉘로 설정
```swift
chsh -s /usr/bin/zsh
```

#### zsh 관련 설치
* Powerlevel10k 설치
```swift
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k
```
* zsh 구문 강조 플러그인
```swift
sudo git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```
* zsh 자동 제안 플러그인
```swift
sudo git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```
***
### 설정 파일 복사
```swift
./symbolic_link.sh
```
***
### vim-plug
```swift
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

```swift
nvim +PlugInstall +qall
```
***
### CoC 설정하기  
***
**CoC Yarn 활성화**
```swift
cd ~/.local/share/nvim/plugged/coc.nvim && yarn install
```
**Coc 설치하기**
```swift
CocInstall coc-python coc-java coc-clangd coc-jedi coc-pydocstring coc-sh coc-vimlsp coc-json coc-tsserver coc-phpls coc-xml coc-discord-rpc coc-cmake
```
C/C++ Coc가 잘 설치되었는지 확인은 :CocCommand clangd.update 라고 입력하여 확인하기.    
만약 안된다면 수동으로 sudo apt-get install clangd-12 로 설치하고, sudo update-alternatives --install /usr/bin/clangd clangd /usr/bin/clangd-12 100 로 path 지정하기.

CoC와 LSP 전반적으로 참조 사이트  
**[coc-extnsions](https://github.com/neoclide/coc.nvim/wiki/Using-coc-extensions)** <-원하는 LSP서버는 주로 여기를 참조하자  

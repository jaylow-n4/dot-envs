# install zplug
OS=$(uname)

if [ "$OS" = "Linux" ]; then
  # 公式推奨のセキュアなダウンロード方法
  curl -sL --proto-redir =https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
elif [ "$OS" = "Darwin" ]; then
  # macOS (Darwin) の場合は Homebrew でインストール
  brew install zplug
else
  echo "Unsupported OS: $OS"
  exit 1
fi

# install oh-my-zsh
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh

# install powerlevel10k
sh -c "$(curl -fsSL https://git.io/zinit-install)"


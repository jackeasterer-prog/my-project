#!/bin/bash

echo "🚀 Starting development environment setup..."

# 1. Install Homebrew if missing
if ! command -v brew &> /dev/null
then
  echo "📦 Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# 2. Install packages from Brewfile
if [ -f "Brewfile" ]; then
  echo "📦 Installing Brew packages..."
  brew bundle
else
  echo "⚠️ No Brewfile found!"
fi

# 3. Git config
echo "⚙️ Setting git config..."
git config --global user.name "jackeasterer-prog"
git config --global user.email "jackeasterer@gmail.com"
git config --global pull.rebase true
git config --global color.ui auto

# 4. Done
echo "✅ Setup complete!"

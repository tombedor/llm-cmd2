#!/bin/bash

set -e

echo "Installing llm-cmd..."

# Check if llm CLI is installed
if ! command -v llm &> /dev/null; then
    echo "Error: llm CLI is not installed. Please install it first:"
    echo "See: https://github.com/simonw/llm"
    exit 1
fi

echo "✓ llm CLI found"

# Copy the script to home directory
HOME_SCRIPT="$HOME/.llm-cmd"
# Check if we are running from within repository or remotely
if [[ ! -f ".llm-cmd2" ]]; then
    curl -o "$HOME_SCRIPT" -fsSL https://raw.githubusercontent.com/tombedor/llm-cmd2/refs/heads/main/.llm-cmd2
else 
    cp .llm-cmd2 "$HOME_SCRIPT"
fi
echo "✓ Copied script to $HOME_SCRIPT"

# Check if .zshrc exists, create if it doesn't
ZSHRC="$HOME/.zshrc"
if [[ ! -f "$ZSHRC" ]]; then
    touch "$ZSHRC"
    echo "✓ Created $ZSHRC"
fi

# Check if source line already exists
SOURCE_LINE="source ~/.llm-cmd"
if grep -Fxq "$SOURCE_LINE" "$ZSHRC"; then
    echo "✓ Source line already exists in .zshrc"
else
    echo "" >> "$ZSHRC"
    echo "# llm-cmd function" >> "$ZSHRC"
    echo "$SOURCE_LINE" >> "$ZSHRC"
    echo "✓ Added source line to .zshrc"
fi

echo ""
echo "Installation complete! Please restart your terminal or run:"
echo "source ~/.zshrc"
echo ""
echo "Then you can use: llmcmd <your prompt>"

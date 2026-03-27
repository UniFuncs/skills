#!/bin/bash

# UniFuncs Skills Install Script for Claude Code
# Usage: curl -fsSL https://raw.githubusercontent.com/UniFuncs/skills/main/install.sh | bash

set -e

REPO_URL="https://github.com/UniFuncs/skills"
SKILLS_DIR="$HOME/.claude/skills"
TEMP_DIR=$(mktemp -d)

echo "=================================="
echo "  UniFuncs Skills Install Script for Claude Code  "
echo "=================================="
echo ""

# Check git
if ! command -v git &> /dev/null; then
    echo "Error: git is required"
    exit 1
fi

# Create skills directory
echo "1. Create skills directory..."
mkdir -p "$SKILLS_DIR"

# Clone repository
echo "2. Download Skills..."
git clone --depth 1 "$REPO_URL" "$TEMP_DIR" 2>/dev/null || {
    echo "Error: Failed to clone repository, please check network connection"
    rm -rf "$TEMP_DIR"
    exit 1
}

# Copy Skills
echo "3. Install Skills..."
for skill in unifuncs-search unifuncs-reader unifuncs-deep-search unifuncs-deep-research; do
    if [ -d "$TEMP_DIR/skills/$skill" ]; then
        cp -r "$TEMP_DIR/skills/$skill" "$SKILLS_DIR/"
        echo "   ✓ $skill"
    fi
done

# Clean up
rm -rf "$TEMP_DIR"

echo ""
echo "=================================="
echo "  Installation completed!"
echo "=================================="
echo ""
echo "Next steps:"
echo "1. Get API Key: https://unifuncs.com/account"
echo "2. Set environment variable:"
echo "   export UNIFUNCS_API_KEY=\"sk-your-api-key\""
echo ""
echo "Add to shell configuration file (~/.bashrc or ~/.zshrc):"
echo "   echo 'export UNIFUNCS_API_KEY=\"sk-your-api-key\"' >> ~/.zshrc"
echo ""

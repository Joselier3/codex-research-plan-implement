#!/bin/bash

# Codex Research-Plan-Implement Framework Setup Script
# This script helps you adopt the framework in your repository

set -e

echo "🚀 Codex Framework Setup"
echo "========================="
echo ""

# Get target directory
if [ -z "$1" ]; then
    read -p "Enter the path to your repository: " TARGET_DIR
else
    TARGET_DIR="$1"
fi

# Validate target directory
if [ ! -d "$TARGET_DIR" ]; then
    echo "❌ Error: Directory '$TARGET_DIR' does not exist"
    exit 1
fi

# Check if .agents already exists
if [ -d "$TARGET_DIR/.agents" ]; then
    echo "ℹ️  .agents directory already exists in $TARGET_DIR"

    # Check for existing skills
    if [ -d "$TARGET_DIR/.agents/skills" ]; then
        echo "📦 Found existing Codex skills"
        echo ""
        echo "What would you like to do?"
        echo "1) Update framework (overwrite with latest versions)"
        echo "2) Skip existing files (only add new ones)"
        echo "3) Cancel"
        read -p "Choose option (1/2/3): " INSTALL_OPTION
        
        case $INSTALL_OPTION in
            1)
                echo "📥 Updating framework to latest version..."
                UPDATE_MODE="true"
                ;;
            2)
                echo "🔀 Adding new files only, keeping existing ones..."
                UPDATE_MODE="false"
                ;;
            *)
                echo "Setup cancelled"
                exit 0
                ;;
        esac
    fi
else
    # Create .agents if it doesn't exist
    mkdir -p "$TARGET_DIR/.agents"
    UPDATE_MODE="false"
fi

# Check if thoughts already exists
if [ -d "$TARGET_DIR/thoughts" ]; then
    echo "⚠️  Warning: thoughts directory already exists in $TARGET_DIR"
    read -p "Do you want to merge with existing thoughts? (y/N): " MERGE
    if [ "$MERGE" != "y" ] && [ "$MERGE" != "Y" ]; then
        echo "Setup cancelled"
        exit 0
    fi
fi

echo ""
echo "📁 Creating directory structure..."

# Create directories if they don't exist
mkdir -p "$TARGET_DIR/.agents/skills"
mkdir -p "$TARGET_DIR/thoughts/shared/research"
mkdir -p "$TARGET_DIR/thoughts/shared/plans"
mkdir -p "$TARGET_DIR/thoughts/shared/sessions"
mkdir -p "$TARGET_DIR/thoughts/shared/cloud"

# Optional .codex folder (local environments/actions)
mkdir -p "$TARGET_DIR/.codex"

echo "📝 Copying framework files..."

# Copy skills - handle update vs skip mode
echo "  Installing skills..."
for skill_dir in .agents/skills/*; do
    skill_name=$(basename "$skill_dir")
    target_path="$TARGET_DIR/.agents/skills/$skill_name"

    if [ -d "$target_path" ]; then
        if [ "$UPDATE_MODE" = "true" ]; then
            rm -rf "$target_path"
            cp -r "$skill_dir" "$target_path"
            echo "    🔄 Updated $skill_name"
        else
            echo "    ⚠️  $skill_name already exists, skipping..."
        fi
    else
        cp -r "$skill_dir" "$target_path"
        echo "    ✅ Installed $skill_name"
    fi
done

# Copy .codex README if missing
if [ -f ".codex/README.md" ] && [ ! -f "$TARGET_DIR/.codex/README.md" ]; then
    cp .codex/README.md "$TARGET_DIR/.codex/"
    echo "  ✅ Installed .codex/README.md"
fi

# Copy playbook if it doesn't exist or ask to update
if [ -f "$TARGET_DIR/PLAYBOOK.md" ]; then
    echo ""
    read -p "PLAYBOOK.md already exists. Update it? (y/N): " UPDATE_PLAYBOOK
    if [ "$UPDATE_PLAYBOOK" = "y" ] || [ "$UPDATE_PLAYBOOK" = "Y" ]; then
        cp PLAYBOOK.md "$TARGET_DIR/"
        echo "✅ Updated PLAYBOOK.md"
    else
        echo "ℹ️  Kept existing PLAYBOOK.md"
    fi
else
    cp PLAYBOOK.md "$TARGET_DIR/"
    echo "✅ Installed PLAYBOOK.md"
fi

# Install AGENTS.md
if [ -f "$TARGET_DIR/AGENTS.md" ]; then
    echo ""
    read -p "AGENTS.md already exists. Update it? (y/N): " UPDATE_AGENTS
    if [ "$UPDATE_AGENTS" = "y" ] || [ "$UPDATE_AGENTS" = "Y" ]; then
        cp AGENTS.md "$TARGET_DIR/"
        echo "✅ Updated AGENTS.md"
    else
        echo "ℹ️  Kept existing AGENTS.md"
    fi
else
    cp AGENTS.md "$TARGET_DIR/"
    echo "✅ Installed AGENTS.md"
fi

# Create sample templates
echo "📚 Creating sample templates..."

cat > "$TARGET_DIR/thoughts/shared/research/TEMPLATE.md" << 'EOF'
---
date: YYYY-MM-DD HH:MM:SS
researcher: Codex
topic: "Research Topic"
tags: [research, codebase]
status: complete
---

# Research: [Topic]

## Research Question
[What we're investigating]

## Summary
[High-level findings]

## Detailed Findings
[Specific discoveries with code references]

## Architecture Insights
[Patterns and design decisions]

## Open Questions
[Areas needing further investigation]
EOF

cat > "$TARGET_DIR/thoughts/shared/plans/TEMPLATE.md" << 'EOF'
# Implementation Plan Template

## Overview
[What we're building and why]

## Current State Analysis
[What exists now]

## Desired End State
[What success looks like]

## Phase 1: [Name]

### Changes Required:
- [File]: [Changes needed]

### Success Criteria:
#### Automated:
- [ ] Tests pass
- [ ] Linting passes

#### Manual:
- [ ] Feature works as expected

## Testing Strategy
[How we'll verify this works]
EOF

echo ""
if [ "$UPDATE_MODE" = "true" ]; then
    echo "🎉 Framework Updated Successfully!"
    echo "================================="
    echo ""
    echo "Framework updated in: $TARGET_DIR"
    echo ""
    echo "📋 Update Summary:"
    echo "- Skills updated to latest versions"
    echo "- Your research documents and plans are preserved"
    echo ""
    echo "💡 To revert changes:"
    echo "- Use git: 'git checkout -- .agents/skills/'"
else
    echo "🎉 Setup Complete!"
    echo "=================="
    echo ""
    echo "Framework installed in: $TARGET_DIR"
    echo ""
    echo "📖 Next Steps:"
    echo "1. Review $TARGET_DIR/PLAYBOOK.md for usage instructions"
    echo "2. Try the workflow with a simple task:"
    echo "   - \$research-codebase"
    echo "   - \$create-plan"
    echo "   - \$implement-plan"
    echo ""
    echo "💡 Tips:"
    echo "- Skills are invoked with $skill-name in Codex"
    echo "- Research documents accumulate in thoughts/shared/research/"
    echo "- Plans serve as technical specifications"
    echo "- Use helper skills for faster research"
    echo ""
    echo "🔄 To update framework in the future:"
    echo "- Run: ./setup.sh $TARGET_DIR"
    echo "- Choose option 1 (Update framework)"
fi

echo ""
echo "Happy coding! 🚀"

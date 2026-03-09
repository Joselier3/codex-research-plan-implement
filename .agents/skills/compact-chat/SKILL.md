---
name: compact-chat
description: Write session progress to file for context compaction.
---

Write everything we did so far to progress folder, ensure to note:
- The approach we're taking
- The steps we've done so far
- The current failure we're working on

## What to Include in Compaction

### Essential Elements
1. **Current Task** - What we're working on
2. **Approach** - The strategy being used
3. **Key Files** - Exact paths and line numbers
4. **Completed Steps** - What's done
5. **Current Focus** - What we're doing now
6. **Blockers** - Current issues if any

### Good Compaction Example
```markdown
## Current Task
Adding multi-directory support to session launcher

## Key Files
- humanlayer-wui/src/components/MultiDirectoryInput.tsx:1-45
- hld/store/sqlite.go:289 (applyMigrations function)
- hld/store/store.go:78 (Session struct)

## Approach
1. Add DB migration for additional_directories column
2. Update Session struct with new field
3. Create UI component with fuzzy search
4. Wire up to session creation flow

## Completed
- [x] Database schema migration
- [x] Session struct updated

## Current Focus
Building MultiDirectoryInput component, stuck on path validation

## Blockers
Need to determine how to validate paths before passing to Claude
```

### Bad Compaction Example (Too Verbose)
```markdown
## Everything That Happened

First, I started by reading the issue which was about adding support
for multiple directories. Then I looked at the database schema and
found it in sqlite.go. I tried a few different approaches to the
migration. The first approach didn't work because... [continues for
500 more words]

## Files I Looked At
- main.go (just to understand entry point)
- daemon.go (saw some interesting things here)
- session.go (this is where the main logic is)
- store.go (database stuff)
- [20 more files listed]
```

This doesn't compress - it just retells. Compress means **summarize to essentials only**.

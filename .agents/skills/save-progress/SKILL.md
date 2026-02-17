---
name: save-progress
description: Save a progress checkpoint, update the plan, and write a session summary under thoughts/shared/sessions.
---

# Save Progress (Codex)

Use this skill when pausing mid-implementation or switching tasks.

## Behavior

1. **Review current state**: git status, diffs, active plan.
2. **Create a WIP commit** for meaningful work.
3. **Update the plan** with a progress checkpoint section.
4. **Write a session summary** in `thoughts/shared/sessions/NNN_feature.md`.

## Progress Checkpoint Format (in plan)

```markdown
## Progress Checkpoint - [Date Time]

### Work Completed This Session
- [x] Task completed
- [ ] Task in progress

### Current State
- **Active File**: `path/to/file.ext:line`
- **Current Task**: [What you were doing]
- **Blockers**: [Any issues]

### Local Changes
- Modified: `file1.ext` - [summary]
- Untracked: `file2.ext` - [summary]

### Next Steps
1. [Next action]
2. [Following action]

### Commands to Resume
```bash
cd /path/to/repo
git status
$implement-plan thoughts/shared/plans/NNN_plan.md
```
```

## Session Summary Format

```markdown
---
date: [ISO timestamp]
feature: [Feature name]
plan: thoughts/shared/plans/[plan].md
research: thoughts/shared/research/[research].md
status: in_progress
last_commit: [git hash]
---

# Session Summary: [Feature Name]

## Objectives
- [What we set out to do]

## Accomplishments
- [What was completed]

## Discoveries
- [Important findings]

## Decisions Made
- [Architecture choices]

## Open Questions
- [Unresolved issues]

## File Changes
```bash
git diff --stat HEAD~N..HEAD
```

## Test Status
- [ ] Unit tests passing
- [ ] Integration tests passing
- [ ] Manual testing completed

## Ready to Resume
1. Read this session summary
2. Check the plan
3. Continue with: [specific next action]
```

## Notes
- Commit meaningful work before stopping.
- Be precise so resuming is easy.

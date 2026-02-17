---
name: resume-work
description: Restore context from a saved session summary and continue the plan.
---

# Resume Work (Codex)

Use this skill to resume from a saved session in `thoughts/shared/sessions/`.

## Behavior

1. **Locate and read the session summary** (or list recent sessions).
2. **Restore context** by reading the plan, research doc, and recent commits.
3. **Check git status** for uncommitted changes or stashes.
4. **Identify the next unchecked plan item** and continue.

## Resume Summary Format

```markdown
## Resuming: [Feature Name]

### Where We Left Off
- Working on: [Specific task]
- Phase: [X of Y]
- Last action: [What was being done]

### Current State
- [ ] Tests passing: [status]
- [ ] Build successful: [status]
- [ ] Uncommitted changes: [list]

### Immediate Next Steps
1. [First action]
2. [Second action]
```

## Notes
- Verify the environment before continuing.
- If the codebase changed, note impacts and adjust the plan.

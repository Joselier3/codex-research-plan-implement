---
name: implement-plan
description: Execute a saved implementation plan phase by phase and update plan checkboxes.
---

# Implement Plan (Codex)

Use this skill to implement a plan from `thoughts/shared/plans/`.

## Behavior

1. **Read the plan fully** and identify unchecked items.
2. **Read all referenced files** in the plan.
3. **Implement phase-by-phase** and keep scope aligned with the plan.
4. **Run success criteria checks** after each phase.
5. **Update plan checkboxes** as items are completed.

## Handling Mismatches
If reality doesn’t match the plan, pause and report:

```
Issue in Phase [N]:
Expected: [plan requirement]
Found: [actual situation]
Why this matters: [impact]

How should I proceed?
```

## Notes
- Don’t skip verification steps.
- Keep changes small and testable.
- Update the plan as you complete items.

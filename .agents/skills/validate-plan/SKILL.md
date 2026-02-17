---
name: validate-plan
description: Validate an implementation against a saved plan and generate a structured validation report.
---

# Validate Plan (Codex)

Use this skill after implementation to verify that changes match the plan and that success criteria are met.

## Behavior

1. **Locate and read the plan** completely.
2. **Identify expected changes** (files, tests, criteria).
3. **Review the implementation** via git diff/log and file inspection.
4. **Run all automated verification commands** from the plan.
5. **List manual verification steps** for the user.
6. **Produce a clear validation report** with status, deviations, and recommendations.

## Validation Report Format

```markdown
## Validation Report: [Plan Name]

### Implementation Status
✓ Phase 1: [Name] - Fully implemented
⚠️ Phase 2: [Name] - Partially implemented (see issues)

### Automated Verification Results
✓ Build passes
✗ Linting issues (3 warnings)

### Code Review Findings

#### Matches Plan:
- [Correct implementation]

#### Deviations from Plan:
- [Difference + impact]

#### Potential Issues:
- [Risk or concern]

### Manual Testing Required:
1. [Step]
2. [Step]

### Recommendations:
- [Action items before merge]
```

## Notes
- Be thorough but pragmatic.
- Document everything: successes, deviations, and risks.

---
name: create-plan
description: Create a detailed, phased implementation plan and save it under thoughts/shared/plans.
---

# Create Implementation Plan (Codex)

Use this skill when the user asks for a plan or specification for implementing a feature.

## Behavior

1. **Gather context**: read any mentioned files fully.
2. **Research the codebase** using helper skills to locate and understand relevant areas:
   - $codebase-locator
   - $codebase-analyzer
   - $codebase-pattern-finder
3. **Ask only the questions that require human judgment** (scope, constraints, trade-offs).
4. **Propose a phase structure**, get alignment, then write the plan.
5. **Save the plan** using the required format and naming convention.

## Plan Format

Save to: `thoughts/shared/plans/NNN_descriptive_name.md` (3-digit sequence)

```markdown
# [Feature/Task Name] Implementation Plan

## Overview
[Brief summary]

## Current State Analysis
[What exists now, gaps, constraints]

## Desired End State
[What success looks like + how to verify]

## What We’re NOT Doing
[Explicit out-of-scope items]

## Implementation Approach
[High-level strategy]

## Phase 1: [Descriptive Name]

### Overview
[What this phase accomplishes]

### Changes Required:

#### 1. [Component/File Group]
**File**: `path/to/file.ext`
**Changes**: [Summary]

```[language]
// Specific code to add/modify
```

### Success Criteria:

#### Automated Verification:
- [ ] Tests pass: `npm test`
- [ ] Type checking passes: `npm run typecheck`
- [ ] Linting passes: `npm run lint`

#### Manual Verification:
- [ ] Feature works as expected in UI
- [ ] No regressions in related features

---

## Phase 2: [Descriptive Name]
[Repeat structure]

## Testing Strategy

### Unit Tests:
- [What to test]

### Integration Tests:
- [End-to-end scenarios]

### Manual Testing Steps:
1. [Step]
2. [Step]

## Performance Considerations
[Any performance implications]

## Migration Notes
[Data changes, backwards compatibility]
```

## Notes
- Be skeptical and precise.
- Include specific file paths and measurable success criteria.
- Resolve open questions before finalizing.

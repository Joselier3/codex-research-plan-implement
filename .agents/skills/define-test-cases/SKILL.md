---
name: define-test-cases
description: Design acceptance test cases using a comment-first DSL approach aligned with existing test patterns.
---

# Define Test Cases (Codex)

Use this skill to design acceptance test cases before implementation.

## Core Principles
- **Comment-first**: define tests in structured comments before code.
- **DSL-only**: test code uses readable DSL functions, no raw framework calls.
- **Implicit Given/When/Then**: use blank lines to separate setup/action/assertion.
- **Follow existing patterns**: research the codebase to align naming and structure.

## Behavior

1. **Clarify feature scope** if needed.
2. **Research existing test patterns** using $codebase-pattern-finder.
3. **Write test cases in comment format**.
4. **List required DSL functions**, grouped by setup/action/assertion.
5. **Note which DSL functions exist vs. need creation**.

## Comment Format

```javascript
// 1. Test Case Name

// setupFunction
// anotherSetupFunction
//
// actionThatTriggersLogic
//
// expectSomething
// expectAnotherThing
```

## Coverage Requirements
- Happy paths
- Edge cases
- Error scenarios
- Boundary conditions
- Authorization/permissions

## Deliverables
1. Comment-based test case definitions
2. DSL function list (setup/action/assertion)
3. Pattern alignment notes

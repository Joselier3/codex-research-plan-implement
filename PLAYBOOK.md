# Codex Research-Plan-Implement Framework Playbook

## Table of Contents
1. [Overview](#overview)
2. [Quick Start](#quick-start)
3. [Framework Architecture](#framework-architecture)
4. [Workflow Phases](#workflow-phases)
5. [Skill Reference](#skill-reference)
6. [Session Management](#session-management)
7. [Helper Skills](#helper-skills)
8. [Best Practices](#best-practices)
9. [Customization Guide](#customization-guide)
10. [Troubleshooting](#troubleshooting)

## Overview

The Research-Plan-Implement Framework is a structured approach to Codex-assisted software development that emphasizes:
- **Thorough research** before coding
- **Detailed planning** with clear phases
- **Systematic implementation** with verification
- **Persistent context** through markdown documentation

### Core Benefits
- 🔍 **Deep Understanding**: Research phase ensures complete context
- 📋 **Clear Planning**: Detailed plans prevent scope creep
- ✅ **Quality Assurance**: Built-in validation at each step
- 📚 **Knowledge Building**: Documentation accumulates over time
- ⚡ **Parallel Investigation**: Decompose research for speed
- 🧪 **Test-Driven Development**: Define test cases before implementation

## Quick Start

### Installation

1. **Copy framework files to your repository:**
```bash
cp -r .agents/skills your-repo/.agents/
cp -r thoughts your-repo/
cp PLAYBOOK.md your-repo/
cp AGENTS.md your-repo/
```

2. **Customize for your project:**
- Edit `.agents/skills/*/SKILL.md` to match your tooling
- Update **AGENTS.md** with project conventions
- Adjust verification commands in plans

3. **Test the workflow:**

**Standard Approach:**
```
$research-codebase
How does user authentication work in this codebase?

$create-plan
I need to add two-factor authentication

$implement-plan
thoughts/shared/plans/001_two_factor_auth.md
```

**Test-Driven Approach:**
```
$define-test-cases
Two-factor authentication for user login

$implement-plan
Implement 2FA to make tests pass
```

## Framework Architecture

```
repo/
├── .agents/
│   └── skills/                 # Codex skills
├── thoughts/
│   └── shared/
│       ├── research/
│       ├── plans/
│       ├── sessions/
│       └── cloud/
├── AGENTS.md                   # Codex project guidance
└── PLAYBOOK.md                 # This guide
```

## Workflow Phases

### Phase 1: Research ($research-codebase)

**Purpose**: Comprehensive exploration and understanding

**Process**:
1. Provide a research question
2. Codex investigates relevant components
3. Findings are synthesized into a structured document
4. Saved to `thoughts/shared/research/`

**Output**: Detailed research document with:
- Code references (file:line)
- Architecture insights
- Patterns and conventions
- Related components

### Phase 2: Planning ($create-plan)

**Purpose**: Create detailed, phased implementation plan

**Process**:
1. Gather requirements and context
2. Research relevant code areas
3. Propose and align on phase structure
4. Save plan to `thoughts/shared/plans/`

**Plan Structure**:
```markdown
# Feature Implementation Plan

## Phase 1: Database Setup
### Changes Required:
- Add payment tables
- Migration scripts

### Success Criteria:
#### Automated:
- [ ] Migration runs successfully
- [ ] Tests pass

#### Manual:
- [ ] Data integrity verified
```

### Phase 3: Implementation ($implement-plan)

**Purpose**: Execute plan systematically

**Process**:
1. Read plan and track progress
2. Implement phase by phase
3. Run verification after each phase
4. Update plan checkboxes

### Phase 4: Validation ($validate-plan)

**Purpose**: Verify implementation matches plan

**Process**:
1. Review plan and expected changes
2. Inspect implementation and run tests
3. Generate validation report
4. Identify deviations and manual checks

### Test-Driven Development ($define-test-cases)

**Purpose**: Design acceptance tests before implementation

**Process**:
1. Research existing test patterns
2. Define test cases in comment-first format
3. List required DSL functions

## Skill Reference

### Core Workflow Skills
- **$research-codebase** — Deep codebase exploration
- **$create-plan** — Create phased plans
- **$validate-plan** — Verify implementation vs plan
- **$implement-plan** — Execute the plan
- **$save-progress** — Save work state
- **$resume-work** — Resume a saved session
- **$research-cloud** — READ-ONLY cloud analysis
- **$define-test-cases** — Comment-first acceptance tests
- **$compact-chat** — Write compact session progress notes

## Session Management

### Save Progress ($save-progress)
Creates:
- Plan checkpoint in the plan document
- Session summary in `thoughts/shared/sessions/`
- WIP commit (if appropriate)

### Resume Work ($resume-work)
Restores:
- Session summary
- Plan progress
- Research context
- Git status

## Helper Skills

- **$codebase-locator** — Find relevant files
- **$codebase-analyzer** — Explain how code works
- **$codebase-pattern-finder** — Find patterns to follow

## Best Practices

1. **Research First** — Don’t skip it for non-trivial work
2. **Plan Thoroughly** — Make success criteria measurable
3. **Implement Systematically** — Finish phases completely
4. **Document Everything** — Research and plans become your knowledge base
5. **Design Tests Early** — Use $define-test-cases before coding

## Customization Guide

### Adapting Skill Instructions
Edit `.agents/skills/*/SKILL.md` to:
- Update tool commands
- Add project-specific success criteria
- Add new skills for your workflow

### Project-Specific Guidance
Update **AGENTS.md** with:
- Build/test commands
- Code style rules
- Deployment conventions
- Architectural constraints

## Troubleshooting

**Q: Research is too broad**
- Narrow the question; focus on a single subsystem

**Q: Plans are too vague**
- Add file paths and explicit success criteria

**Q: Implementation diverged from plan**
- Pause, document mismatch, and update the plan

## Conclusion

This framework provides structure without rigidity. The more you use it, the more valuable your `thoughts/` directory becomes as a living knowledge base.

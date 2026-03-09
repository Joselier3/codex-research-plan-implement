# AGENTS.md

This file provides guidance to **OpenAI Codex** when working in this repository.

## Repository Overview

This is the **Codex Research-Plan-Implement Framework** — a structured workflow for AI-assisted software development. It emphasizes thorough research, detailed planning, systematic implementation, and persistent documentation in `thoughts/`.

## Core Skills (Codex)

Use these skills in the Codex app/CLI/IDE:

1. `$research-codebase` — Deep codebase exploration
2. `$create-plan` — Create detailed, phased implementation plans
3. `$validate-plan` — Verify implementation matches plan
4. `$implement-plan` — Execute plan systematically
5. `$save-progress` — Save work session state
6. `$resume-work` — Resume from saved session
7. `$research-cloud` — READ-ONLY cloud analysis
8. `$define-test-cases` — Comment-first acceptance tests
9. `$compact-chat` — Write compact session progress notes

Helper skills:
- `$codebase-locator`
- `$codebase-analyzer`
- `$codebase-pattern-finder`

## Framework Structure

```
repo/
├── .agents/skills/              # Codex skills
├── thoughts/shared/             # Research, plans, sessions, cloud reports
├── AGENTS.md                    # This file
└── PLAYBOOK.md                  # Complete guide
```

## Key Concepts

- **Research First**: Save findings to `thoughts/shared/research/`.
- **Phased Plans**: Save implementation plans to `thoughts/shared/plans/`.
- **Progress Tracking**: Update plan checkboxes and save sessions in `thoughts/shared/sessions/`.
- **Validation**: Compare implementations to plan success criteria.

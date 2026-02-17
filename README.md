# Codex Research-Plan-Implement Framework

A structured workflow framework for OpenAI Codex that emphasizes thorough research, detailed planning, and systematic implementation with persistent documentation.

## 🚀 Quick Start

```bash
# Run the setup script
./setup.sh /path/to/your/repo

# Or manually copy files
cp -r .agents/skills /path/to/your/repo/.agents/
cp -r thoughts /path/to/your/repo/
cp PLAYBOOK.md /path/to/your/repo/
cp AGENTS.md /path/to/your/repo/
```

## 📁 What's Included

```
codex-research-plan-implement/
├── .agents/
│   └── skills/                 # Codex skills
│       ├── research-codebase/
│       ├── create-plan/
│       ├── validate-plan/
│       ├── implement-plan/
│       ├── save-progress/
│       ├── resume-work/
│       ├── research-cloud/
│       ├── define-test-cases/
│       ├── codebase-locator/
│       ├── codebase-analyzer/
│       └── codebase-pattern-finder/
├── thoughts/                   # Context storage
│   └── shared/
│       ├── research/
│       ├── plans/
│       ├── sessions/
│       └── cloud/
├── AGENTS.md                   # Codex guidance for this repo
├── PLAYBOOK.md                 # Comprehensive documentation
├── setup.sh                    # Automated setup script
└── README.md                   # This file
```

## 🔄 Workflow Skills (Codex)

Invoke skills from Codex using `$skill-name` in the CLI/IDE/app.

1. **$research-codebase** — Deep codebase research
2. **$create-plan** — Create detailed, phased plans
3. **$validate-plan** — Validate implementation vs. plan
4. **$implement-plan** — Execute plan phase by phase
5. **$save-progress** — Save session state
6. **$resume-work** — Resume from a session summary
7. **$research-cloud** — READ-ONLY cloud analysis
8. **$define-test-cases** — Comment-first test cases

Helper skills:
- **$codebase-locator** — Find relevant files
- **$codebase-analyzer** — Explain how code works
- **$codebase-pattern-finder** — Find patterns to follow

## 💡 Typical Workflow Example

```markdown
# 1. Research the existing codebase
$research-codebase
How does the authentication system work?

# 2. Create a plan
$create-plan
Add OAuth2 integration to the authentication system

# 3. Implement the plan
$implement-plan
thoughts/shared/plans/001_oauth2_integration.md

# 4. Validate
$validate-plan
```

## ☁️ Cloud Analysis Example

```markdown
$research-cloud
Azure
all
```

## 🧪 Test-Driven Example

```markdown
$define-test-cases
Partner enrollment workflow with kit orders
```

## 🛠 Customization

- Edit skill instructions in `.agents/skills/*/SKILL.md`
- Update **AGENTS.md** with project-specific conventions
- Adjust verification commands inside plans

## 📖 Documentation

- **[PLAYBOOK.md](PLAYBOOK.md)** — Complete guide
- **Skill files** — Detailed instructions per phase

## 📝 License

This framework structure is provided as-is for use in your projects. Adapt and modify as needed.

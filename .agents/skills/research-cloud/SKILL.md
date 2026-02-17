---
name: research-cloud
description: Perform read-only cloud infrastructure analysis and write a report under thoughts/shared/cloud.
---

# Research Cloud Infrastructure (Codex)

Use this skill to perform READ-ONLY analysis of cloud infrastructure.

## Behavior

1. **Ask for platform and focus area** if not provided (Azure/AWS/GCP, scope).
2. **Verify CLI access** and authentication.
3. **Run only read-only commands** (list/describe/show/get).
4. **Synthesize findings** into a structured report.
5. **Save the report** to `thoughts/shared/cloud/NNN_platform_environment.md`.

## Report Format

```markdown
---
date: [ISO timestamp]
researcher: Codex
platform: [Azure/AWS/GCP]
environment: [Production/Staging/Dev]
subscription: [ID]
tags: [cloud, infrastructure, platform-name, environment]
status: complete
---

# Cloud Infrastructure Analysis: [Environment Name]

## Analysis Scope
- Platform: [Cloud Provider]
- Subscription/Project: [ID]
- Regions: [List]
- Focus Areas: [Scope]

## Executive Summary
[Key findings, issues, and recommendations]

## Resource Inventory
[Resources by type, count, region, cost]

## Architecture Overview
[Summary of architecture]

## Detailed Findings

### Compute
...

### Data Layer
...

### Networking
...

### Security
...

## Cost Analysis
- Current Monthly Cost: $X
- Optimization Opportunities: [List]

## Risk Assessment
### Critical Issues
- [Findings]

### Warnings
- [Findings]

## Recommendations
### Immediate Actions
1. [Action]

## CLI Commands for Verification
```bash
# List key commands used
```
```

## Safety
- **READ-ONLY ONLY**. Never create, modify, or delete resources.

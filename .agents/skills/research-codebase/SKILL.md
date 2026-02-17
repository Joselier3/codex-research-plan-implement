---
name: research-codebase
description: Conduct comprehensive codebase research, synthesize findings, and save a structured research doc under thoughts/shared/research.
---

# Research Codebase (Codex)

Use this skill when the user asks for a deep dive into how something works in the codebase, where code lives, or how components connect.

## Behavior

1. **Clarify the research question if missing.** If the request is vague, ask for the specific area or question to investigate.
2. **Read any explicitly mentioned files first**, fully.
3. **Decompose the question** into distinct research tracks (components, data flow, tests, configuration, etc.).
4. **Investigate in parallel where possible**, using helper skills:
   - $codebase-locator (find relevant files)
   - $codebase-analyzer (explain how it works)
   - $codebase-pattern-finder (find similar patterns)
5. **Synthesize findings** with concrete file paths and line references.
6. **Save the research document** using the required structure and naming convention.

## Output Document Format

Save to: `thoughts/shared/research/NNN_topic.md` (3-digit sequence)

```markdown
---
date: [ISO timestamp]
researcher: Codex
topic: "[User's question/topic]"
tags: [research, codebase, relevant-component-names]
status: complete
---

# Research: [User's Question/Topic]

## Research Question
[Original user query]

## Summary
[High-level findings]

## Detailed Findings

### [Component/Area 1]
- Finding with reference (path/to/file.ext:line)
- Connections to other components

### [Component/Area 2]
...

## Code References
- `path/to/file.ext:line` - what’s there

## Architecture Insights
[Patterns, conventions, design decisions]

## Open Questions
[Anything unresolved]
```

## Notes
- Always include paths and line numbers.
- Keep the document self-contained so it can be used later without redoing research.

# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Build/Test/Lint Commands
- Build: `npm run build`
- Lint: `npm run lint`
- Test all: `npm test`
- Test single: `npm test -- -t "test name"` 

## Code Style Guidelines
- **Formatting**: Use Prettier with default settings
- **Imports**: Group imports by external libs, internal modules, types
- **Types**: Use TypeScript with strict mode; prefer explicit return types
- **Naming**: camelCase for variables/functions, PascalCase for classes/components
- **Error Handling**: Use try/catch for async operations
- **File Structure**: One component per file, consistent directory structure
- **Comments**: Self-documenting code preferred; JSDoc for APIs
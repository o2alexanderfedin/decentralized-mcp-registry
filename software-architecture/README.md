# Decentralized MCP Registry - Software Architecture

## Overview
This directory contains the software architecture documentation for the Decentralized MCP Registry project. The registry enables AI agents to discover and use tools across a decentralized network, with built-in capabilities for tool registration, discovery, invocation, and monetization.

## Architecture Documents

### System-Level Documentation
- [System Architecture](system-architecture.md) - High-level architecture of the entire system
- [Implementation Roadmap](implementation-roadmap.md) - Week-by-week development plan

### Requirements
- [Decentralized MCP Registry Requirements](decentralized-mcp-registry-requirements.md) - Comprehensive requirements specification
- [MCP Server Registry](mcp-server-registry.md) - Description of centralized MCP registry for reference

### Use Cases
- [Use Cases](use-cases.md) - Detailed use cases with diagrams for different actors

### User Stories
The `user-stories` directory contains GitHub-issue formatted user stories along with their design documentation:

1. **P2P Network Foundation (01-p2p-connectivity)**
   - BitTorrent-based peer-to-peer networking foundation
   - [Design Document](user-stories/01-p2p-connectivity/design.md)

2. **Tool Registry (02-tool-registry)**
   - Storage and management of tool definitions
   - [Design Document](user-stories/02-tool-registry/design.md)

3. **Tool Relay (03-tool-relay)**
   - Routing and execution of tool invocations
   - [Design Document](user-stories/03-tool-relay/design.md)

4. **Tool Discovery (04-tool-discovery)**
   - Finding tools based on capabilities and criteria
   - [Design Document](user-stories/04-tool-discovery/design.md)

5. **Authentication (05-authentication)**
   - Basic authentication for tool access

6. **Cryptographic Verification (06-verification)**
   - Signature verification for registry entries

7. **Local Tool Execution (07-local-execution)**
   - Running tools locally rather than remotely

8. **Transaction Recording (08-transaction-recording)**
   - Recording billable transactions for monetization

## Key Architectural Decisions

1. **BitTorrent Foundation**: The system is built on BitTorrent's mature P2P protocol stack, leveraging its DHT, NAT traversal, and peer discovery capabilities.

2. **Decentralized Discovery**: Tool discovery uses BitTorrent's DHT for fully decentralized operation without central servers.

3. **Local-First Design**: The architecture prioritizes local execution when possible, with remote relay as a fallback.

4. **Cryptographic Security**: All components use cryptographic verification to ensure authenticity and integrity.

5. **Micro-Billing**: The monetization approach uses mutually signed transaction records between directly interacting nodes.

## Getting Started

To understand the architecture:

1. Start with the [System Architecture](system-architecture.md) for a high-level overview
2. Review the [Use Cases](use-cases.md) to understand key user interactions
3. Explore individual user story design documents for component details
4. Reference the [Implementation Roadmap](implementation-roadmap.md) for development planning

## Contributing

When contributing to the architecture:

1. Follow the established patterns and conventions
2. Update diagrams when making significant changes
3. Ensure cross-references between documents remain valid
4. Maintain alignment with the project requirements

## License

[Insert license information here]
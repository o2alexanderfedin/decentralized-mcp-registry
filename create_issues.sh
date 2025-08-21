#!/bin/bash

# Function to create an issue
create_issue() {
    local title="$1"
    local body="$2"
    local labels="$3"
    
    echo "Creating issue: $title"
    echo "$body" | gh issue create --title "$title" --body-file - --label "$labels"
}

# Issue 01: P2P Network Foundation
create_issue "Implement P2P Network Foundation" "$(cat << 'EOF'
## Description
As a Node Operator, I need to establish P2P connectivity between registry nodes so that they can discover each other and form a decentralized network.

## Acceptance Criteria
- [ ] Node can be initialized with a unique identifier
- [ ] Node can listen for incoming connections on a configurable port
- [ ] Node can connect to other nodes using their address and port
- [ ] Node maintains a list of active peer connections
- [ ] Node can handle basic peer disconnection gracefully
- [ ] Connection is established with proper TLS encryption
- [ ] Basic NAT traversal mechanism is implemented

## Technical Notes
- Use established BitTorrent-inspired libraries (libtorrent or similar)
- Implement connection retry with exponential backoff
- Support IPv4 and IPv6 addressing
- Provide configurable connection limits

## Priority
Critical - This is a foundational capability for the system

## Dependencies
None

## Estimation
Story Points: 8
EOF
)" "priority:critical,phase:1,story-points:8"

# Issue 02: Tool Registry
create_issue "Implement Tool Registry" "$(cat << 'EOF'
## Description
As a Tool Provider, I need to register my tools in the network so that they can be discovered and used by AI agents.

## Acceptance Criteria
- [ ] Tool metadata can be registered with unique identifiers
- [ ] Tool registration includes name, description, and input/output schemas
- [ ] Tools can be updated or removed by their owners
- [ ] Tool metadata is replicated across the network
- [ ] Registration includes version information
- [ ] Tools can be tagged with categories for discovery

## Technical Notes
- Use Protocol Buffers for schema definitions
- Implement CRDT-based replication for consistency
- Support semantic versioning for tool versions
- Provide validation for tool schemas

## Priority
Critical - Core data model and storage

## Dependencies
- P2P Network Foundation

## Estimation
Story Points: 5
EOF
)" "priority:critical,phase:1,story-points:5"

# Issue 03: Tool Relay
create_issue "Implement Tool Relay" "$(cat << 'EOF'
## Description
As an AI Agent, I need to invoke tools across the network so that I can access functionality provided by different nodes.

## Acceptance Criteria
- [ ] Tools can be invoked remotely using their identifiers
- [ ] Input parameters are properly serialized and transmitted
- [ ] Results are returned to the caller
- [ ] Timeouts are handled gracefully
- [ ] Basic error handling is implemented
- [ ] Connection retry logic is in place

## Technical Notes
- Use gRPC for RPC communication
- Implement circuit breakers for reliability
- Support streaming responses for long-running operations
- Provide detailed error reporting

## Priority
Critical - Essential for main use case

## Dependencies
- P2P Network Foundation
- Tool Registry

## Estimation
Story Points: 6
EOF
)" "priority:critical,phase:1,story-points:6"

# Issue 04: Tool Discovery
create_issue "Implement Tool Discovery" "$(cat << 'EOF'
## Description
As an AI Agent, I need to discover available tools in the network so that I can use them in my workflows.

## Acceptance Criteria
- [ ] Tools can be searched by name or description
- [ ] Tools can be filtered by categories
- [ ] Search results include tool metadata
- [ ] Results are ranked by relevance
- [ ] Pagination is supported for large result sets
- [ ] Caching is implemented for performance

## Technical Notes
- Implement full-text search capabilities
- Use bloom filters for efficient filtering
- Support fuzzy matching for search terms
- Implement result caching with TTL

## Priority
High - Completes MVP functionality

## Dependencies
- Tool Registry

## Estimation
Story Points: 5
EOF
)" "priority:high,phase:1,story-points:5"

# Issue 05: Authentication
create_issue "Implement Simple Authentication" "$(cat << 'EOF'
## Description
As a Node Operator, I need to authenticate tool providers and consumers so that I can control access to my tools.

## Acceptance Criteria
- [ ] Basic username/password authentication
- [ ] API key generation and validation
- [ ] Role-based access control
- [ ] Session management
- [ ] Rate limiting per user
- [ ] Audit logging of authentication events

## Technical Notes
- Use JWT for token-based authentication
- Implement secure password hashing
- Support API key rotation
- Provide detailed audit logs

## Priority
Medium - Important security feature

## Dependencies
- Tool Registry
- Tool Relay

## Estimation
Story Points: 4
EOF
)" "priority:medium,phase:2,story-points:4"

# Issue 06: Verification
create_issue "Implement Cryptographic Verification" "$(cat << 'EOF'
## Description
As a Node Operator, I need to verify the authenticity of tools and their providers so that I can trust the tools I'm using.

## Acceptance Criteria
- [ ] Tools are signed by their providers
- [ ] Signatures can be verified by consumers
- [ ] Public keys are distributed securely
- [ ] Key rotation is supported
- [ ] Verification failures are handled gracefully
- [ ] Audit trail of verification events

## Technical Notes
- Use Ed25519 for signatures
- Implement key distribution via DHT
- Support key revocation
- Provide detailed verification logs

## Priority
High - Critical for security and trust

## Dependencies
- Tool Registry

## Estimation
Story Points: 5
EOF
)" "priority:high,phase:2,story-points:5"

# Issue 07: Local Execution
create_issue "Implement Local Tool Execution" "$(cat << 'EOF'
## Description
As a Node Operator, I need to execute tools locally when possible so that I can improve performance and enable offline usage.

## Acceptance Criteria
- [ ] Tools can be executed locally when available
- [ ] Local execution takes precedence over remote
- [ ] Fallback to remote execution when local fails
- [ ] Performance metrics are collected
- [ ] Resource limits are enforced
- [ ] Execution environment is isolated

## Technical Notes
- Use containerization for isolation
- Implement resource quotas
- Support different execution backends
- Provide detailed performance metrics

## Priority
Medium - Enhances performance

## Dependencies
- Tool Registry
- Cryptographic Verification

## Estimation
Story Points: 7
EOF
)" "priority:medium,phase:2,story-points:7"

# Issue 08: Transaction Recording
create_issue "Implement Transaction Recording" "$(cat << 'EOF'
## Description
As a Tool Provider, I need to record tool usage transactions so that I can charge for my services and track usage.

## Acceptance Criteria
- [ ] Tool invocations are recorded with metadata
- [ ] Usage metrics are collected
- [ ] Billing information is tracked
- [ ] Reports can be generated
- [ ] Data is persisted reliably
- [ ] Privacy of sensitive data is maintained

## Technical Notes
- Use event sourcing for recording
- Implement reliable message queues
- Support different billing models
- Provide detailed analytics

## Priority
Medium - Monetization feature

## Dependencies
- Tool Relay
- Cryptographic Verification

## Estimation
Story Points: 6
EOF
)" "priority:medium,phase:3,story-points:6" 
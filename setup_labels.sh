#!/bin/bash

# Create priority labels
gh label create "priority:critical" --color "#B60205" --description "Critical priority issue"
gh label create "priority:high" --color "#D93F0B" --description "High priority issue"
gh label create "priority:medium" --color "#FBCA04" --description "Medium priority issue"
gh label create "priority:low" --color "#0E8A16" --description "Low priority issue"

# Create phase labels
gh label create "phase:1" --color "#1D76DB" --description "Phase 1 - Core Functionality"
gh label create "phase:2" --color "#0E8A16" --description "Phase 2 - Security & Local Tools"
gh label create "phase:3" --color "#FBCA04" --description "Phase 3 - Economics"

# Create story points labels
gh label create "story-points:1" --color "#FBCA04" --description "1 story point"
gh label create "story-points:2" --color "#FBCA04" --description "2 story points"
gh label create "story-points:3" --color "#FBCA04" --description "3 story points"
gh label create "story-points:4" --color "#FBCA04" --description "4 story points"
gh label create "story-points:5" --color "#FBCA04" --description "5 story points"
gh label create "story-points:6" --color "#FBCA04" --description "6 story points"
gh label create "story-points:7" --color "#FBCA04" --description "7 story points"
gh label create "story-points:8" --color "#FBCA04" --description "8 story points" 
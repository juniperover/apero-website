# Consolidating PSHAW Lab & Research Collaborators

## Overview

Since you're combining two menu items ("PSHAW Lab" and "Research Collaborators") into one "Lab" menu item, you need to decide how to present this content.

## Option 1: Single Combined Page (Recommended)

Create or modify `/content/lab/index.md` to include both lab info and collaborators:

```yaml
---
title: "PSHAW Lab & Collaborators"
description: "The Power, Status, Hierarchy, and Work (PSHAW) Lab at Melbourne Business School"
layout: standard
show_title_as_headline: true
---

## About the PSHAW Lab

The Power, Status, Hierarchy, and Work (PSHAW) Lab conducts research on how power and status shape organizational behavior...

[Add your lab description here]

### Current Lab Members

- **PhD Students**
  - [Student Name] - Research on [topic]
  - [Student Name] - Research on [topic]

- **Research Assistants**
  - [Name]
  - [Name]

### Lab Resources
- [Link to lab GitHub]
- [Link to lab materials/protocols]

---

## Research Collaborators

I'm fortunate to collaborate with outstanding researchers around the world:

### Current Collaborations

**[Collaborator Name]** - [Institution]  
Working on: [Project description]

**[Collaborator Name]** - [Institution]  
Working on: [Project description]

**[Collaborator Name]** - [Institution]  
Working on: [Project description]

### Past Collaborators

[If you want to list former collaborators]

---

## Opportunities

### For Prospective PhD Students
[Information about joining the lab]

### For Research Collaborators
[How people can collaborate with you]
```

---

## Option 2: Lab Page with Link to Collaborators

Keep them as separate pages but make it clear:

**Main lab page** (`/content/lab/index.md`):

```yaml
---
title: "PSHAW Lab"
description: "The Power, Status, Hierarchy, and Work Lab"
layout: standard
---

## About the Lab

[Lab description]

## Lab Members

[Current members]

## Opportunities

[Info for prospective students]

---

**[Research Collaborators →](/collaborators/)**  
View my research collaborators and ongoing collaborative projects.
```

Then update the menu item title to make it clear:

```toml
[[menu.header]]
  name = "Lab & Collaborators"
  title = "PSHAW Lab & Research Collaborators"
  url = "/lab/"
  weight = 5
```

---

## Option 3: Tabs/Sections Layout

If you want to keep them more distinct visually, create a layout with clear sections:

```yaml
---
title: "Lab & Collaborators"
layout: standard
---

<div style="border-bottom: 2px solid #ddd; margin-bottom: 2rem;">
  <h2>PSHAW Lab</h2>
</div>

## About the Lab

[Lab content...]

## Lab Members

[Members...]

---

<div style="border-bottom: 2px solid #ddd; margin-bottom: 2rem; margin-top: 3rem;">
  <h2>Research Collaborators</h2>
</div>

[Collaborators content...]
```

---

## Recommended Approach

**I suggest Option 1** (single combined page) because:

1. **It's honest** - visitors click "Lab" and get lab + collaborators
2. **It's comprehensive** - shows your full research network in one place
3. **It reduces navigation complexity** - no hidden second page
4. **It tells a story** - "here's my lab, and here's my broader network"

The menu item can be titled:
- "Lab" (simple, visitors will discover the collaborators)
- "Lab & Collaborators" (explicit, but a bit long)
- "Team" (short, inclusive)

---

## If Your Collaborators Page Already Exists

If you already have extensive content at `/content/collaborators/index.md`, you can:

1. **Copy that content** into your lab page under a "Research Collaborators" heading
2. **Keep the old page** as is - it will still be accessible via direct URL even if not in the menu
3. **Add a redirect** from `/collaborators/` to `/lab/#collaborators` (if Hugo supports anchor links)

---

## Sample Combined Page

Here's a complete example:

```markdown
---
title: "PSHAW Lab & Collaborators"
subtitle: "Power, Status, Hierarchy, and Work"
description: "Research lab and collaborative network"
layout: standard
show_title_as_headline: true
---

## The PSHAW Lab

The Power, Status, Hierarchy, and Work (PSHAW) Lab, based at Melbourne Business School, examines how power and status dynamics shape organizational life. Our research explores social hierarchies, leadership perceptions, and the psychological consequences of power.

### What We Study

- Power and status in organizational hierarchies
- Leadership and influence processes
- Social perception and judgment
- Organizational culture and behavior

### Current Lab Members

**PhD Students**
- Jane Smith - Power dynamics in distributed teams
- John Doe - Status hierarchies in innovation contexts

**Research Assistants**
- Alex Johnson
- Sam Williams

### Lab Alumni

[Former members who've gone on to great things]

---

## Research Collaborators

I'm privileged to work with exceptional scholars worldwide:

**Dr. Colleague Name** - Stanford University  
*Ongoing projects:* Power and morality; Status in negotiations

**Dr. Another Colleague** - INSEAD  
*Ongoing projects:* Cross-cultural hierarchy; Leadership emergence

**Dr. Third Colleague** - University of Toronto  
*Ongoing projects:* Gender and power; Status instability

[See all publications with collaborators →](/pubs/)

---

## Join Us

**Prospective PhD Students:** I'm always interested in hearing from motivated students interested in power, status, and organizational behavior. [Contact me](/contact/) with your CV and research interests.

**Potential Collaborators:** Interested in collaboration? Please [reach out](/contact/) to discuss opportunities.
```

---

This consolidation keeps your navigation clean while ensuring visitors can still find all the information they need!

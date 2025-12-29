# Streamlining Your Hugo Apero Website: Content Layout Guide

## Overview of Changes

This guide will help you transform your website from image-heavy to content-focused, creating a more professional academic/research presence.

---

## 1. PROJECT SECTION CHANGES

### Current Issue
Your projects page shows large circular thumbnails that dominate the page and reduce focus on the actual research content.

### Solution A: Remove Thumbnails Entirely (Recommended)

Edit `/content/project/_index.md`:

```yaml
---
title: Current Projects
description: |
  Research on power, status, hierarchy, and organizational behavior
author: "Jen Overbeck"
show_post_thumbnail: false  # CHANGE THIS TO FALSE
show_author_byline: true
show_post_date: false  # Consider hiding dates for ongoing projects
layout: list  # Change from list-sidebar to simple list
---
```

### Solution B: Use Small Left-Aligned Thumbnails

If you want to keep some visual interest but minimize image dominance:

```yaml
---
title: Current Projects
description: |
  Research on power, status, hierarchy, and organizational behavior
author: "Jen Overbeck"
show_post_thumbnail: true
thumbnail_left: true  # Small thumbnail on left instead of large circular
show_author_byline: false  # Less clutter
show_post_date: false
layout: list-sidebar
---
```

### Solution C: Text-Only Professional List

For the most streamlined, CV-like appearance:

```yaml
---
title: Research Projects
description: |
  Current and recent research programs
author: "Jen Overbeck"
show_post_thumbnail: false
show_author_byline: false
show_post_date: false
layout: list  # Simple list, no sidebar
---
```

---

## 2. PUBLICATIONS SECTION

### Recommended Layout

Edit `/content/pubs/_index.md`:

```yaml
---
title: Publications
description: |
  Selected publications and working papers
author: "Jen Overbeck"
show_post_thumbnail: false  # No images for publications
show_author_byline: true
show_post_date: true  # Useful for publications
layout: list
sidebar:
  title: Research Interests
  description: |
    Power and status in organizations
    
    Hierarchy and leadership
    
    Social perception and influence
  author: "Jen Overbeck"
  text_link_label: "Google Scholar Profile"
  text_link_url: "https://scholar.google.com/citations?user=bz162vYAAAAJ"
  show_sidebar_adunit: false
---
```

---

## 3. BLOG SECTION

### Recommended Layout

Edit `/content/blog/_index.md`:

```yaml
---
title: Blog
description: |
  Thoughts on research, culture, and organizational life
author: "Jen Overbeck"
show_post_thumbnail: true  # Keep thumbnails for blog (more casual)
thumbnail_left: false
show_author_byline: true
show_post_date: true
layout: list  # Or list-sidebar if you want sidebar content
---
```

For individual blog posts, you can still use featured images, but make them optional.

---

## 4. TALKS SECTION

### Recommended Layout

Edit `/content/talk/_index.md`:

```yaml
---
title: Talks & Presentations
description: |
  Conference presentations, keynotes, and invited talks
author: "Jen Overbeck"
show_post_thumbnail: false  # No images needed
show_author_byline: false
show_post_date: true  # Important for talks
layout: list
---
```

---

## 5. HOMEPAGE ADJUSTMENTS

### Current vs. Streamlined

Edit `/content/_index.md`:

**Current style** (image-heavy):
```yaml
---
title: "Jennifer R. Overbeck"
subtitle: "Professor of Organizational Behavior"
description: |
  Research on power, status, and hierarchy in organizations
images:
  - img/home.jpeg
image_left: false
text_align_left: true
show_social_links: true
show_action_link: true
action_link: /about
action_label: "About me &rarr;"
action_type: text
type: home
---
```

**Streamlined style** (minimal):
```yaml
---
title: "Jennifer R. Overbeck, PhD"
subtitle: "Professor | Melbourne Business School"
description: |
  I study power, status, and hierarchy in organizations—how people 
  perceive and navigate organizational structures, and how these 
  dynamics shape behavior, decision-making, and workplace culture.
images:
  - img/home.jpeg
image_left: true  # Smaller image on left
text_align_left: true
show_social_links: true
show_action_link: true
action_link: /pubs
action_label: "View research →"
action_type: button
type: home
---
```

---

## 6. ABOUT PAGE

### Recommended Structure

The about page can remain largely as-is, but ensure:

**Main content** (`/content/about/main/index.md`):
- Focus on professional bio
- Clear, concise paragraphs
- Link to CV/publications

**Sidebar** (`/content/about/sidebar/index.md`):
- Professional headshot (avatar.jpg) - ONE image only
- Contact information
- Key affiliations
- Office hours (if relevant)

---

## 7. REMOVING IMAGES FROM INDIVIDUAL PROJECT PAGES

For each project, if you want to remove the large circular thumbnails:

1. **Option A**: Delete or rename the `featured.jpg` or `featured.png` files in each project folder
2. **Option B**: Add this to individual project front matter:

```yaml
---
title: "Your Project Title"
author: "Jen Overbeck"
show_post_thumbnail: false  # Override section default
layout: single  # Clean single-column layout
---
```

---

## 8. CONSOLIDATING NAVIGATION

### Current Navigation (7 items - too many)
- About
- Publications  
- Projects
- Talks
- PSHAW Lab
- Research Collaborators
- Blog

### Streamlined Navigation (4 items)

**Option A**: Group related content
- About
- Research (combines Pubs, Projects, Talks)
- Lab (combines PSHAW Lab & Collaborators)
- Blog

**Option B**: Academic focus
- About
- Publications
- Lab & Collaborators
- Blog

**Option C**: Minimize to essentials
- About
- Research
- Lab
- Contact

### How to Implement Option A

Create a new "Research" landing page (`/content/research/_index.md`):

```yaml
---
title: Research
description: Publications, projects, and presentations
cascade:
  show_post_thumbnail: false
  layout: list
---

## Publications
[Link to full publications list](/pubs/)

Featured recent publications...

## Current Projects  
[Link to all projects](/project/)

Overview of current research programs...

## Talks & Presentations
[Link to talks](/talk/)

Recent presentations...
```

Then update your navigation menu in `config.toml` to point to this page.

---

## 9. PROFESSIONAL COLOR ALTERNATIVES

If grayscale feels too stark, try these professional alternatives:

**In config.toml**, change the theme to:

```toml
theme = "violet"  # Professional purple/blue - academic feel
```

or

```toml
theme = "forest"  # Professional green - calm, trustworthy
```

or

```toml
theme = "plum"  # Sophisticated purple - distinctive but professional
```

Test each to see which you prefer!

---

## 10. QUICK WINS CHECKLIST

- [ ] Replace config.toml with streamlined version
- [ ] Change project page: `show_post_thumbnail: false`
- [ ] Change publications page: `show_post_thumbnail: false`  
- [ ] Change talks page: `show_post_thumbnail: false`
- [ ] Consolidate navigation from 7 to 4 items
- [ ] Update homepage description to be more focused
- [ ] Remove or rename large project thumbnail images
- [ ] Test different color themes (grayscale, violet, forest, plum)
- [ ] Verify all pages on mobile view

---

## 11. GOING FURTHER: CUSTOM CSS (OPTIONAL)

If you want even more control, you can create custom CSS to:
- Reduce whitespace
- Adjust heading sizes
- Change link styles
- Modify layout widths

Create a file: `/assets/custom.scss`

```scss
// Make headings more compact
h1, h2, h3 {
  margin-top: 1rem;
  margin-bottom: 0.5rem;
}

// Tighter line-height for professional look
body {
  line-height: 1.6;
}

// Reduce padding on main content
.main-content {
  padding: 1rem;
}

// Make project excerpts more prominent than images
.post-excerpt {
  font-size: 1.1rem;
  line-height: 1.5;
}
```

---

## Summary of Key Changes

1. **Color**: Sky → Grayscale (or Violet/Forest)
2. **Fonts**: Fraunces/Bitter → Commissioner (sans-serif)
3. **Navigation**: 7 items → 4 items
4. **Images**: Large circular thumbnails → Hidden or small
5. **Layout**: Image-heavy → Content-focused
6. **Typography**: Decorative → Clean and professional

These changes will give you a much more streamlined, professional academic website while keeping all your content intact!

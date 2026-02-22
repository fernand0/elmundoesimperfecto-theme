# Hybrid Theme Approach

## Overview

This project uses a **hybrid approach** to share common elements across sites while maintaining each site's unique design.

## What's Shared

### 1. Theme Colors (`_shared-theme/assets/css/theme-colors.css`)

**Single source of truth for colors:**

```css
:root {
  --theme-color: #004235;
  --theme-color-light: #1e6053;
  --theme-color-dark: #002417;
}
```

**To change the color:**
```bash
python update_theme_color.py '#1a5276'  # Blue
python update_theme_color.py '#8b0000'  # Red
```

**Sites that use it:**
- ✅ blog (via theme gem)
- ✅ personalAggregator (via `@import`)
- ✅ projects (via `@import`)

---

### 2. Shared Configuration (`_config-shared.yml` + `merge_config.py`)

**Centralized config for:**
- Author info (name, avatar, homepage)
- Footer links (all social networks)
- Theme version tracking

**To update:**
```bash
# Edit _config-shared.yml
nano _config-shared.yml

# Merge to all sites
python merge_config.py
```

**Sites that use it:**
- ✅ blog
- ✅ personalAggregator
- ✅ projects

---

## What's Site-Specific

| Site | Layout | CSS | Includes |
|------|--------|-----|----------|
| **blog** | Theme gem (Lanyon sidebar) | Theme gem | Theme gem |
| **personalAggregator** | Local (card grid) | Local + theme colors | Local |
| **projects** | Local (portfolio) | Local + theme colors | Local |

---

## Benefits

✅ **Color changes in one place** - All sites update together  
✅ **Config sync automated** - `merge_config.py` handles it  
✅ **Each site keeps its design** - No forced uniformity  
✅ **Independent deployment** - Sites can be updated separately  

⚠️ **Header/footer HTML is duplicated** - Same structure, copied per site  
⚠️ **No shared layouts** - Each site manages its own  

---

## File Structure

```
elmundoesimperfecto/
├── _config-shared.yml          # Shared config
├── merge_config.py             # Config merger
├── update_theme_color.py       # Color changer
├── _shared-theme/
│   ├── assets/css/
│   │   ├── theme-colors.css    # ← SHARED COLORS
│   │   └── lanyon.css          # Blog only
│   ├── _layouts/
│   │   ├── default.html        # Blog only
│   │   └── blog.html           # Blog only
│   └── _includes/
│       ├── header.html         # Blog only
│       └── footer.html         # Blog only
├── blog/
│   ├── Gemfile: gem "elmundoesimperfecto-theme"
│   └── Uses theme for everything
├── personalAggregator/
│   ├── css/main.scss: @import "../../_shared-theme/assets/css/theme-colors.css"
│   └── Local layouts, includes, CSS
└── projects/
    ├── assets/css/style.css: @import "../../../_shared-theme/assets/css/theme-colors.css"
    └── Local layouts, includes, CSS
```

---

## Workflow

### Change Theme Color
```bash
cd /home/ftricas/Documents/www/elmundoesimperfecto
python update_theme_color.py '#1a5276'
git add _shared-theme/assets/css/theme-colors.css
git commit -m "Change theme color to blue

Co-authored-by: Qwen-Coder <qwen-coder@alibabacloud.com>"
git push
```

### Update Shared Config
```bash
# Edit shared config
nano _config-shared.yml

# Merge to all sites
python merge_config.py

# Commit each site
cd blog && git add _config.yml && git commit && git push
cd ../personalAggregator && git add _config.yml && git commit && git push
cd ../projects && git add _config.yml && git commit && git push
```

### Update Site-Specific Design
```bash
# Just work on the specific site
cd personalAggregator
# Edit files
git add .
git commit -m "Update card grid layout"
git push
```

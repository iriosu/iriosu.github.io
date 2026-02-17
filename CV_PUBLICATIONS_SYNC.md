# CV Publications Synchronization

## Overview

The CV page publications are now **automatically synchronized** with the research page. Both pages pull from the same source: `_bibliography/papers.bib`. Any changes you make to paper statuses in the BibTeX file will automatically update both pages.

## How It Works

### Source of Truth
- **Single source:** `_bibliography/papers.bib`
- **Status control:** The `keywords` field in each BibTeX entry

### Paper Statuses
Papers are categorized using the `keywords` field:
- `published` → Appears in "Published" section
- `under-review` → Appears in "Under Review" section  
- `working-paper` → Appears in "Working Papers" section
- `work-in-progress` → Appears in "Work in Progress" section

### Files Modified
1. **`_layouts/bib_cv.liquid`** - Custom bibliography template for CV page (simplified formatting without ABS/PDF buttons)
2. **`_includes/cv/publications_from_bib.liquid`** - Groups and renders publications by status using jekyll-scholar queries
3. **`_layouts/cv.liquid`** - Modified to use dynamic BibTeX-based publications instead of static `cv.yml` entries
4. **`_sass/_cv.scss`** - Added CSS to style bibliography lists for CV page
5. **`_data/cv.yml`** - Publications section marked as deprecated (now pulled from BibTeX)

## How to Update Publications

### Changing a Paper's Status

Simply edit the `keywords` field in `_bibliography/papers.bib`:

```bibtex
@article{myarticle2024,
  title    = {My Paper Title},
  author   = {Author Names},
  year     = {2024},
  keywords = {under-review},  ← Change this field
  ...
}
```

**Example:** Moving a paper from "Under Review" to "Published":

```bibtex
% Before
keywords = {under-review},

% After  
keywords = {published},
journal  = {Management Science},
volume   = {70},
number   = {5},
pages    = {1234--1256},
```

### Adding a New Paper

1. Add the BibTeX entry to `_bibliography/papers.bib`
2. Set the appropriate `keywords` value
3. Jekyll will automatically include it in both CV and research pages

### Example BibTeX Entry

```bibtex
@article{rios2024newpaper,
  title       = {New Paper Title},
  author      = {Rios, Ignacio and Others},
  journal     = {Operations Research},
  year        = {2024},
  keywords    = {published},
  doi         = {10.1287/xxxx},
  bibtex_show = {true},
  abstract    = {Paper abstract text...}
}
```

## Formatting Differences

### Research Page
- Shows all metadata (ABS buttons, PDF links, DOI, awards, bibtex)
- Interactive filtering by status
- Full abstracts expandable

### CV Page  
- Simplified display (title, authors, journal, year, note, awards)
- Grouped by status with section headers
- No ABS buttons or interactive features
- Consistent year badge styling (changes color with theme)

## Benefits

✅ **Single source of truth** - Edit once, updates everywhere
✅ **No duplication** - No need to maintain separate lists in `cv.yml`
✅ **Automatic synchronization** - Change status in BibTeX, both pages update
✅ **Consistent formatting** - Year badges and styling match between pages
✅ **Easy updates** - Just edit the BibTeX file

## Migration Notes

The old static Publications section in `_data/cv.yml` has been marked as deprecated. It's kept for reference but is no longer used. All publications now come from `_bibliography/papers.bib`.

## Current Publication Counts

- **Published:** 13 papers
- **Under Review:** 6 papers
- **Working Papers:** 3 papers
- **Work in Progress:** 6 papers  
- **Total:** 28 papers

Last updated: February 16, 2026

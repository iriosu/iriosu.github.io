# Press Page Documentation

## Overview

The press page displays media coverage and press appearances in a clean, chronological format similar to the research/publications page. The system uses a YAML data file as a single source of truth for all press entries.

## File Structure

### Data File: `_data/press.yml`

Contains all press entries with the following structure:

```yaml
articles:
  - year: 2024
    title: "Article Title"
    url: "https://example.com/article"
    outlet: "Publication Name"
```

**Fields:**
- `year` (required): Publication year (integer)
- `title` (required): Article title (string)
- `url` (required): Link to the article (string)
- `outlet` (required): Media outlet name (string)

### Page File: `_pages/press.md`

The press page automatically renders all articles from `press.yml`:
- Groups articles by year (newest first)
- Displays year badges with theme-aware colors
- Shows article titles as clickable links
- Lists outlet names below each article in italics

### Navigation: `_pages/dropdown.md`

The press page is included in the submenus dropdown navigation:

```yaml
children:
  - title: press
    permalink: /press/
```

## Styling

The press page uses the same CSS classes as the research/publications page:
- `.publications` - Main container
- `.badge` - Year badges with theme-aware colors
- `.title` - Article title links
- `.periodical` - Outlet names (italicized)

Year badges automatically adapt to light/dark mode using theme variables.

## Adding New Press Entries

1. Edit `_data/press.yml`
2. Add a new entry to the `articles` array:
   ```yaml
   - year: 2024
     title: "New Article Title"
     url: "https://example.com/new-article"
     outlet: "Media Outlet Name"
   ```
3. Articles are automatically sorted by year (newest first)
4. No need to edit any other files

## Example Entry

```yaml
- year: 2022
  title: "Cupid's Code: Tweaking an Algorithm Can Alter the Course of Finding Love Online"
  url: "https://www.gsb.stanford.edu/insights/cupids-code-tweaking-algorithm-can-alter-course-finding-love-online"
  outlet: "Stanford Graduate School of Business"
```

## Benefits of This Approach

1. **Single Source of Truth**: All press data in one YAML file
2. **Easy Maintenance**: Add/edit entries in one place
3. **Automatic Sorting**: Articles display chronologically
4. **Consistent Styling**: Uses theme-aware badges and colors
5. **External Links**: All articles open in new tabs

## Related Files

- `_data/press.yml` - Press data (edit this to add/update articles)
- `_pages/press.md` - Press page template (no manual edits needed)
- `_pages/dropdown.md` - Navigation menu structure
- `_sass/_publications.scss` - Shared styling with research page

## Maintenance

To update press appearances:
1. Open `_data/press.yml`
2. Add/edit/remove entries
3. Commit changes
4. Jekyll will automatically regenerate the press page

No code changes needed for routine updates.

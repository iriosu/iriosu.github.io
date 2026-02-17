# Teaching Data Synchronization

The teaching section is now automatically synchronized between the **Teaching page** (`/teaching`) and the **CV page** (`/cv`). Both pages pull from a single source of truth: `_data/teaching.yml`.

## How It Works

### Single Source of Truth
- **Data File:** `_data/teaching.yml`
- **Teaching Page:** `_pages/teaching.md` reads from teaching.yml
- **CV Page:** Uses `_includes/cv/teaching_from_data.liquid` to display teaching data

### Benefits
1. **Automatic Updates:** Change teaching.yml once, both pages update
2. **Consistency:** No risk of having different information on different pages
3. **Maintainability:** Easy to add, remove, or update courses

## How to Update Teaching Information

### Adding a New Course

Edit `_data/teaching.yml`:

```yaml
courses:
  - institution: "University of Texas at Dallas"
    courses:
      - title: "New Course Name"
        level: "Undergraduate"  # or Graduate, MBA Core, etc.
        role: "Teaching Assistant"  # Optional, omit if you're the instructor
        years: "2025-2026"
```

### Adding a New Institution

```yaml
courses:
  - institution: "New University Name"
    courses:
      - title: "Course Name"
        level: "Graduate"
        years: "2025"
```

### Updating Course Years

Simply edit the `years` field for the course:

```yaml
      - title: "Operations Management"
        level: "Undergraduate"
        years: "2020-2022, 2025-2026"  # Added 2026
```

## Current Teaching Data

The teaching.yml file contains:
- **UT Dallas:** Operations Management (UG), Spreadsheet Modeling (Grad)
- **Stanford:** Optimization/Simulation/Modeling (MBA TA), Online Marketplaces (MBA TA)
- **U de Chile:** Optimization (UG TA), Economics I (UG TA), Stochastic Processes (UG TA), Operations Management I (UG TA)

## Display Formats

### Teaching Page
Shows courses grouped by institution with level and role information

### CV Page
Shows courses with year badges, titles, institution, and level in a formatted list

Both formats automatically update when you modify `_data/teaching.yml`.

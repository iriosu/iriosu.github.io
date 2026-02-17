# Students Data Synchronization

The students section is now automatically synchronized between the **People page** (`/people`) and the **CV Doctoral Advisement section** (`/cv`). Both pages pull from a single source of truth: `_data/students.yml`.

## How It Works

### Single Source of Truth
- **Data File:** `_data/students.yml`
- **People Page:** `_pages/people.md` reads from students.yml (Students section)
- **CV Page:** Uses `_includes/cv/doctoral_advisement_from_data.liquid` to display doctoral advisement

### Benefits
1. **Automatic Updates:** Change students.yml once, both pages update
2. **Consistency:** No risk of having different student information on different pages
3. **Maintainability:** Easy to add, remove, or update students

## How to Update Student Information

### Adding a New Student

Edit `_data/students.yml`:

```yaml
students:
  - name: "New Student Name"
    photo: "new_student.jpeg"  # Photo in assets/coauthors/
    website: "https://student-website.com"
    affiliation: "UTD"
    role: "Primary Advisor"  # or "Co-Advisor"
    start_year: "2026"
```

Both the people page and CV will automatically update!

### Updating Student Information

Simply edit the student's entry in `students.yml`:

```yaml
  - name: "Student Name"
    photo: "updated_photo.jpeg"  # New photo
    website: "https://new-website.com"  # Updated website
    affiliation: "UTD"
    role: "Primary Advisor"
    start_year: "2023"
```

### Removing a Student

Delete or comment out the student's entry in `students.yml`:

```yaml
# Former student - graduated
#  - name: "Former Student"
#    photo: "photo.jpeg"
#    ...
```

## Current Students

As of now, students.yml contains:
- **Pramit Ghosh** (Primary Advisor, 2023)
- **Abhijit Marar** (Primary Advisor, 2025)
- **Shayak Ghosal** (Co-Advisor, 2025)
- **Rahul Sharma** (Primary Advisor, 2025)
- **Shenghui Zhai** (Primary Advisor, 2025)

## Display Formats

### People Page
Shows students in a responsive grid with:
- Photo (circular)
- Name
- "PhD Student" label
- Affiliation

### CV Doctoral Advisement Section
Shows students in a formatted list with:
- Year badge (start year - Present)
- Name
- "PhD Student (Primary Advisor/Co-Advisor)" label
- Affiliation

Both formats automatically update when you modify `_data/students.yml`.

# al-folio Website Setup Guide

Your website has been successfully set up using the [al-folio](https://github.com/alshedivat/al-folio) template! 🎉

## Quick Start

### Using Docker (Recommended)

1. **Pull the Docker image:**
   ```bash
   docker compose pull
   ```

2. **Start the development server:**
   ```bash
   docker compose up
   ```

3. **View your site:**
   Open your browser and navigate to `http://localhost:8080`

4. **Stop the server:**
   Press `Ctrl+C` in the terminal

### Using Ruby/Jekyll (Alternative)

If you prefer not to use Docker:

```bash
bundle install
bundle exec jekyll serve --port 4000
```

Then visit `http://localhost:4000`

## What's Been Configured

The following has been set up for you:

- **Personal Information** in [_config.yml](_config.yml):
  - Name: Ignacio Rios
  - Email: ignacio.riosuribe@utdallas.edu
  - Institution: UT Dallas Naveen Jindal School of Management
  - Website URL: https://iriosu.github.io

- **About Page** ([_pages/about.md](_pages/about.md)):
  - Basic biographical information
  - Contact details
  - Research interests

- **Scholar Settings**:
  - Configured for your name in bibliography citations

## Next Steps

### 1. Add Your Profile Picture
Replace `assets/img/prof_pic.jpg` with your photo

### 2. Update Your CV
- Add your CV PDF to `assets/pdf/`
- Update the path in `_data/socials.yml`

### 3. Add Publications
Edit `_bibliography/papers.bib` and add your publications in BibTeX format

### 4. Customize Social Media Links
Edit `_data/socials.yml` to add:
- Google Scholar ID
- LinkedIn
- GitHub
- Twitter/X
- ORCID
- And more...

### 5. Add News/Announcements
Create files in the `_news/` directory to add news items to your homepage

### 6. Add Projects
Create files in the `_projects/` directory to showcase your research projects

### 7. Add Blog Posts (Optional)
Create files in the `_posts/` directory following the format: `YYYY-MM-DD-title.md`

## Important Files

- **_config.yml** - Main configuration file
- **_pages/about.md** - Home page content
- **_bibliography/papers.bib** - Your publications
- **_data/socials.yml** - Social media and contact links
- **_data/cv.yml** - CV data (alternative to PDF)
- **assets/img/** - Images and profile picture

## Deployment

Since your repository is named `iriosu.github.io`, GitHub Pages will automatically deploy from the `gh-pages` branch (or as configured in your repository settings).

### To deploy:

1. Commit and push your changes:
   ```bash
   git add .
   git commit -m "Setup al-folio website"
   git push origin al-folio-migration
   ```

2. Merge to your main/master branch or configure GitHub Pages to deploy from the `al-folio-migration` branch

3. GitHub Actions will automatically build and deploy your site

## Documentation

For detailed customization options, check out:
- [CUSTOMIZE.md](CUSTOMIZE.md) - Comprehensive customization guide
- [FAQ.md](FAQ.md) - Frequently asked questions
- [INSTALL.md](INSTALL.md) - Detailed installation instructions
- [al-folio repository](https://github.com/alshedivat/al-folio) - Official documentation

## Troubleshooting

If you encounter any issues:

1. **Port already in use:**
   ```bash
   docker compose down
   ```

2. **Changes not showing:**
   - Clear your browser cache
   - Make sure Docker container is running
   - Check that files are saved

3. **Build errors:**
   - Check [TROUBLESHOOTING.md](TROUBLESHOOTING.md)
   - Verify all required files are present
   - Ensure Docker/Ruby versions are compatible

## Support

For issues and questions:
- Check the [al-folio Issues](https://github.com/alshedivat/al-folio/issues)
- Read the [FAQ](FAQ.md)
- Consult the [TROUBLESHOOTING guide](TROUBLESHOOTING.md)

Happy building! 🚀

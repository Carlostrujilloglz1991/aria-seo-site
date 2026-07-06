# Push SEO Site to GitHub Pages

> Site: **Money Psychology** — 228 articles ready. Live URL after deploy:
> **https://carlostrujillo.github.io/money-psychology/**
> Last verified: 2026-07-01 (sitemap + robots regenerated, all 228 pages covered).

---

## One-time setup (do this once, ~5 minutes)

**1. Create the GitHub repo**
Go to github.com → **New repository** → name it exactly `money-psychology` → **Public** → **Create repository**. Do NOT add a README/.gitignore (the folder already has files).

**2. Push from your Windows machine**
Open PowerShell in `C:\Users\carlo\Documents\PythonScripts\seo_site\` and run:

```powershell
cd C:\Users\carlo\Documents\PythonScripts\seo_site

# Start clean — the old .git in this folder is in a half-initialized state
# (valid `main` commit but a stray `master` ref and no remote). A fresh init
# is the reliable path and guarantees the new sitemap.xml + robots.txt land.
Remove-Item -Recurse -Force .git

git init
git add .
git commit -m "Launch Money Psychology - 228 articles + sitemap + robots"
git branch -M main
git remote add origin https://github.com/carlostrujillo/money-psychology.git
git push -u origin main
```

If `git push` asks you to authenticate, sign in with your GitHub account (browser popup or a Personal Access Token).

**3. Turn on GitHub Pages**
On GitHub: repo **Settings → Pages → Source: Deploy from a branch → Branch: `main` → Folder: `/ (root)` → Save**.
Wait ~1-2 minutes. The site goes live at **https://carlostrujillo.github.io/money-psychology/**.

---

## Every time new articles are added afterward

The article pipeline writes new `.html` files into this folder automatically. To publish them:

```powershell
cd C:\Users\carlo\Documents\PythonScripts\seo_site
python generate_sitemap.py          # refresh sitemap.xml + robots.txt for the new pages
git add .
git commit -m "Add new articles"
git push
```

`generate_sitemap.py` (added 2026-07-01) rebuilds `sitemap.xml` and `robots.txt` from
whatever `.html` files are present, reading the base URL from `_config.yml`. Run it before
every push so Google keeps discovering new pages. (The old hand-maintained sitemap had
drifted to 192 URLs while 228 articles existed — 36 pages were invisible to search.)

---

## Right after the first launch (SEO — do in order)

1. **Google Search Console** (search.google.com/search-console) → add property
   `https://carlostrujillo.github.io/money-psychology/` → verify → **Sitemaps** →
   submit `sitemap.xml`. This is the single biggest lever for getting indexed.
2. **Bing Webmaster Tools** (bing.com/webmasters) → add site → submit the same sitemap.
3. **Google Analytics** (or a lightweight alternative) — add the tracking tag to pages so
   you can see which articles pull traffic.

## Affiliate monetization (turns traffic into $)

- **Amazon Associates** — affiliate-program.amazon.com. Once approved, the tag is applied
  by `apply_affiliate_tag.py` (already in this folder).
- **Coinbase / eBay Partner Network** — sign up, then drop referral/tracking links into the
  relevant articles.
- Keep `affiliate-disclosure.html` linked in the footer (it already is) — required by FTC
  and by the affiliate programs.

---

## Status checklist

- [x] 228 articles written
- [x] `index.html` links all articles
- [x] `_config.yml` set (Jekyll `minima` theme, correct url + baseurl)
- [x] `sitemap.xml` covers all 228 pages (regenerated 2026-07-01)
- [x] `robots.txt` points crawlers to the sitemap
- [ ] **Pushed to GitHub** ← Carlos, this is the only blocker to going live
- [ ] GitHub Pages enabled
- [ ] Sitemap submitted to Google Search Console
- [ ] Affiliate tags applied

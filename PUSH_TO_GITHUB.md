# Push SEO Site to GitHub Pages

## One-time setup

1. Go to github.com → New repository → name it `money-psychology` → Public → Create
2. On your Windows machine, open PowerShell in C:\Users\carlo\Documents\PythonScripts\seo_site\

```powershell
git init
git add .
git commit -m "Initial site launch - all articles"
git branch -M main
git remote add origin https://github.com/carlostrujillo/money-psychology.git
git push -u origin main
```

3. On GitHub: Settings → Pages → Source: Deploy from branch → Branch: main → / (root) → Save

Site will be live at: https://carlostrujillo.github.io/money-psychology/

## Every time you add a new article

```powershell
cd C:\Users\carlo\Documents\PythonScripts\seo_site
git add .
git commit -m "Add: [article name]"
git push
```

## Files ready to push (30 articles — last updated 2026-06-26)

- index.html (homepage — all articles linked)
- about.html
- affiliate-disclosure.html
- _config.yml (GitHub Pages config)
- sitemap.xml (auto-generated — submit to Google Search Console after launch)
- how-nurses-can-earn-passive-income.html
- defi-yield-for-beginners.html
- ebay-arbitrage-for-beginners.html
- best-passive-income-apps-2026.html
- how-to-self-publish-low-content-books-kdp.html
- how-to-automate-passive-income-with-ai-2026.html
- best-journals-for-nurses-2026.html
- best-log-books-for-nurses-2026.html
- best-wellness-journals-for-women-2026.html
- best-passive-income-for-nurses-2026.html
- passive-income-for-travel-nurses.html
- how-to-fund-crna-school-passive-income.html
- icu-nurse-to-crna-financial-plan.html
- amazon-kdp-for-beginners-log-books.html
- best-journals-for-adhd-adults-2026.html
- best-log-books-for-tradespeople-2026.html
- best-planners-for-nurses-2026.html
- best-study-journals-for-crna-school.html
- best-log-books-for-beekeepers-2026.html
- best-planners-for-adhd-college-students-2026.html
- best-journals-for-military-spouses-2026.html
- best-log-books-for-overlanding-2026.html
- best-journals-for-christian-entrepreneurs-2026.html
- best-journals-for-senior-caregivers-2026.html
- best-planners-for-nursing-students-2026.html
- best-notebooks-for-icu-nurses-2026.html
- best-gift-ideas-for-nurses-2026.html

## Affiliate links to add once live

- Coinbase referral: https://coinbase.com/join/[your-referral-code]
- Aave (no affiliate program — just link to app.aave.com)
- Amazon Associates: Sign up at affiliate-program.amazon.com → replace Amazon links in articles with tracking IDs
- eBay Partner Network: partnernetwork.ebay.com → replace eBay links with tracking IDs

## SEO checklist after launch

- [ ] Submit sitemap to Google Search Console (search.google.com/search-console)
- [ ] Add site to Bing Webmaster Tools
- [ ] Create sitemap.xml (list of article URLs) and link from index.html
- [ ] Add Google Analytics tag to all pages for traffic tracking

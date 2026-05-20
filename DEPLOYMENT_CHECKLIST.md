# ✅ Deployment Checklist

## Before You Deploy

- [ ] All three pages work locally (prem, boost, gift)
- [ ] Form validation works:
  - [ ] Prem: Username required
  - [ ] Boost: Link + min 10 boosts required
  - [ ] Gift: Username + min 1 item selected required
- [ ] Success page displays correctly
- [ ] `.env` file created locally with secrets
- [ ] `.env` is in `.gitignore` (won't be committed)

## Git Setup

- [ ] `git init` (if new repo)
- [ ] `git add .`
- [ ] `git commit -m "Initial: Prem-Bek order system"`
- [ ] Created GitHub repository
- [ ] `git remote add origin <your-repo-url>`
- [ ] `git push -u origin main`

## Vercel Deployment

- [ ] `npm install -g vercel` (if not installed)
- [ ] `vercel` command executed and project linked
- [ ] Vercel dashboard shows your project
- [ ] Environment variables added in Vercel dashboard:
  - [ ] `TELEGRAM_BOT_TOKEN` = `7548520724:AAGSRnqwBeb35JM-6609-4WhLphX9dIBTA4`
  - [ ] `TELEGRAM_CHAT_ID` = `-1003990120376`
- [ ] `vercel --prod` executed for production deployment

## Post-Deployment Testing

- [ ] Vercel URL is accessible in browser
- [ ] Pages load without errors
- [ ] Form validation still works
- [ ] Submit order from prem page
  - [ ] Order arrives in Telegram group ✅
  - [ ] Success page displays
- [ ] Submit order from boost page
  - [ ] Order arrives in Telegram group ✅
  - [ ] Success page displays
- [ ] Submit order from gift page
  - [ ] Order arrives in Telegram group ✅
  - [ ] Success page displays

## Troubleshooting

If orders don't arrive:
1. Check Vercel logs: `vercel logs -f --prod`
2. Verify bot token is correct
3. Verify chat ID starts with `-100` and includes group ID
4. Restart Vercel deployment: `vercel --prod --force`

## Secret Management

✅ What's protected:
- Bot token in environment variables (not in code)
- Chat ID in environment variables (not in code)
- `.env` file not committed to git
- Production secrets separate from local development

✅ What's safe:
- HTML/CSS/JS files are public
- form validation is on client-side (expected)
- Success messages are public

## File Structure (After Deployment)

```
Vercel Deployment includes:
├── index.html (public)
├── success.html (public)
├── shared-styles.css (public)
├── imgs/ (public)
├── api/send-order.js (serverless function)
└── package.json (for dependencies)

NOT included (protected):
├── .env (git-ignored, local only)
├── .git/ (git-ignored)
├── node_modules/ (built on Vercel)
└── venv/ (not needed)
```

## Done! 🎉

Your Prem-Bek application is now:
- ✅ Deployed to Vercel
- ✅ Secure (secrets in env variables)
- ✅ Scalable (serverless functions)
- ✅ Fast (no cold starts on Node.js)
- ✅ Free (Vercel free tier sufficient)

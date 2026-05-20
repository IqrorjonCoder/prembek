# Vercel Deployment Guide

## Setup for Local Testing

1. **Install dependencies:**
   ```
   npm install
   ```

2. **Create `.env` file with your secrets:**
   ```
   TELEGRAM_BOT_TOKEN=7548520724:AAGSRnqwBeb35JM-6609-4WhLphX9dIBTA4
   TELEGRAM_CHAT_ID=-1003990120376
   ```

3. **Test locally:**
   ```
   npm run dev
   ```
   Then open http://localhost:3000

## Deploy to Vercel

### Step 1: Connect Repository
```
vercel
```

### Step 2: Add Environment Variables in Vercel Dashboard
1. Go to your Vercel project dashboard
2. Click "Settings" → "Environment Variables"
3. Add two variables:
   - `TELEGRAM_BOT_TOKEN` = `7548520724:AAGSRnqwBeb35JM-6609-4WhLphX9dIBTA4`
   - `TELEGRAM_CHAT_ID` = `-1003990120376`

### Step 3: Redeploy
```
vercel --prod
```

## Important Notes

- **NEVER commit `.env` file** - it's in `.gitignore`
- **Never hardcode secrets in HTML/JS** - use API endpoint instead
- **Environment variables are only available in `/api/*` routes** - they're injected at runtime
- The frontend HTML is purely static - all secrets are handled server-side in `api/send-order.js`
- Telegram API calls happen on the Vercel backend, not in the browser

## Architecture

```
Browser (index.html, success.html, etc.)
    ↓ (POST /api/send-order with message)
Vercel Node.js Function (api/send-order.js)
    ↓ (Uses TELEGRAM_BOT_TOKEN from env)
Telegram Bot API
    ↓
Telegram Group Chat
```

## Troubleshooting

### "Environment Variable references Secret which does not exist"
- Make sure you added the variables in Vercel dashboard, not just locally

### Orders not reaching Telegram
- Check Vercel function logs: `vercel logs --follow`
- Verify bot token and chat ID are correct
- Ensure group chat ID starts with `-100`

### CORS errors in browser console
- These are normal and expected - CORS is handled by the backend
- Check Vercel logs for actual errors

## Files Structure

```
project/
├── index.html           # Main order form
├── success.html         # Success confirmation page
├── vercel.json         # Vercel configuration
├── package.json        # Node.js dependencies
├── .env                # Local secrets (git-ignored)
├── .gitignore         # Prevents accidental secret commits
└── api/
    └── send-order.js   # Node.js serverless function
```

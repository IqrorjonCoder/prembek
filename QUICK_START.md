# 🚀 Quick Start - Deployment to Vercel

## 3 Easy Steps:

### 1️⃣ Initialize Git (if not already done)
```bash
cd x:\projects\prembek\test_all_prem
git init
git add .
git commit -m "Initial commit: Prem-Bek order system"
git branch -M main
git remote add origin https://github.com/YOUR_USERNAME/prem-bek.git
git push -u origin main
```

### 2️⃣ Deploy to Vercel
```bash
npm install -g vercel
vercel
```
Follow the prompts - it will auto-detect the project and deploy it.

### 3️⃣ Add Environment Variables
In Vercel Dashboard (https://vercel.com):
1. Go to your project
2. Settings → Environment Variables
3. Add:
   - Name: `TELEGRAM_BOT_TOKEN`
     Value: `7548520724:AAGSRnqwBeb35JM-6609-4WhLphX9dIBTA4`
   - Name: `TELEGRAM_CHAT_ID`
     Value: `-1003990120376`
4. Redeploy: `vercel --prod`

## ✅ Testing

After deployment, try submitting an order from your Vercel URL. 
Check if message arrives in your Telegram group.

## 📝 Notes

- Never commit `.env` file (it's git-ignored)
- Secrets are safe in Vercel dashboard
- Node.js API runs serverless on Vercel
- Frontend is pure HTML/CSS/JS - no Python needed

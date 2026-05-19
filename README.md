# 🚀 Prem_Bek - Telegram Premium/Boost/Gift Store

Secure web application for managing Telegram Premium, Boost, and Gift orders with bot notifications.

## ✨ Features

- 💎 Telegram Premium subscription orders
- ⚡ Telegram Boost orders
- 🎁 Telegram Gift Store
- 🤖 Telegram bot notifications
- ✅ Form validation with error messages
- 🔒 Secure API with environment variables

## 🔒 Security

- **Secret Management**: All sensitive data (API keys, tokens) are stored in environment variables
- **No Hardcoded Secrets**: Secrets are never committed to Git
- **Secure Backend**: Telegram API calls are made from backend, not frontend
- **HTTPS Ready**: Works with HTTPS on Vercel

## 📋 Prerequisites

- Python 3.8+
- pip
- Git
- Vercel account (for deployment)

## 🛠️ Local Setup

1. **Clone the repository**
   ```bash
   git clone <your-repo>
   cd test_all_prem
   ```

2. **Create virtual environment**
   ```bash
   python -m venv venv
   source venv/bin/activate  # On Windows: venv\Scripts\activate
   ```

3. **Install dependencies**
   ```bash
   pip install -r requirements.txt
   ```

4. **Set environment variables**
   Create `.env` file in the root directory:
   ```
   TELEGRAM_BOT_TOKEN=your_bot_token_here
   TELEGRAM_CHAT_ID=your_chat_id_here
   ```

5. **Run locally**
   ```bash
   python app.py
   ```
   Open http://localhost:5000 in your browser

## 🌐 Deployment to Vercel

1. **Push to GitHub**
   ```bash
   git add .
   git commit -m "Initial commit"
   git push origin main
   ```

2. **Deploy on Vercel**
   - Go to [vercel.com](https://vercel.com)
   - Click "New Project"
   - Import your GitHub repository
   - Add environment variables in Vercel dashboard:
     - `TELEGRAM_BOT_TOKEN`
     - `TELEGRAM_CHAT_ID`
   - Click "Deploy"

3. **Your app is live!**
   - Vercel will provide your deployment URL
   - Share the link with users

## 📱 Available Pages

### 1. Premium Page (💎)
- Telegram username (required)
- Contact info (optional)
- Plan selection (1, 3, 6, 12 months)
- Auto price calculation

### 2. Boost Page (⚡)
- Channel/Group link (required)
- Boost count (minimum 10, required)
- Contact info (optional)
- Real-time price calculation

### 3. Gift Page (🎁)
- 10 gift options with prices
- Telegram username (required)
- Contact info (optional)
- Interactive gift selection with counters

## 🔐 Environment Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `TELEGRAM_BOT_TOKEN` | Your Telegram bot API token | `7548520724:AAG...` |
| `TELEGRAM_CHAT_ID` | Group/channel chat ID to receive orders | `-1003990120376` |

## 📝 Order Data Format

Orders are sent to Telegram group in format:

```
💎 PREMIUM BUYURTMA
Telegram Username: @user
Aloqa Uchun: +998...
Davomiyligi: 1 OY
```

## ⚠️ Important

- **Never commit .env file to Git** - it's in .gitignore
- **Keep your bot token secret** - don't share it
- **Test locally first** before deploying to Vercel
- **Monitor your bot** for order notifications

## 🐛 Troubleshooting

### Orders not receiving in Telegram?
- Check `TELEGRAM_BOT_TOKEN` is correct
- Check `TELEGRAM_CHAT_ID` is correct
- Make sure bot is member of the group
- Bot needs admin permissions to post messages

### Form not submitting?
- Check browser console for errors
- Make sure all required fields are filled
- Check network tab to see API response

### Vercel deployment fails?
- Check requirements.txt has all dependencies
- Verify environment variables are set in Vercel
- Check build logs in Vercel dashboard

## 📄 Files Structure

```
test_all_prem/
├── index.html              # Frontend UI
├── app.py                  # Flask server
├── api/
│   └── send_order.py      # Vercel serverless function
├── shared-styles.css       # Shared styles
├── requirements.txt        # Python dependencies
├── vercel.json            # Vercel configuration
├── .env                   # Environment variables (local only)
├── .gitignore             # Git ignore rules
└── imgs/                  # Gift images
```

## 🚀 Performance Tips

- Images are optimized for fast loading
- API calls have 10-second timeout
- Error handling for network failures
- Production debug mode disabled

## 📞 Support

For issues or questions, check Telegram group for notifications and error logs.

---

**Made with ❤️ for Telegram users**

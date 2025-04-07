# Duckling Date Parser Service for Expense Insight

**Author**: Devendran Vemula
**App Name**: Budget Buddy

---

## 📌 About the App

**Expense Insight** is an intelligent expense tracking app that supports natural language queries like:

- "What did I spend last week on food?"
- "Show total expenses from March 5 to March 10"
- "Highest spending this month on groceries"

To interpret and extract **date ranges** from such natural queries, the app uses [Duckling](https://github.com/facebook/duckling), a powerful NLP service developed by Facebook AI Research.

---

## 🐳 This Dockerfile

This repo contains the `Dockerfile` used to deploy Duckling as a microservice. It runs Duckling on port `8000`, allowing the main Node.js backend to send date queries and receive structured date intervals.

### ➤ Dockerfile Summary:
- **Base image**: `rasa/duckling`
- **Exposed port**: `8000`
- **Command**: Starts Duckling with minimal logs

---

## 🚀 How It Works

Once deployed (e.g., on [Render](https://render.com)), this service receives `POST` requests like:

```bash
curl -X POST https://your-duckling-service.onrender.com/parse \
  -d 'text=from last Monday to Friday&locale=en_US'

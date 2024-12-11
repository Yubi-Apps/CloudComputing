# 🚀 Cloud Computing Path

> **Cloud Comuputing Implementation.**  
*"Deploy API, Model, and Monitoring"*

---

## 📚 Table of Contents

- [About the Project](#-about-the-project)
- [Member Team](#-member-team)
- [Getting Started](#-deployment)

---

## 📖 About the Project

Ini merupakan Repositori dari tim Cloud Computing.

### 🎯 Member Team
- **1**: Moch. Arif Samsul Rizal.
- **2**: Michael Kondengis.


---

## 🏁 Deployment

Ikuti langkah-langkah berikut untuk menjalankan deploy model dan API di Cloud Run:
- gcloud builds submit --tag gcr.io/yubi-flask/yubi
- gcloud run deploy yubi --image gcr.io/yubi-flask/yubi --platform managed --region asia-southeast2 --allow-unauthenticated

1. Clone repository:
   ```bash
   git clone https://github.com/username/repository-name.git
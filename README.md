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
1. buat app.py, prediction.py, model.h5, requirements.txt dan DockerFile berada dalam satu folder
2. untuk file model.h5 karena ukuran cukup besar, kami upload menggunakan google drive
   https://drive.google.com/file/d/1hoQ4Spe5a3aP5SHQNX8UTVzZfLfbv8A-/view?usp=drive_link
4. jika semua sudah dalam satu folder, bisa menjalankan perintah berikut melalui CLI
- gcloud builds submit --tag gcr.io/yubi-flask/yubi
- gcloud run deploy yubi --image gcr.io/yubi-flask/yubi --platform managed --region asia-southeast2 --allow-unauthenticated

## 🏁 Cloud Architectur
<img src="https://drive.google.com/file/d/1cQDLkwkhwmWPQhWdv0AAGWR_iqI7-5VY/view?usp=drive_link" alt="4" width="auto" height="300">

1. Clone repository:
   ```bash
   git clone https://github.com/username/repository-name.git

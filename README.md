# 🚀 Cloud Computing Path

> **Cloud Comuputing Implementation.**  
*"Deploy API, Model, and Monitoring"*

---

## 📚 Table of Contents

- [Member Team](#-member-team)
- [Deployment](#-deployment)
- [API Documentation](#-api-documentation)

---

### 🎯 Member Team

- **1.** Moch. Arif Samsul Rizal - C202B4KY2520
- **2.** Michael Kondengis - C208B4KY2485

---

## 🏁 Deployment

Follow these steps to deploy the model and API in Cloud Run:
1. make app.py, prediction.py, model.h5, requirements.txt and DockerFile in one folder
2. for the model.h5 file, because the size is quite large, we upload it using google drive
   https://drive.google.com/file/d/1hoQ4Spe5a3aP5SHQNX8UTVzZfLfbv8A-/view?usp=drive_link
4. if everything is in one folder, you can run the following command via CLI
```bash
- gcloud builds submit --tag gcr.io/[PROJECT_ID]/name
```
```bash
- gcloud run deploy name --image gcr.io/[PROJECT_ID]/name --platform managed --region asia-southeast2 --allow-unauthenticated
```
### Cloud Architectur
<img src="https://drive.google.com/uc?export=view&id=1cQDLkwkhwmWPQhWdv0AAGWR_iqI7-5VY" alt="4" width="auto" height="300">

### Cost CC
<img src="https://drive.google.com/uc?export=view&id=1StBYjmQ2IdpBlHMvN3o7uw0mhVZIXf0D" alt="4" width="auto" height="300">

---

#### 🏁 API Documentation

## Pest Prediction

### `POST /api/getPredictionOutput`
Upload images for pest prediction

**Request Body:**
- `file`: Pest image file (multipart/form-data)

**Response:**
  * `pest_type`: Detected pest name
  
---


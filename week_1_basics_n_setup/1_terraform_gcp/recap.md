1. อ่าน 2_gcp_overview.md
   - เพิ่ม service account = สร้างบัญชีคนที่จะใช้ resource ใน project นี้
     - manage key --> add key
     - โหลด service-account-key.json เก็บไว้
     - set key environment
       - export GOOGLE_APPLICATION_CREDENTIALS="<path/to/your/service-account-authkeys>.json"
     - reset token และ authorize
       - gcloud auth application-default login
2. assign role ใน IAM ถ้าไม่มีบัญชีให้ assign ก็ grant access
   - edit
     - BigQuery Admin, Storage Admin, Storage Object Admin
   - enable api 2 ตัว (อ่านใน 2_gcp_overview.md)
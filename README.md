# 🛠️ Post-Format Automation Script (PowerShell)

This PowerShell script automates post-format configurations on a Windows system to reduce manual setup time and improve consistency across devices.

## 🔧 Features

- Verifies Administrator privileges
- Enables the built-in Administrator account
- Sets a password for the Administrator account
- Detects active Ethernet adapter
- Sets custom DNS server to `DNS_IP`
- Applies the "High Performance" power plan
- Disables display and sleep timeout on AC power

---

## 💻 How to Use

> ⚠️ **Run this script as Administrator.**

### Steps:

1. Open PowerShell **as Administrator**
2. Navigate to the script directory
3. Run the script using:
   ```powershell
   .\PostFormat-Automation.ps1
   ```

---

## 👨‍💻 Authors

- Developed by Javad Hussain  
- With help from [Sharan Kumar](https://www.linkedin.com/in/sharankumar-/)

---

## 📌 Notes

- Update the DNS IP and password values before deployment.
- Avoid hardcoding credentials in production scripts.
- This script is ideal for use after formatting systems in IT support or service center environments.

---

## 📄 License

This project is open source.
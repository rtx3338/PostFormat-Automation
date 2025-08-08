# 🛠️ Post-Format Automation Script (PowerShell)

This PowerShell script automates essential configurations right after formatting a Windows system. It helps ensure systems are set up consistently, securely, and efficiently with minimal manual intervention.

## 🔧 What the Script Does

✅ Checks if the script is running with Administrator privileges  
✅ Enables the built-in `Administrator` account  
✅ Sets a secure password for the Administrator account  
✅ Sets a custom DNS server (`192.168.*.*`) on the active Ethernet adapter  
✅ Switches the system to **High Performance** power plan  
✅ Disables display and sleep timeout when plugged in (AC power)

---

## 💻 Usage Instructions

> ⚠️ **Important:** This script must be run with Administrator privileges.

### 1. Clone or Download the Repository

```bash
git clone https://github.com/rtx3338/PostFormat-Automation.git
cd PostFormat-Automation
```

### 2. Run the Script

```powershell
.\PostFormat-Automation.ps1
```

> 🧠 Tip: Right-click PowerShell and choose “Run as Administrator” before executing the script.

---

## 👨‍💻 Author

Developed by [Your Name]  
With the help of [Sharan Kumar](https://www.linkedin.com/in/sharankumar-/)

---

## 📌 Notes

- The Administrator password is currently hardcoded in the script for demonstration. **Please modify it** or use a secure vault in production environments.
- DNS server is set to `192.168.*.*` — change it as per your network configuration.

---

## 📄 License

This project is open-source and available under the [MIT License](LICENSE).
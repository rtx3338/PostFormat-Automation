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
git clone https://github.com/your-username/PostFormat-Automation.git
cd PostFormat-Automation

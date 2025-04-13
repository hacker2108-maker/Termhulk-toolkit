---

# Termhulk.sh - Termux Non-Root Hacking Toolkit


---

|_   |                 | |  | |     | | |
| | ___ _ __ _ __ ___ | |__| |   | | | __
| |/ _ \ '__| ' ` _ |  __  | | | | | |/ / | |  / |  | | | | | | |  | | |_| | |   < _/_||  || || |||  ||_,|||_\

**Termhulk.sh** est un outil d’automatisation de tests de sécurité pour Termux, **sans accès root**. Il regroupe en une interface interactive plusieurs outils de pentesting, OSINT et hacking web.

---

## Fonctionnalités

- **Scan réseau** (Nmap, Ping)
- **Brute Force** (Hydra)
- **Phishing** (Zphisher)
- **DDoS** (UDP Flood via hping3)
- **Web Hacking** (SQL Injection, XSS avec sqlmap)
- **OSINT Recon** (Sherlock, lookup téléphone)

---

## Installation & Exécution

### 1. Préparer l’environnement Termux

Lance Termux et tape :

```bash
pkg update && pkg upgrade -y
pkg install git python bash -y

2. Cloner le dépôt

git clone https://github.com/hacker2108-maker/Termhulk-toolkit.git
cd Termhulk-toolkit
chmod +x Termhulk.sh

3. Lancer le script

./Termhulk.sh


---

Menu Principal

Une fois lancé, tu verras ce menu :

[+] Select an option:
1. Network Scanner (Nmap, Ping)
2. Brute Force Attack (Hydra)
3. Phishing Tool (Social Media)
4. DDoS Attack (UDP Flood)
5. Web Hacking (SQLi, XSS)
6. OSINT Recon (Sherlock, Phone Lookup)
7. Exit


---

Exemples d’Utilisation

1. Scan Réseau

> 1
Enter target IP/host: 192.168.0.1
# Lance nmap automatiquement

2. Brute Force avec Hydra

> 2
Enter target IP: 192.168.0.12
Enter service (ssh/ftp/instagram): ssh
Enter username: admin
Enter wordlist path: /sdcard/wordlist.txt

3. Phishing

> 3
# Clonage de Zphisher et lancement automatique


---

Dépendances Automatiques

Pas besoin d’installer tous les outils manuellement. Le script les installe automatiquement s’ils ne sont pas présents :

nmap

hydra

sqlmap

hping3

git, python, etc.



---

Outils Utilisés


---

Avertissement Légal

> Ce projet est strictement à but éducatif. Toute utilisation non autorisée contre des systèmes tiers est illégale et à vos risques et périls. L’auteur décline toute responsabilité quant à un usage malveillant ou illégal.




---

Contribution

Les contributions sont les bienvenues !
Forke le projet, propose des améliorations ou soumets une Pull Request.


---

Auteur

Termhulk – développé par Hacker2108 


---

Licence

Ce projet est sous licence MIT.
Tu es libre de l’utiliser, le modifier et le partager dans les limites définies par la licence.


---


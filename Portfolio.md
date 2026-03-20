# Wilson Elan Oluwasemiloore | Cybersecurity Analyst
Security+ certified analyst with hands-on experience in penetration testing, vulnerability assessment, and SIEM operations. Skilled at identifying security gaps through manual testing and translating technical findings into risk-prioritized remediation guidance. Seeking SOC Analyst or Application Security role to apply offensive and defensive security skills

**CompTIA Security+ Certified | Security Operations, Threat Analysis & Risk-Based Defense**

www.linkedin.com/in/elan-wilson-709942302

---

## Projects
### Project 1: Custom Python Port Scanner

**Description:**
Developed a multi-threaded network scanner in Python designed for Blue Team defensive assessments. The tool scans all 65,535 ports on a target host, identifies open services, and cross-references findings against a built-in port intelligence database — providing risk classifications (Critical, High, Medium) and actionable remediation guidance for each discovered service. Built as a lightweight, dependency-free alternative to Nmap with a focus on defender awareness rather than just enumeration.

**Skills:**
- **Network Protocol Analysis:** Deep understanding of the TCP/IP stack and the Three-Way Handshake (SYN, SYN-ACK, ACK)
- **Python Programming:** Proficiency in socket programming, concurrency (threading), thread throttling, and CLI argument parsing
- **Defensive Security:** Practical knowledge of dangerous ports, misconfiguration risks, and OS-level remediation (UFW, systemctl, service hardening)
- **Reconnaissance Methodology:** Practical experience in active footprinting and attack surface identification

**Resources:**
- [View Script on GitHub](https://github.com/Albion-cmd/Albion-MYDFIR/blob/main/PortScanner.sh)
- [View Full Writeup & Usage Guide (PDF)](https://drive.google.com/file/d/1yi8Et-3uCqlh21aM-vhg3YyhIP-bHbo7/view?usp=sharing)

### Project 2: Hardener Script & Suite-Setter for Kali

**Description:**
Engineered a comprehensive automation suite to transform a default Kali Linux installation into a hardened, production-ready workstation. The solution automates the implementation of least privilege principles, network isolation via firewall orchestration, and OPSEC-focused privacy controls (MAC spoofing). By reducing manual setup time from 45 minutes to 5 minutes, this project demonstrates a commitment to DevSecOps principles and efficient security operations.

**Skills:**
- **Bash Scripting & Python 3:** Automation scripting across both languages for system configuration and tooling
- **TCP/IP Networking & Firewall Management:** Hands-on experience with `UFW` and `iptables` for network isolation and traffic control
- **OS Hardening & OPSEC:** Practical implementation of least privilege, MAC spoofing, and operations security principles
- **Linux System Administration:** Deep familiarity with Kali Linux internals, service management, and system-level automation

**Link:** [View on GitHub](https://github.com/Albion-cmd/Albion-MYDFIR/blob/main/Kali-Hardener%20&%20Suite-Setter.sh)

### [Project 3: Advanced Vulnerability Scanning & Security Assessment Pipeline]

**Description:**
Designed and executed a comprehensive, multi-tool vulnerability scanning pipeline simulating real-world penetration testing reconnaissance workflows. The project covered the full assessment lifecycle — from host discovery and service enumeration to web server fingerprinting and automated report generation. Leveraged multiple industry-standard tools to cross-validate findings, bypass firewall filters and IDS/IPS systems, and perform deep packet analysis to confirm evasion efficacy

**Key Activities:**
- Performed multi-stage network reconnaissance using **Nmap** with advanced flags for stealth scanning, packet fragmentation, and identity masking to evade firewall and IDS/IPS detection
- Used **Nmap Scripting Engine (NSE)** to automate web server fingerprinting — extracting HTTP headers, server banners, and page titles
- Conducted service version fingerprinting (`-sV`) to map open ports to exact software versions, enabling CVE correlation
- Parsed and extracted structured security data from Nmap's XML, Grepable, and Normal output formats using **Bash pipelines and Regex**
- Validated packet-level evasion techniques through deep packet inspection in **Wireshark**, analyzing raw Ethernet frames and TCP/IP behavior
- Automated the full reporting pipeline using shell scripting — aggregating scan data into a structured **security analysis report**
- Cross-validated results across tools to ensure accuracy and completeness of findings
**Tools & Technologies:**
`Nmap` `Nmap NSE` `Wireshark` `Bash/Shell Scripting` `Regex` `Python` `TCP/IP Protocol Analysis`

**Skills:**
Network Security · Vulnerability Assessment · Service Enumeration · Firewall Evasion · IDS/IPS Bypass · Packet Fragmentation · Deep Packet Analysis · Security Reporting Automation · Linux CLI

**Link:** [View Project Files](https://drive.google.com/drive/folders/1Q_1Aq43LeYYIGs0poVp6DOm6Iglw3MGW?usp=sharing)

### Project 4: Password Security & Hash Recovery Analysis

**Description:**
Conducted a hands-on technical lab in a controlled Kali Linux environment focused on the vulnerabilities of legacy encryption and weak password policies. The project involved extracting hash material from a password-protected ZIP archive and performing an offline dictionary attack to recover credentials — highlighting the critical gap between legacy encryption (ZipCrypto) and modern security standards.

**Key Technical Tasks:**
- **Hash Extraction:** Utilized specialized tools to extract credential hash material from protected archives for offline analysis
- **Encryption Identification:** Identified and analyzed legacy ZipCrypto encryption to determine the most effective attack vector
- **Advanced Recovery:** Successfully recovered a weak password using `John the Ripper`, resolving wordlist compatibility and format issues during the process
- **Security Validation:** Demonstrated the efficacy of offline dictionary attacks against weak password policies and outdated encryption standards

**Skills:**
`Kali Linux` `John the Ripper` `Password Cracking` `Hash Analysis` `ZipCrypto vs. AES` `Defense-in-Depth`

**Link:** [View on Google Drive](https://drive.google.com/drive/folders/1YK9itfcQyA1n0WOqtnM-IRA-aZJ_pyV_?usp=sharing)

### Project 5: Web Application Penetration Testing Series

**Description:**
Conducted manual penetration tests on vulnerable web applications to understand common attack vectors. Identified and exploited authentication flaws, injection vulnerabilities, and broken access controls using manual techniques and Burp Suite. Documented findings with clear remediation guidance, demonstrating how to translate technical vulnerabilities into actionable security improvements.

**Key Technical Tasks:**

- **Reconnaissance & Attack Surface Mapping:**
  Performed manual and automated reconnaissance to enumerate endpoints, parameters, hidden content, and API routes using browser-based testing, `Burp Suite`, `OWASP ZAP`, and custom tooling.

- **Input Validation & Injection Testing:**
  Identified and exploited input validation weaknesses including reflected and stored XSS, SQL injection, command injection vectors, and insecure parameter handling.

- **Authentication & Authorization Testing:**
  Tested login mechanisms, session management, and access controls — including Broken Object Level Authorization (BOLA), Broken Function Level Authorization (BFLA), and privilege escalation scenarios.

- **Client-Side & Server-Side Security Analysis:**
  Analyzed client-side JavaScript behavior and server-side request handling to uncover trust boundary violations, insecure logic, and hidden functionality not exposed through the UI.

- **Manual Exploitation & Proof of Concept Development:**
  Developed manual payloads and proofs of concept to validate vulnerabilities beyond automated scanner findings, ensuring accurate risk assessment and reducing false positives.

- **Vulnerability Validation & Impact Assessment:**
  Confirmed exploitability of findings and evaluated technical and business impact, considering data exposure, account compromise, and downstream attack potential.

- **Reporting & Remediation Guidance:**
  Produced structured penetration testing reports detailing findings, attack methodology, evidence, and prioritized remediation steps aligned with OWASP Top 10 and secure development best practices.

**Skills:**
`Web Application Security` `Penetration Testing Methodology` `OWASP Top 10` `Burp Suite` `OWASP ZAP` `Manual Exploitation` `Authentication & Authorization Testing` `XSS & Injection Attacks` `Risk Assessment` `Technical Reporting` `Secure Design Awareness`

**Link:** [View on Google Drive](https://drive.google.com/drive/folders/1yvdHyT7VGKNlmD0sZu334IwsddFWeUrq?usp=drive_link)

## CTFs & Online Security Labs

I actively participate in Capture The Flag (CTF) challenges and structured online labs to strengthen hands-on security skills across blue team, offensive security, and threat analysis domains. Each lab is approached methodically — with emphasis on understanding attack paths, validating findings, and documenting lessons learned rather than tool-driven guessing.

### Platforms & Focus Areas

- **CTF Competitions** — Offensive and defensive challenges covering cryptography, forensics, web exploitation, reverse engineering, and OSINT
- **Blue Team Labs** — Defensive security labs focused on log analysis, network traffic inspection, incident detection and triage, email forensics, file metadata analysis, and structured investigation methodology

### Skills Practiced

- Log interpretation & alert investigation
- Network traffic inspection (pcap analysis)
- Detection of malicious behaviour & attack indicators
- Mapping technical findings to incident impact
- Documentation of investigative methodology

### Evidence & Writeups

Challenge artifacts, notes, and writeups are maintained externally and updated continuously.

**Evidence Repository:** [View on Google Drive](https://drive.google.com/drive/folders/1YxHe2bxiZPcYbQD266mXE9W6LJp4wpLW?usp=sharing)

---


---
## Certifications

A collection of completed certifications spanning API security, penetration testing, threat intelligence, and foundational cybersecurity. Full certificate documentation is available in the repository linked below.

### Foundational & General Cybersecurity
- CompTIA Security+ (SY0-701)
- Certificate of Completion — Cybersecurity (GoMyCode)
- Advent in Cyber 2025
- MCP Security Fundamentals
- Building Security into AI

### API Security
- API Penetration Testing
- API Security Fundamentals
- API Security in the World of DevSecOps
- APIsec Power User
- OWASP API Security Top 10
- API Security for PCI Compliance
- API Documentation Best Practices
- Securing API Servers
- API SecDevOps
- API Authentication
- Securing LLM and NLP APIs
- Getting Started in API Pen-Testing
- API Gateway Security Best Practices
- API Product Management Masterclass

### Offensive Security & Threat Intelligence
- Certified Threat Intelligence & Governance Analyst (CTIGA)
- Certified Red Team Operations Management (CRTOM)

### Education & Outreach
- Certified Cybersecurity Educator Professional (CCEP)

**Certificate Repository:** [View on Google Drive](https://drive.google.com/drive/folders/1io2daYJO_JYVX27C8rYraBT7UbtBwv4D?usp=sharing)

## Skills

### Security Operations & Investigation
- Log analysis, alert triage, and security monitoring
- Email security & forensics: header analysis, artifact validation, and phishing investigation
- File signature and metadata analysis for integrity and anomaly detection
- Encoding and decoding techniques (Base64) for artifact examination
- Structured investigative thinking and evidence-based analysis
- Incident detection, triage, and impact assessment

### Network & Traffic Analysis
- Network defense fundamentals and traffic inspection
- Packet capture (pcap) analysis using Wireshark
- Identification of malicious patterns, C2 indicators, and protocol abuse
- TCP/IP stack, DNS, and service port analysis
- Port risk classification and attack surface enumeration (65,535-port scanning)
- Firewall management and network isolation (UFW, iptables)

### Penetration Testing & Offensive Security
- Penetration testing methodology (Reconnaissance → Exploitation → Reporting)
- Attack surface mapping and manual testing techniques
- Web & API security testing: authentication & authorization flaws (BOLA, BFLA), input validation failures, injection attacks, rate-limit and logic testing
- Manual payload development and proof-of-concept exploitation
- Hash extraction and offline dictionary attacks (John the Ripper)
- Legacy encryption analysis (ZipCrypto vs. AES)
- Vulnerability validation and technical impact assessment

### API & Application Security
- API security testing using Postman and curl
- API authentication mechanisms and secure API design awareness
- OWASP API Top 10 and OWASP Testing Methodology alignment
- XSS, SQL injection, command injection, and insecure parameter handling
- Client-side and server-side security analysis

### Vulnerability & Risk Management
- Vulnerability scanning and assessment using Nessus
- Identification of threats, attack vectors, and risk exposure
- Risk mitigation concepts and defense-in-depth awareness
- Offline attack simulation and misconfiguration risk analysis

### Operating Systems & Platform Security
- Linux security fundamentals and system hardening (Kali Linux)
- OS hardening automation: least privilege, MAC spoofing, service lockdown
- User, permission, and access auditing
- Security-focused automation and system configuration
- Windows and Linux firewall management (UFW, iptables, netsh)

### Tools & Technologies
- Wireshark, Nessus, Burp Suite, OWASP ZAP, Nmap, Metasploit Framework
- John the Ripper, curl, Postman
- Linux CLI, VMware / VirtualBox

### Programming & Automation
- Python: socket programming, threading, concurrency, CLI tooling, input validation
- Bash: security automation, system hardening, service configuration
- Multi-threaded tool development (custom port scanner, hardening suite)

### Governance, Risk & Compliance (GRC)
- ISO/IEC 27001 and PCI-DSS awareness
- Information Security Management System (ISMS) concepts
- Risk identification, assessment, and control validation

### Professional Practices
- Security documentation and technical report writing
- Incident documentation and evidence handling
- Translating technical findings into business-relevant risk
- Security policies, standards, and procedural awareness
- Penetration test reporting aligned to OWASP Top 10

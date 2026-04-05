# Wilson Elan Oluwasemiloore | Cybersecurity Analyst

**CompTIA Security+ Certified | SOC Operations · Penetration Testing · Threat Analysis · Risk-Based Defense**

Self-taught security analyst with a bias toward understanding the *why* behind every attack, not just running the tools. I build custom security tooling from scratch — including a Python port scanner with built-in risk classification and remediation guidance designed for Blue Team defenders — and document every lab, finding, and methodology with the same rigour expected in a professional environment.

My work spans both sides of the kill chain: manual web and API penetration testing, hash cracking and encryption analysis, OS hardening automation, and defensive log and traffic analysis. Every project ends with a structured writeup because I believe the ability to communicate a finding clearly is just as critical as finding it.

Currently breaking into the industry and actively pursuing SOC Analyst and Penetration Tester roles where I can contribute immediately, keep learning fast, and grow into a well-rounded security professional.

**LinkedIn:** [elan-wilson-709942302](https://www.linkedin.com/in/elan-wilson-709942302)
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

### Project 2: Albion Hardener v2.0 — Multi-Distro Security Posture Framework

**Description:**
Designed and built a full security hardening framework for Linux systems, combining an automated
posture scanner with a terminal GUI (whiptail) and four configurable hardening levels. The tool
detects the host's distribution and package manager automatically, scores the system's security
posture out of 100 with risk classification (Critical/High/Medium/Low), and applies targeted
hardening modules — from basic firewall setup to kernel-level protections, brute-force defence,
rootkit detection, and audit logging. Tested and validated on a live Debian GNU/Linux VM with
full before/after documentation.

**Key Technical Tasks:**
- **Security Posture Scanning:** Automated assessment of firewall status, open/dangerous ports,
unnecessary running services, SSH misconfigurations, and missing security tooling — scored and
reported before any changes are made
- **Multi-Distro Support:** Auto-detects Debian/Ubuntu/Kali (`apt`), Arch (`pacman`), and
Fedora/RHEL (`dnf`) — adapts all hardening modules accordingly
- **Hardening Levels:** Four configurable levels (Decent, Advanced, Secured, Custom) covering
UFW/firewalld, SSH hardening, sysctl kernel tweaks, MAC randomisation, fail2ban,
unattended-upgrades, rkhunter, PAM password policy, and auditd
- **Terminal GUI:** Full whiptail interface with ASCII branding, colour-coded module output,
typed text effects, and a timestamped log file of every change made
- **Real-World Debugging:** Resolved live issues during testing including macchanger interactive
prompt hang (fixed with DEBIAN_FRONTEND=noninteractive + timeout), SSH lockout after disabling
password auth (resolved via VM console), and whiptail SSH terminal compatibility (TERM=xterm fix)

**Skills:**
- **Bash Scripting:** Modular script architecture, error handling, cross-distro package management,
systemd service control, sysctl kernel hardening
- **Linux Security Hardening:** UFW, SSH config hardening, PAM password policy, fail2ban,
rkhunter, auditd, MAC randomisation via NetworkManager
- **Terminal GUI Development:** whiptail menus, checklists, input boxes, ASCII art branding,
colour-coded output
- **Debugging & Problem Solving:** Identified and resolved real issues during live VM testing,
documented with exact commands and lessons learned
- **Technical Documentation:** Structured writeup with before/after evidence, issue tracking,
and skills mapping

**Resources:**
- [View Script on GitHub](https://github.com/Albion-cmd/Albion-MYDFIR/blob/main/Albion%20Harden%20Script%20For%20Linux)
- [View Writeup & Screenshots (Google Drive)](https://drive.google.com/drive/folders/1NnNopOMlrPStI5dtPVJzw3e82feQ8kaQ?usp=sharing)

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

**Link:** [View Project Files](https://drive.google.com/drive/folders/1yvdHyT7VGKNlmD0sZu334IwsddFWeUrq?usp=drive_link)

### Project 6: Suricata IDS Deployment & Network Intrusion Detection Lab
**Description:**
Deployed Suricata 8.0.4 as a Network Intrusion Detection System (IDS) on a cloud-hosted Ubuntu VM (Microsoft Azure), connected to a local Kali Linux attack machine via Tailscale VPN. Configured and validated a full IDS pipeline — from rule management and interface tuning to live alert generation — while troubleshooting a real-world interface misconfiguration caused by WireGuard's traffic encapsulation behaviour.

**Key Technical Tasks:**
- **Environment Setup & Cloud-Local Lab Bridging:**
  Configured a multi-machine lab across different networks using Tailscale (WireGuard-based mesh VPN) to establish persistent connectivity between a local Kali Linux attacker and a cloud-hosted Azure Ubuntu victim VM, assigning stable Tailscale IPs across all machines.
- **Suricata Installation & Configuration:**
  Installed Suricata 8.0.4 from the official OISF stable PPA on Ubuntu Noble, configured `suricata.yaml` with correct HOME_NET/EXTERNAL_NET address groups, and validated the full configuration using `suricata -T` before live deployment.
- **Rule Management with suricata-update:**
  Enabled and deployed the Emerging Threats Open (`et/open`) ruleset via `suricata-update`, loading 49,000+ detection signatures covering botnet C2, SSL anomalies, JA3 fingerprints, and application-layer attacks.
- **Interface Misconfiguration Troubleshooting:**
  Diagnosed a critical issue where Suricata produced zero logs despite running correctly — root caused to monitoring `tailscale0` instead of `eth0`. Identified that Tailscale's WireGuard encapsulation means all traffic flows through the physical NIC (`eth0`), not the virtual tunnel interface, and corrected the capture interface accordingly.
- **Service Management & Systemd Integration:**
  Configured Suricata as a persistent `systemd` service with auto-start on boot, verified active status, memory usage, and thread allocation via `systemctl status`.
- **Alert Validation & Live Detection:**
  Generated confirmed IDS alerts by curling `testmyids.org`, triggering rule SID 2100498 (`GPL ATTACK_RESPONSE id check returned root`) — classified as Potentially Bad Traffic at Priority 2 — and verified output in `fast.log`.

**Skills:**
`Suricata IDS` `Intrusion Detection Systems` `Network Security Monitoring` `Linux (Ubuntu)` `Tailscale / WireGuard` `Microsoft Azure` `Kali Linux` `suricata-update` `Emerging Threats Ruleset` `systemd` `Network Traffic Analysis` `IDS Troubleshooting` `Blue Team Operations` `af-packet` `Threat Detection`

**Link:** [View Project Files](https://drive.google.com/drive/folders/1w11vS5wri9W90prcHo_QxiVt-ImDAtCD?usp=sharing)

### Project 7: Elastic Stack SIEM Integration with Suricata IDS

**Description:**
Engineered a centralized security monitoring pipeline by integrating a cloud-hosted Suricata IDS with the Elastic Stack (ELK). Built an end-to-end data telemetry path that ingests raw Suricata `eve.json` logs via Filebeat and Logstash into Elasticsearch for visualization in Kibana. This project focused on advanced log parsing, handling complex service dependencies, and deploying Fleet-managed agents for scalable security operations.

**Key Technical Tasks:**
- **Pipeline Architecture & SIEM Orchestration:**
  Designed and implemented a multi-stage ingestion pipeline: Suricata (Traffic Capture) → Filebeat (Log Shipping) → Logstash (Transformation) → Elasticsearch (Storage). Configured security protocols including SSL/TLS verification and credential management across all stack components.
- **Logstash Transformation & Enrichment:**
  Developed custom Logstash configuration files (`suricata.conf`) to ingest JSON-formatted IDS logs on port 5044. Implemented structured data output to Elasticsearch, ensuring proper indexing and field mapping for effective threat hunting.
- **Advanced Filebeat Configuration:**
  Configured Filebeat on Ubuntu Noble to monitor Suricata’s `eve.json` output. Resolved complex namespace and output conflicts by disabling standard Elasticsearch outputs in favor of Logstash-centric shipping to prevent data duplication and service crashes.
- **Fleet Server & Elastic Agent Deployment:**
  Deployed a centralized Fleet Server in Azure to manage security policies and Elastic Agents. Troubleshot "Namespace Conflict" errors during agent installation by implementing manual `--force` overrides and cleaning stale container/service artifacts.
- **Linux Service Optimization & Troubleshooting:**
  Resolved critical permission issues where Filebeat was unable to access Suricata log directories. Applied recursive ownership fixes (`chown -R root:root`) and updated `systemd` unit files to ensure all pipeline services (Elasticsearch, Logstash, Kibana) achieved a "Running" state.
- **Security Posture & Credential Management:**
  Handled Elastic superuser (`elastic`) and service-specific credentialing for Logstash. Identified security risks associated with plaintext passwords in configuration files and proposed the implementation of the Logstash Keystore for production-ready secret management.

**Skills:**
`Elasticsearch` `Logstash` `Kibana (ELK)` `Filebeat` `Fleet Server` `Elastic Agent` `SIEM Integration` `Suricata IDS` `Log Ingestion & Parsing` `Azure Cloud Administration` `Linux System Hardening` `Data Telemetry` `JSON Log Analysis` `YAML Configuration` `Network Security Monitoring`

**Link:** [View Project Files](https://drive.google.com/drive/folders/12c488zSjh9msNcc8s20Va2BTuWRlECeR?usp=sharing)

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

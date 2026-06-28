# Threat Intelligence Investigation Report

## Case ID

`TI-2026-001`

## Title

Suspected Web3 Recruitment Brand Impersonation Campaign Using Highlight

## Classification

`TLP:CLEAR`

## Analyst

Mounir KOUSKOUS

## Date

28 June 2026

## Investigation Type

OSINT / Threat Intelligence

## Status

Final

## Objective

Analyze and assess a suspicious recruitment campaign claiming association with the NFT/Web3 platform Highlight, and determine whether `highlight-global.xyz` is legitimate and authorized by the official entity operating `highlight.xyz`.

## Scope

- Domains: `highlight.xyz`, `highlight-global.xyz`, `apihighlight.xyz`, `dot01mf.cfd`
- Communications: RCS, WhatsApp, LinkedIn reference
- Technical analysis: DNS, WHOIS/RDAP, TLS, HTTP, frontend code, infrastructure
- Behavioral and contextual analysis
- Indicator collection and correlation
- Risk assessment and recommendations

## Disclaimer

This report is based only on publicly available information (OSINT), user-provided screenshots, and technical observations made during the investigation. It is not a legal determination. Conclusions are expressed using confidence levels and may evolve if new information becomes available.

---

## Executive Dashboard

| Element | Value |
|---|---|
| Confidence | HIGH |
| Likelihood | HIGH |
| Impact | HIGH |
| Risk | CRITICAL |
| Target | Job seekers |
| Sector | Web3 / NFT |
| Type | Brand impersonation / fake recruitment |
| Primary Domain | `highlight-global.xyz` |
| Referenced Brand | Highlight |
| ATT&CK | T1583.001 / T1585 / T1566 / T1036 / T1204 |

---

## 1. Executive Summary

This investigation covers a suspicious contact presenting itself as a recruitment opportunity linked to the Web3/NFT platform `Highlight`.

The interlocutor claimed to operate as part of the Highlight project and redirected the victim to `highlight-global.xyz`, described as a work platform or backend associated with `highlight.xyz`.

Based on the collected evidence, there is **high confidence** that `highlight-global.xyz` is not officially operated by, or authorized by, `Sea Ranch Labs, Inc. d/b/a Highlight`, the entity operating the legitimate `highlight.xyz` platform.

The observed campaign exhibits multiple indicators commonly associated with Web3/NFT fake job scams:

- Recently registered domain.
- Infrastructure unrelated to the official Highlight platform.
- No public authorization from `highlight.xyz`.
- No official `@highlight.xyz` email contact.
- Referral code mechanism.
- Daily remuneration promise.
- Wallet, commission, salary and withdrawal features.
- Separate withdrawal password mechanism.
- Inconsistent explanation about a supposed official frontend and separate backend.
- Use of personal communication channels instead of official company channels.

**Assessment:** High confidence that the observed activity represents a brand impersonation and fake recruitment campaign targeting job seekers, including LinkedIn users and cybersecurity candidates.

---

## 2. Diamond Model

```text
                 Adversary
                    Unknown
                      ^
                      |
Infrastructure <------+------> Victim
                      |
                      v
                 Capability
```

| Diamond Element | Observed Value |
|---|---|
| Adversary | Unknown actor or group |
| Infrastructure | `highlight-global.xyz`, `apihighlight.xyz`, `dot01mf.cfd`, `cf.dot01mf.cfd`, `chat.imkefu.uk` |
| Capability | Fake job workflow, referral code, registration, wallet, salary, commission, withdrawal password |
| Victim | LinkedIn users, cybersecurity candidates, job seekers, Web3/NFT-adjacent users |

---

## 3. Campaign Kill Chain

```text
LinkedIn reference
    |
    v
RCS contact
    |
    v
WhatsApp / direct messaging
    |
    v
Brand impersonation using Highlight
    |
    v
Redirection to highlight-global.xyz
    |
    v
Registration with referral code
    |
    v
Fake task workflow: Improve NFTs / Submit
    |
    v
Wallet / Salary / Commission display
    |
    v
Withdraw password collection
    |
    v
Potential future deposit or fee request
```

This chain is based on observed messages, frontend code, and infrastructure. The final deposit stage is assessed as likely based on common fake job scam patterns, but was not directly observed in the available evidence.

---

## 4. Context of the Incident

The victim was contacted by an individual claiming association with `HIGHLIGHT`. The person used the name `AIDEN CHONG` and stated that the victim profile had been recommended by `OLIVEIRA NOGUEIRA`.

Referenced LinkedIn profile:

```text
linkedin.com/in/danielleoliveira-dev
```

The proposed activity involved NFTs. The stated objective was to improve the visibility, ranking or sales volume of developers' NFTs.

Domains mentioned or analyzed:

```text
https://highlight.xyz/
https://www.highlight.pro/
https://highlight-global.xyz/
```

Official NFT/Web3 domain observed:

```text
https://highlight.xyz/
```

Suspicious work platform domain:

```text
https://highlight-global.xyz/
```

Phone numbers associated with the exchange:

```text
+1 812-979-XXXX
+33 6 89 91 XX XX
```

Referral code provided (redacted for public release):

```text
HB6XX
```

---

## 5. Timeline

### 5.1 Graphical Timeline

```text
LinkedIn context
    |
    v
RCS approach from +1 812-979-XXXX
    |
    v
Job opportunity introduced
    |
    v
NFT task explanation
    |
    v
highlight-global.xyz shared
    |
    v
Referral code HB6XX shared
    |
    v
Salary and commission explained
    |
    v
Withdraw password mentioned
    |
    v
Victim requests official proof
    |
    v
Actor provides evasive explanation
    |
    v
OSINT investigation initiated
```

### 5.2 Event Timeline

| Time Observed | Event |
|---|---|
| 12:22 | Initial RCS contact from `+1 812-979-XXXX`. The actor references a previous LinkedIn cybersecurity analyst application and introduces another remote opportunity. |
| 13:46 | The victim continues the exchange and agrees to receive more information. |
| 13:48 | The actor describes a role related to improving NFTs. |
| 13:59 | The actor sends `https://highlight-global.xyz/` and a referral code redacted as `HB6XX`. |
| 14:00 | The actor asks the victim to send back their own referral code after registration. |
| 16:54 | The actor explains the concept as improving NFT ranking and visibility to generate more sales. |
| 16:56 | The actor describes a semi-automated website where the user clicks `Improve NFTs` then `Submit`. |
| 17:20 | The victim requests contact from an official `highlight.xyz` email and a formal contract before registration. |
| 17:30 | The actor claims participants are agents, not official Highlight employees. |
| 17:34 | The victim questions the use of `highlight-global.xyz`, which differs from `highlight.xyz`. |
| 17:50 | The actor claims that `highlight.xyz` is the frontend and `highlight-global.xyz` is the backend. |
| 18:40 | The victim requests public official proof on `highlight.xyz`. |
| 18:47 | The actor reformulates the claim without providing verifiable proof. |

---

## 6. Comparison: `highlight.xyz` vs `highlight-global.xyz`

| Criterion | `highlight.xyz` | `highlight-global.xyz` |
|---|---|---|
| Assessment | Official NFT/Web3 platform observed | Suspicious domain |
| Legal entity | `Sea Ranch Labs, Inc. d/b/a Highlight` | No verifiable entity observed |
| Registration date | `2018-12-08` | `2026-06-15` |
| Registrar | NameCheap, Inc. | Dynadot Inc |
| DNS infrastructure | AWS Route53 | Cloudflare |
| HTTP stack | AWS CloudFront / Next.js | Cloudflare / SPA |
| Mail exchange | Google Workspace MX configured | No MX observed |
| TXT verification | Google, Stripe, Atlassian, SPF, DKIM | No equivalent validation observed |
| Official contact | `gm@highlight.xyz`, `support@highlight.xyz` | No official contact observed |
| Documentation | `support.highlight.xyz` | None observed |
| Public social links | `x.com/Highlight_xyz`, Farcaster | None observed |
| Declared usage | NFT creation, minting and collection | Work platform, salary, commission, withdrawal |
| Confidence assessment | Legitimate official platform | High confidence of impersonation |

The official `highlight.xyz` platform describes Highlight as a platform for creating, minting and collecting digital art and NFTs.

The suspicious `highlight-global.xyz` domain implements a workflow involving tasks, salaries, commissions, referrals, wallets and withdrawals. This is not consistent with the public operation of the official Highlight platform.

---

## 7. DNS / WHOIS / TLS / HTTP Analysis

### 7.1 RDAP / WHOIS Observations

Suspicious domain:

```text
Domain: highlight-global.xyz
Registrar: Dynadot Inc
Creation date: 2026-06-15T19:21:18Z
Expiration date: 2027-06-15T23:59:59Z
Nameservers:
- autumn.ns.cloudflare.com
- sean.ns.cloudflare.com
```

Official domain:

```text
Domain: highlight.xyz
Registrar: NameCheap, Inc.
Creation date: 2018-12-08T18:32:09Z
Expiration date: 2032-12-08T23:59:59Z
Nameservers:
- ns-71.awsdns-08.com
- ns-687.awsdns-21.net
- ns-1232.awsdns-26.org
- ns-1945.awsdns-51.co.uk
```

Suspicious API domain:

```text
Domain: apihighlight.xyz
Registrar: Dynadot Inc
Creation date: 2026-04-19T06:14:23Z
Nameservers:
- autumn.ns.cloudflare.com
- sean.ns.cloudflare.com
```

Suspicious chat-related domain:

```text
Domain: dot01mf.cfd
Registrar: Dynadot Inc
Creation date: 2026-03-27T06:56:53Z
Nameservers:
- ns1.dyna-ns.net
- ns2.dyna-ns.net
```

### 7.2 DNS Observations

`highlight-global.xyz`:

```text
highlight-global.xyz A 104.21.17.56
highlight-global.xyz A 172.67.222.86
highlight-global.xyz NS sean.ns.cloudflare.com
highlight-global.xyz NS autumn.ns.cloudflare.com
```

`highlight.xyz`:

```text
highlight.xyz A 13.227.231.57
highlight.xyz A 13.227.231.88
highlight.xyz A 13.227.231.123
highlight.xyz A 13.227.231.128
```

`highlight.xyz` MX records:

```text
aspmx.l.google.com
alt1.aspmx.l.google.com
alt2.aspmx.l.google.com
alt3.aspmx.l.google.com
alt4.aspmx.l.google.com
```

`deeplink.apihighlight.xyz`:

```text
deeplink.apihighlight.xyz A 188.114.96.2
deeplink.apihighlight.xyz A 188.114.97.2
```

`cf.dot01mf.cfd`:

```text
cf.dot01mf.cfd CNAME chat.imkefu.uk
```

### 7.3 TLS Fingerprints

| Host | Subject | Issuer | Serial | Validity | SAN | SHA256 Fingerprint |
|---|---|---|---|---|---|---|
| `highlight-global.xyz` | `CN=highlight-global.xyz` | `CN=WE1, O=Google Trust Services, C=US` | `008FF89480FD7911BA13F8EE1A7E40F9BF` | `2026-06-15` to `2026-09-13` | `highlight-global.xyz`, `*.highlight-global.xyz` | `4c:92:c1:6d:94:be:d9:9a:e2:a3:fa:3a:3e:35:b0:6b:78:74:99:75:36:9f:fe:d9:7e:bc:40:a6:09:d3:9d:65` |
| `highlight.xyz` | `CN=highlight.xyz` | `CN=Amazon RSA 2048 M01, O=Amazon, C=US` | `01D905B7F2AB2F322D8EE707750C3EFE` | `2026-02-24` to `2026-09-09` | `highlight.xyz`, `*.highlight.xyz` | `c6:c8:cc:89:55:e9:53:97:c8:00:e7:e9:7e:40:49:ff:26:8d:a7:75:22:19:59:7e:6b:1e:cc:15:ef:28:7c:2e` |
| `deeplink.apihighlight.xyz` | `CN=apihighlight.xyz` | `CN=YE1, O=Let's Encrypt, C=US` | `0584792FD84C801DD6236173510FCCD5587C` | `2026-06-17` to `2026-09-15` | `*.apihighlight.xyz`, `apihighlight.xyz` | `b2:ef:5c:d7:2f:86:92:f3:36:7a:d8:6a:ff:1d:e5:61:c7:b0:9d:43:54:69:20:b7:7e:bd:ea:eb:82:ec:c1:93` |
| `cf.dot01mf.cfd` | `CN=cf.dot01mf.cfd` | `CN=Cloudflare TLS Issuing ECC CA 4, O=SSL Corporation, C=US` | `75868B2CCAEF6E6E441A413E7D14001F` | `2026-06-10` to `2026-09-08` | `cf.dot01mf.cfd` | `15:cd:23:ab:a5:fa:87:35:45:05:93:0e:f8:9d:02:19:d5:64:17:37:c4:4d:94:30:31:6e:cb:5a:79:46:60:dc` |

### 7.4 HTTP Observations

`highlight-global.xyz` response headers:

```text
HTTP/1.1 200 OK
Server: cloudflare
Content-Type: text/html
Strict-Transport-Security: max-age=31536000
Set-Cookie: server_session_178b516b=...
```

The page title is:

```html
<title>Highlight</title>
```

The HTML contains:

```html
<meta name="robots" content="noindex, nofollow">
```

The `noindex, nofollow` directive indicates the site attempts to avoid search engine indexing, which is frequently observed on temporary or low-reputation infrastructure.

The `www.highlight-global.xyz` host did not resolve at the time of analysis:

```text
Could not resolve host: www.highlight-global.xyz
```

### 7.5 API Error Disclosure

The suspicious API endpoint returned JSON and leaked a PHP warning:

```text
{"valid":false,"error":"error.404","data":{"returnMsg":["error.404"]}}

Warning: Undefined variable $secondFilename in /www/wwwroot/highlight/api/runtime/config/middleware.php on line 91
```

This discloses a PHP backend path and differs from the observed official Highlight stack, which uses Next.js and CloudFront.

---

## 8. Frontend Code Analysis

The suspicious frontend loads a JavaScript application:

```text
/assets/index.39bb6ab0.js
```

Observed routes:

```text
/login
/register
/referral
/salary
/withdraw
/withdraw/record
```

Observed JavaScript chunks:

```text
login.b8a16bed.js
register.24fc3ddc.js
referral.b17cd46e.js
salary.8847252f.js
record.be933b87.js
```

Observed suspicious strings:

```text
withdraw
salary
referral
invite
wallet
commission
nft
login
register
password
improve
submit
USDC
security_password
```

The `security_password` field is particularly relevant because it maps to the "withdraw password" described by the actor during the conversation.

The frontend also references:

```text
https://api.telegram.org/bot
https://deeplink.apihighlight.xyz/society/
```

### 8.1 SHA256 Hashes

| File | SHA256 |
|---|---|
| `index.39bb6ab0.js` | `ea42fceb0d7ee905dceb2d5ad0381a4026cd86174733028f43504e5414d7ccee` |
| `login.b8a16bed.js` | `1a17fef77d49c0f10d3eb9521f183f5f673b1683bf476e7d2cb84c1db0396539` |
| `register.24fc3ddc.js` | `d78b04d4c20419c0dcae65d56de2a7dc5c2697de7cece7a654ab21e7fa2da2ff` |
| `referral.b17cd46e.js` | `5c8394162032c71d1c966c51f886f1ec178f922918e325dd46f74a0ad9b48764` |
| `salary.8847252f.js` | `eed4836bacb4b030cc05cfbd65af8a69888a5306f0d190f36410b8c0aa9177cb` |

---

## 9. Behavioral Analysis

### 9.1 Pretext

The actor uses a credible professional pretext by referencing a previous LinkedIn cybersecurity analyst application.

This creates contextual legitimacy and increases the chance that the victim continues the conversation.

### 9.2 Brand Impersonation

The actor uses the Highlight brand and attempts to associate the suspicious platform with `highlight.xyz`.

Observed terms:

```text
Highlight
highlight.xyz
highlight-global.xyz
Highlight project
```

This creates ambiguity between the legitimate platform and the suspicious work portal.

### 9.3 Lack of Official Proof

When asked to provide official confirmation, the actor did not provide:

- An email from `@highlight.xyz`.
- A public page on `highlight.xyz`.
- A formal contract.
- A public announcement.
- A verifiable authorization statement.

The actor only stated that `highlight.xyz` was the frontend and `highlight-global.xyz` was the backend. This claim is not supported by the technical evidence.

### 9.4 Reward Promise

The actor promised:

```text
$80-$200 a day
1-2 hours
paid every day
```

This is consistent with common fake job scams and task scams.

### 9.5 Task Mechanics

The proposed activity consists of improving NFTs by increasing their ranking, visibility or sales volume.

Observed actor statements:

```text
improve their NFT ranking and visibility
improve real sale volumes of low sales NFTs
When you click on Improve NFTs, the system will automatically queue and assign the NFTs to you
```

This behavior resembles artificial activity generation. The official Highlight terms prohibit manipulative activity such as wash trading, pump-and-dump behavior and artificial market activity.

### 9.6 Referral Mechanism

The actor provided a referral code, redacted for public release:

```text
HB6XX
```

Referral mechanisms are commonly used in fake job campaigns to track victims and create a sense of onboarding legitimacy.

### 9.7 Withdrawal Password

The actor emphasized the importance of remembering a withdrawal password:

```text
especially the withdraw password, because it is used to withdraw your salary
```

This is a high-risk indicator. Legitimate employment compensation is generally handled through contracts, payroll, bank transfer, or a verified payment provider, not through an anonymous portal requiring a separate withdrawal password.

---

## 10. Indicators of Compromise

### 10.1 Domains

```text
highlight-global.xyz
apihighlight.xyz
deeplink.apihighlight.xyz
dot01mf.cfd
cf.dot01mf.cfd
chat.imkefu.uk
```

### 10.2 URLs

```text
https://highlight-global.xyz/
https://highlight-global.xyz/assets/index.39bb6ab0.js
https://highlight-global.xyz/assets/login.b8a16bed.js
https://highlight-global.xyz/assets/register.24fc3ddc.js
https://highlight-global.xyz/assets/referral.b17cd46e.js
https://highlight-global.xyz/assets/salary.8847252f.js
https://deeplink.apihighlight.xyz/society/
https://cf.dot01mf.cfd/chat/widget.js
```

### 10.3 Hashes

```text
ea42fceb0d7ee905dceb2d5ad0381a4026cd86174733028f43504e5414d7ccee
1a17fef77d49c0f10d3eb9521f183f5f673b1683bf476e7d2cb84c1db0396539
d78b04d4c20419c0dcae65d56de2a7dc5c2697de7cece7a654ab21e7fa2da2ff
5c8394162032c71d1c966c51f886f1ec178f922918e325dd46f74a0ad9b48764
eed4836bacb4b030cc05cfbd65af8a69888a5306f0d190f36410b8c0aa9177cb
```

### 10.4 Communication Indicators

```text
+1 812-979-XXXX
+33 6 89 91 XX XX
```

### 10.5 Artefacts

```text
AIDEN CHONG
OLIVEIRA NOGUEIRA
HB6XX
linkedin.com/in/danielleoliveira-dev
```

---

## 11. Observables

### 11.1 Shared Infrastructure

The following IP addresses are associated with shared infrastructure providers and should not be blocked broadly without additional context:

```text
104.21.17.56
172.67.222.86
188.114.96.2
188.114.97.2
104.26.10.238
104.26.11.238
172.67.71.250
13.227.231.57
13.227.231.88
13.227.231.123
13.227.231.128
```

### 11.2 Technical Observables

```text
Cloudflare
AWS CloudFront
AWS Route53
Next.js
PHP backend disclosure
Telegram Bot API reference
Google Trust Services certificate
Let's Encrypt certificate
Cloudflare TLS certificate
```

### 11.3 Frontend Observables

```text
security_password
withdraw_record
table_withdrawal_usdc
register_account
table_referral_code
table_salary_list
table_commission
Improve
Submit
USDC
```

---

## 12. MITRE ATT&CK Mapping

Mapping is based on available observations. Some techniques are assessed as likely but not fully confirmed.

| Technique | Name | Assessment | Observation |
|---|---|---|---|
| T1583.001 | Acquire Infrastructure: Domains | Confirmed | Recent registration of `highlight-global.xyz`, `apihighlight.xyz`, and `dot01mf.cfd`. |
| T1585 | Establish Accounts | Likely | Use of apparent recruiter identities and social profiles to approach the victim. |
| T1566 | Phishing | Confirmed | Direct messaging and redirection to a suspicious portal. |
| T1036 | Masquerading | Confirmed | `highlight-global.xyz` imitates the Highlight brand and claims association with `highlight.xyz`. |
| T1204 | User Execution | Confirmed | Victim is instructed to register, interact with the portal, and perform tasks. |

Removed from final mapping: `T1110`. No brute-force activity was observed. Credential harvesting remains a risk based on login, registration and withdrawal password functionality, but it is not mapped to brute force.

---

## 13. Recommendations

### 13.1 For the Victim

Do not create an account on:

```text
highlight-global.xyz
```

Do not provide:

```text
Password
Withdrawal password
Personal email
Phone number
Identity documents
Crypto wallet seed phrase
Banking information
```

Do not perform any crypto deposit, even if presented as:

```text
Unlocking withdrawal
Validating an account
Activating salary
Paying gas fees
Completing a task
```

Block the observed numbers:

```text
+1 812-979-XXXX
+33 6 89 91 XX XX
```

Preserve evidence:

```text
Screenshots
URLs
Phone numbers
Referral code
Dates and times
Full messages
HTTP headers
RDAP / DNS results
JavaScript files and hashes
TLS fingerprints
```

### 13.2 Reporting

Report suspicious domains to Dynadot:

```text
abuse@dynadot.com
```

Report abusive Cloudflare use:

```text
https://abuse.cloudflare.com/
```

Notify official Highlight contacts:

```text
support@highlight.xyz
gm@highlight.xyz
```

Report phishing:

```text
https://safebrowsing.google.com/safebrowsing/report_phish/
https://phishing-initiative.eu/
https://www.cybermalveillance.gouv.fr/
https://www.signal-spam.fr/
```

### 13.3 SOC / Blue Team Recommendations

Monitor domains:

```text
highlight-global.xyz
apihighlight.xyz
dot01mf.cfd
cf.dot01mf.cfd
chat.imkefu.uk
```

Search proxy, DNS, EDR or SIEM logs for:

```text
security_password
withdraw_record
table_withdrawal_usdc
HB6XX
highlight-global
apihighlight
dot01mf
```

Create behavioral detections for fake crypto job portals combining:

```text
register
salary
withdraw
commission
referral
USDC
security_password
```

Avoid broad blocking of Cloudflare or AWS CloudFront IPs. Prefer domain, URL and certificate-based detections where possible.

---

## 14. Conclusion

The investigation identifies a structured fake recruitment campaign leveraging the Highlight brand and targeting job seekers in a Web3/NFT context.

There is **high confidence** that `highlight-global.xyz` is not operated by `Sea Ranch Labs, Inc. d/b/a Highlight` and is not part of the official `highlight.xyz` infrastructure.

Key supporting findings include:

- `highlight-global.xyz` was registered on `2026-06-15`, while `highlight.xyz` has existed since `2018-12-08`.
- The suspicious infrastructure uses Dynadot and Cloudflare, while the official platform uses NameCheap, AWS Route53, CloudFront and Next.js.
- The suspicious portal implements salary, referral, wallet, commission and withdrawal functionality.
- The actor failed to provide official proof from `highlight.xyz` or an `@highlight.xyz` email address.
- The proposed task appears to involve artificial manipulation of NFT visibility or sales volume, inconsistent with the official Highlight terms of service.

**Final verdict:**

`highlight-global.xyz` should be treated as illegitimate and potentially fraudulent unless an official confirmation is published directly by `highlight.xyz` or provided from a verified `@highlight.xyz` address.

---

## 15. Annexes

### Annex A - User-Provided Evidence

- WhatsApp screenshots.
- RCS screenshots.
- Conversation excerpts.
- Referral code redacted as `HB6XX`.

### Annex B - Reputation Screenshots

- VirusTotal screenshot for `highlight-global.xyz`.
- Anti-Abuse Project screenshot.

### Annex C - WHOIS / RDAP

- RDAP output for `highlight-global.xyz`.
- RDAP output for `highlight.xyz`.
- RDAP output for `apihighlight.xyz`.
- RDAP output for `dot01mf.cfd`.

### Annex D - DNS

- A records.
- NS records.
- MX records.
- CNAME records.

### Annex E - HTTP Headers

- `highlight-global.xyz` headers.
- `highlight.xyz` headers.
- `deeplink.apihighlight.xyz` headers.
- `cf.dot01mf.cfd` headers.

### Annex F - JavaScript Artefacts

- `index.39bb6ab0.js`.
- `login.b8a16bed.js`.
- `register.24fc3ddc.js`.
- `referral.b17cd46e.js`.
- `salary.8847252f.js`.

### Annex G - TLS

- Certificate subjects.
- Issuers.
- Serial numbers.
- Validity windows.
- SHA256 fingerprints.
- SAN values.

# lisk-assignment-2
# 🛡️ VulnerablePiggyBank – Audit, Fix & Exploit Report

This project contains an intentionally vulnerable smart contract. The assignment involves identifying the vulnerability, fixing it, and simulating an attack.

---

## 📁 Files & Purpose

| File Name               | Description                                                  |
|-------------------------|--------------------------------------------------------------|
| `VulnerablePiggyBank.sol` | Original contract with a critical vulnerability            |
| `SecurePiggyBank.sol`     | Fixed version with proper access control                   |
| `Attacker.sol`            | Exploit contract used to drain the vulnerable contract     |

---

## 🐞 Vulnerability Identified

**File:** `VulnerablePiggyBank.sol`

### ❌ Problematic Code:
```solidity
function withdraw() public {
    payable(msg.sender).transfer(address(this).balance);
}

Fixed Version
File: SecurePiggyBank.sol

✅ Corrected Code:
solidity

function withdraw() public {
    require(msg.sender == owner, "Not the owner");
    payable(owner).transfer(address(this).balance);
}

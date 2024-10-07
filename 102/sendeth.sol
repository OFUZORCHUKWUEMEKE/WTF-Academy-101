// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.27;

// SolidityThere are three ways to send to other contracts ETH, they are: transfer(), send()and call(), which call()are encouraged usage.

contract SendEth {
    error SendFailed(); // 用send发送ETH失败error
    event Log(uint amount, uint gas);
    error CallFailed(); // 用call发送ETH失败error

    // receive方法，接收eth时被触发
    receive() external payable {
        emit Log(msg.value, gasleft());
    }

    // 返回合约ETH余额
    function getBalance() public view returns (uint) {
        return address(this).balance;
    }

    // 用transfer()发送ETH
    function transferETH(address payable _to, uint256 amount) external payable {
        _to.transfer(amount);
    }

    // send()发送ETH
    function sendETH(address payable _to, uint256 amount) external payable {
        // 处理下send的返回值，如果失败，revert交易并发送error
        bool success = _to.send(amount);
        if (!success) {
            revert SendFailed();
        }
    }

    // call()发送ETH
    function callETH(address payable _to, uint256 amount) external payable {
        // 处理下call的返回值，如果失败，revert交易并发送error
        (bool success, ) = _to.call{value: amount}("");
        if (!success) {
            revert CallFailed();
        }
    }
}

// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.27;

contract VariableInitials {
    // In Solidity, variables declared but not assigned have their initial values ​​or default values. In this lesson, we will introduce the initial values ​​of commonly used variables.

    // Value Type Initial
    //   string:""
    //   int:0
    //   boolean:false
    //   uint:0
    //   enum: The first element in the enumeration
    //   address: 0x0000000000000000000000000000000000000000(or address(0))
    //   function
    //   internal: Blank function
    //   external: Blank function

    bool public _bool; // false
    string public _string; // ""
    int public _int; // 0
    uint public _uint; // 0
    address public _address; // 0x0000000000000000000000000000000000000000

    enum ActionSet {
        Buy,
        Hold,
        Sell
    }
    ActionSet public _enum; // 第1个内容Buy的索引0

    function fi() internal {} // internal空白函数

    function fe() external {} // external空白函数
}

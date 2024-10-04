// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.27;

// constantVariables must be initialized when they are declared and cannot be changed afterwards. If you try to change them, the compilation will fail.

contract Constants {
    uint256 constant CONSTANT_NUM = 10;
    string constant CONSTANT_STRING = "0xAA";
    bytes constant CONSTANT_BYTES = "WTF";
    address constant CONSTANT_ADDRESS =
        0x0000000000000000000000000000000000000000;

    // immutableVariables can be initialized at the time of declaration or in the constructor, so it is more flexible. In Solidity v8.0.21the future, immutablevariables do not need to be explicitly initialized. Otherwise, explicit initialization is required. If immutablea variable is initialized both at the time of declaration and in the constructor, the value initialized by the constructor will be used.

    // immutable变量可以在constructor里初始化，之后不能改变
    uint256 public immutable IMMUTABLE_NUM = 9999999999;
    address public immutable IMMUTABLE_ADDRESS;
    uint256 public immutable IMMUTABLE_BLOCK;
    uint256 public immutable IMMUTABLE_TEST;
}

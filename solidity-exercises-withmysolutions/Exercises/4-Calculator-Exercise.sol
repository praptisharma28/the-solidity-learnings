// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

// 3️⃣ Create functions to add, subtract, and multiply to result
// 4️⃣ Create a function to get result

contract Calculator {
    uint256 result = 0;
    function add(uint256 num) public{
        result += num;
    }
    function subtract(uint256 num) public{
        result -= num;
    }
    function multiply(uint256 num) public{
        result *= num;
    }
    function get() public view returns (uint256){
        return result;
    }

}

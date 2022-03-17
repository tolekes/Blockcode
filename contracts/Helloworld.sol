//SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;



contract HelloWorld{
    uint age;
    constructor() {
        age = 50;
    }

    mapping (string => uint256) public Classinfo;

    function addToclass(string memory _name, uint256 _classno) public {
        Classinfo[_name]  = _classno + age;
    }

    function readClass(string memory _namex) public view returns (uint256){
        return Classinfo[_namex];
    }
}
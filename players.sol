// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract PlayerRecord {
    string name;
    int runs;
    int wickets;
 
    function setPlayer(string memory _name, int _runs, int _wickets) public{
        name = _name;
        runs = _runs;
        wickets = _wickets;
    }
 
    function getPlayerName() view public returns(string memory){
        return name;
    }
 
    function getPlayerRun() view public returns(int){
        return runs;
    }
 
    function getPlayerWickets() view public returns(int){
        return wickets;
    }
 
}
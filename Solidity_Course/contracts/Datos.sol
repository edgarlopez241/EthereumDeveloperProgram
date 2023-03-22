// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Team{
    struct Player{
        string name;
        uint number;

    }

    Player [] public player;

    constructor(){
        player.push(Player({
            name :"Toni Kroos",
            number:8
        }));
    }
}
// SPDX-License-Identifier: MIT
pragma solidity >= 0.8.6;

contract testContrac{

    uint nextid;
    struct Teams {
        uint id;
        string name;
        string description;

    }
    
    Teams [] team ;

    function createTeam(string memory _name, string memory _description) public {
        team.push(Teams(nextid,_name,_description));
        nextid++;
    }

    function findIndex(uint _id) internal view returns(uint) {
        for (uint i=0;i<team.length;i++){
            if(team[i].id == _id){
                return i;
            }
        }
        revert("team not found");
    }

    function readTeam(uint _id) public view returns(uint, string memory, string memory){
        uint index = findIndex(_id);
        return (team[index].id,team[index].name,team[index].description);
    }

    function updateTeam (uint _id,string memory _name, string memory _description) public {
                uint index = findIndex(_id);
                 team[index].name=_name;
                 team[index].description=_description;
    }

    function deleteTeam(uint _id)public{
        uint index=findIndex(_id);
        delete team[index];
    }
}
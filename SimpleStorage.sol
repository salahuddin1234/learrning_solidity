pragma solidity >= 0.6.0 < 0.9.0;

contract SimpleStorage{

    uint256 my;

    struct People {

        string name;
        int age;
    }

    People[] public people;
    mapping(string => int) public stringtoint;
    function update_my(uint256 _s) public {
        my = _s;
    }

    function view_my() public view returns( uint256)  {

        return my;
    }

    function add_people(string memory _name, int _age) public {

        people.push(People(_name, _age));
        stringtoint[_name]=_age;

    }


}
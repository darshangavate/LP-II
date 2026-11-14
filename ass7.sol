
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Student {

    string public name;
    uint public rollNo;
    string public course;

    // Event for updating student details
    event StudentUpdated(string name, uint rollNo);

    // Store or update student details
    function setStudent(
        string memory _name,
        uint _rollNo,
        string memory _course
    ) public {
        name = _name;
        rollNo = _rollNo;
        course = _course;

        emit StudentUpdated(name, rollNo);
    }

    // Retrieve student details
    function getStudent() public view returns (
        string memory,
        uint,
        string memory
    ) {
        return (name, rollNo, course);
    }
}

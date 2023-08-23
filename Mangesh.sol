

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;
contract StructType
{  
    struct Car
    {       string model;
             uint year;
            address Owner;

}
Car[] public cars;

function carmode() external 
{ 
    Car memory Thar = Car("Thar",2016,msg.sender);

    Car memory BMW = Car(
        {
            model:"BMW",
            year:1995,
            owner:msg.sender
        }
    );
Car memory Honda;
Honda.model="Honda";
Honda.year= 1949;
Honda.owner = msg.sender;
cars.push(Thar);
cars.push(BMW);
cars.push(Honda);
cars.push(Car("Maruthi Suzuki",2000,msg.sender));
car storage car = cars[0];
car.year = 2000;
}
function registration(string memory _model,uint _year) external 
{
    cars.push(Car(
        {
            model:_model,
            year:_year,
            owner:msg.sender
        }
    ));
}
function get(uint _index) external view returns (string memory model,uint year,address owner)
{
    Car storage car = cars[_index];
    return (car.model,car.year,car.owner);
} 
function transfer(uint _index,address _owner) external 
{
    cars[_index].owner = _owner;
}
pragma solidity 0.5.1;

contract Counter { 
    uint count = 0;
    
    event Increment(uint value);
    event Decrement(uint value);

    function getCount() view public return(uint) {
        return count;
    }

    constructor() public {
        count = 0;
    }

    function increment() public {
        count += 1;
        emit Increment(count);
    }  

    function decrement() public {
        count -= 1;
        emit Decrement(count);
    }

}

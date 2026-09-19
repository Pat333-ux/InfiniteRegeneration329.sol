pragma solidity ^0.8.0;

contract InfiniteRegeneration329 {
    uint256 public fiber;
    uint256 public constant MAX_FIBER = 329;

    event FiberAdvanced(uint256 indexed newFiber);

    function advanceFiber() external {
        fiber += 1;

        if (fiber > MAX_FIBER) {
            fiber = 0;
        }

        emit FiberAdvanced(fiber);
    }
}

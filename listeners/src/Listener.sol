// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "simidx/Simidx.sol";

/// Index calls to the UniswapV3Factory.createPool function on Ethereum
/// To hook on more function calls, specify that this listener should implement that interface and follow the compiler errors.
contract Listener is UniswapV3Factory$function_OnPostCreatePool, ListenerDsl {
    /// Emitted events are indexed.
    /// To change the data which is indexed, modify the event or add more events.
    event PoolCreated(address caller, address pool, address token0, address token1, uint24 fee);

    constructor() {
        /// Triggers are defined in the constructor.
        /// They consist of (chain id, contract, contract function to trigger on, listener handler to call on trigger).
        /// Add more calls of addHook() to index more functions calls, more contracts or more chains.
        addTrigger(ChainIdContract(1, 0x1F98431c8aD98523631AE4a59f267346ea31F984), UniswapV3Factory$postCreatePoolFunction(), Listener.onPostCreatePool.selector);
    }

    /// The handler called whenever the UniswapV3Factory.createPool function is called.
    /// Within here you write your indexing specific logic (e.g., call out to other contracts to get more information).
    /// The only requirement for handlers is that they have the correct signature, but usually you will use generated interfaces to help write them.
    function onPostCreatePool(
        FunctionContext memory ctx,
        UniswapV3Factory$function_createPoolInputs memory inputs,
        UniswapV3Factory$function_createPoolOutputs memory outputs
    )
        external
        override
    {
        emit PoolCreated(ctx.txn.call.callee, outputs.pool, inputs.tokenA, inputs.tokenB, inputs.fee);
    }
}

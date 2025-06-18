// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "../Dsl.sol";
import "../Context.sol";

struct UniswapV3Factory$function_createPoolInputs {
    address tokenA;
    address tokenB;
    uint24 fee;
}

struct UniswapV3Factory$function_createPoolOutputs {
    address pool;
}

struct UniswapV3Factory$function_enableFeeAmountInputs {
    uint24 fee;
    int24 tickSpacing;
}

struct UniswapV3Factory$function_feeAmountTickSpacingInputs {
    uint24 outArg0;
}

struct UniswapV3Factory$function_feeAmountTickSpacingOutputs {
    int24 outArg0;
}

struct UniswapV3Factory$function_getPoolInputs {
    address outArg0;
    address outArg1;
    uint24 outArg2;
}

struct UniswapV3Factory$function_getPoolOutputs {
    address outArg0;
}

struct UniswapV3Factory$function_ownerOutputs {
    address outArg0;
}

struct UniswapV3Factory$function_parametersOutputs {
    address factory;
    address token0;
    address token1;
    uint24 fee;
    int24 tickSpacing;
}

struct UniswapV3Factory$function_setOwnerInputs {
    address _owner;
}

struct UniswapV3Factory$event_FeeAmountEnabledInputs {
    uint24 fee;
    int24 tickSpacing;
}

struct UniswapV3Factory$event_OwnerChangedInputs {
    address oldOwner;
    address newOwner;
}

struct UniswapV3Factory$event_PoolCreatedInputs {
    address token0;
    address token1;
    uint24 fee;
    int24 tickSpacing;
    address pool;
}

interface UniswapV3Factory$event_OnPostFeeAmountEnabled {
    function onPostFeeAmountEnabled(EventContext memory ctx, UniswapV3Factory$event_FeeAmountEnabledInputs memory inputs) external;
}

interface UniswapV3Factory$event_OnPostOwnerChanged {
    function onPostOwnerChanged(EventContext memory ctx, UniswapV3Factory$event_OwnerChangedInputs memory inputs) external;
}

interface UniswapV3Factory$event_OnPostPoolCreated {
    function onPostPoolCreated(EventContext memory ctx, UniswapV3Factory$event_PoolCreatedInputs memory inputs) external;
}

interface UniswapV3Factory$function_OnPostCreatePool {
    function onPostCreatePool(FunctionContext memory ctx, UniswapV3Factory$function_createPoolInputs memory inputs, UniswapV3Factory$function_createPoolOutputs memory outputs) external;
}

interface UniswapV3Factory$function_OnPostEnableFeeAmount {
    function onPostEnableFeeAmount(FunctionContext memory ctx, UniswapV3Factory$function_enableFeeAmountInputs memory inputs) external;
}

interface UniswapV3Factory$function_OnPostFeeAmountTickSpacing {
    function onPostFeeAmountTickSpacing(FunctionContext memory ctx, UniswapV3Factory$function_feeAmountTickSpacingInputs memory inputs, UniswapV3Factory$function_feeAmountTickSpacingOutputs memory outputs) external;
}

interface UniswapV3Factory$function_OnPostGetPool {
    function onPostGetPool(FunctionContext memory ctx, UniswapV3Factory$function_getPoolInputs memory inputs, UniswapV3Factory$function_getPoolOutputs memory outputs) external;
}

interface UniswapV3Factory$function_OnPostOwner {
    function onPostOwner(FunctionContext memory ctx, UniswapV3Factory$function_ownerOutputs memory outputs) external;
}

interface UniswapV3Factory$function_OnPostParameters {
    function onPostParameters(FunctionContext memory ctx, UniswapV3Factory$function_parametersOutputs memory outputs) external;
}

interface UniswapV3Factory$function_OnPostSetOwner {
    function onPostSetOwner(FunctionContext memory ctx, UniswapV3Factory$function_setOwnerInputs memory inputs) external;
}
function UniswapV3Factory$Abi() pure returns (Abi memory) {
    return Abi("UniswapV3Factory");
}

function UniswapV3Factory$postFeeAmountEnabledEvent() pure returns (Trigger memory) {
    return Trigger({
        triggerType: TriggerType.EVENT,
        selector: bytes32(0xc66a3fdf07232cdd185febcc6579d408c241b47ae2f9907d84be655141eeaecc),
        abiName: "UniswapV3Factory"
    });
}

function UniswapV3Factory$postOwnerChangedEvent() pure returns (Trigger memory) {
    return Trigger({
        triggerType: TriggerType.EVENT,
        selector: bytes32(0xb532073b38c83145e3e5135377a08bf9aab55bc0fd7c1179cd4fb995d2a5159c),
        abiName: "UniswapV3Factory"
    });
}

function UniswapV3Factory$postPoolCreatedEvent() pure returns (Trigger memory) {
    return Trigger({
        triggerType: TriggerType.EVENT,
        selector: bytes32(0x783cca1c0412dd0d695e784568c96da2e9c22ff989357a2e8b1d9b2b4e6b7118),
        abiName: "UniswapV3Factory"
    });
}

function UniswapV3Factory$postCreatePoolFunction() pure returns (Trigger memory) {
    return Trigger({
        triggerType: TriggerType.FUNCTION,
        selector: bytes4(0xa1671295),
        abiName: "UniswapV3Factory"
    });
}

function UniswapV3Factory$postEnableFeeAmountFunction() pure returns (Trigger memory) {
    return Trigger({
        triggerType: TriggerType.FUNCTION,
        selector: bytes4(0x8a7c195f),
        abiName: "UniswapV3Factory"
    });
}

function UniswapV3Factory$postFeeAmountTickSpacingFunction() pure returns (Trigger memory) {
    return Trigger({
        triggerType: TriggerType.FUNCTION,
        selector: bytes4(0x22afcccb),
        abiName: "UniswapV3Factory"
    });
}

function UniswapV3Factory$postGetPoolFunction() pure returns (Trigger memory) {
    return Trigger({
        triggerType: TriggerType.FUNCTION,
        selector: bytes4(0x1698ee82),
        abiName: "UniswapV3Factory"
    });
}

function UniswapV3Factory$postOwnerFunction() pure returns (Trigger memory) {
    return Trigger({
        triggerType: TriggerType.FUNCTION,
        selector: bytes4(0x8da5cb5b),
        abiName: "UniswapV3Factory"
    });
}

function UniswapV3Factory$postParametersFunction() pure returns (Trigger memory) {
    return Trigger({
        triggerType: TriggerType.FUNCTION,
        selector: bytes4(0x89035730),
        abiName: "UniswapV3Factory"
    });
}

function UniswapV3Factory$postSetOwnerFunction() pure returns (Trigger memory) {
    return Trigger({
        triggerType: TriggerType.FUNCTION,
        selector: bytes4(0x13af4035),
        abiName: "UniswapV3Factory"
    });
}
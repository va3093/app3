// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {RawTriggerType, RawTrigger} from "./Dsl.sol";
import {RawCallContext, RawBlockContext, RawLogContext} from "./Context.sol";

interface Raw$OnPostCall {
    function onPostCall(RawCallContext memory ctx) external;
}

interface Raw$OnPostBlock {
    function onPostBlock(RawBlockContext memory ctx) external;
}

interface Raw$OnPostLog {
    function onPostLog(RawLogContext memory ctx) external;
}

function Raw$onPostCall() pure returns (RawTrigger memory) {
    return RawTrigger({
        triggerType: RawTriggerType.CALL
    });
}

function Raw$onPostBlock() pure returns (RawTrigger memory) {
    return RawTrigger({
        triggerType: RawTriggerType.BLOCK
    });
}

function Raw$onPostLog() pure returns (RawTrigger memory) {
    return RawTrigger({
        triggerType: RawTriggerType.LOG
    });
}
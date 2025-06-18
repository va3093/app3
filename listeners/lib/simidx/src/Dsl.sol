// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

enum TriggerType {
    FUNCTION,
    EVENT
}

enum RawTriggerType {
    CALL,
    BLOCK,
    LOG
}

struct Trigger {
    string abiName;
    bytes32 selector;
    TriggerType triggerType;
}

struct RawTrigger {
    RawTriggerType triggerType;
}

struct ContractTarget {
    ChainIdContract targetContract;
    Trigger trigger;
    bytes32 handlerSelector;
}

struct ChainIdContract {
    uint256 chainId;
    address contractAddress;
}

struct Abi {
    string name;
}

struct AbiTarget {
    ChainIdAbi targetAbi;
    Trigger trigger;
    bytes32 handlerSelector;
}

struct ChainIdAbi {
    uint256 chainId;
    Abi abi;
}

struct ChainIdGlobal {
    uint256 chainId;
}

struct CustomTriggerContractTarget {
    ChainIdContract targetContract;
    bytes32 handlerSelector;
}

struct CustomTriggerTypeAbiTarget {
    ChainIdAbi targetAbi;
    bytes32 handlerSelector;
}

struct GlobalTarget {
    ChainIdGlobal chainId;
    RawTriggerType triggerType;
    bytes32 handlerSelector;
}

contract ListenerDsl {
    ContractTarget[] _contractTargets;
    AbiTarget[] _abiTargets;
    GlobalTarget[] _globalTargets;

    function addTrigger(ChainIdContract memory targetContract, Trigger memory triggerFunction, bytes32 handlerSelector) internal {
        _contractTargets.push(ContractTarget({
            targetContract: targetContract,
            trigger: triggerFunction,
            handlerSelector: handlerSelector
        }));
    }

    function addTrigger(ChainIdAbi memory targetAbi, Trigger memory triggerFunction, bytes32 handlerSelector) internal {
        _abiTargets.push(AbiTarget({
            targetAbi: targetAbi,
            trigger: triggerFunction,
            handlerSelector: handlerSelector
        }));
    }

    function addTrigger(ChainIdGlobal memory chainId, RawTrigger memory target, bytes32 handlerSelector) internal {
        _globalTargets.push(GlobalTarget({
            chainId: chainId,
            triggerType: target.triggerType,
            handlerSelector: handlerSelector
        }));
    }

    function getSimTargets() view external returns (AbiTarget[] memory, ContractTarget[] memory, GlobalTarget[] memory) {
        return (_abiTargets, _contractTargets, _globalTargets);
    }
}

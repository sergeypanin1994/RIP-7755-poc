// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import {RIP7755OutboxToOPStack} from "../../src/outboxes/RIP7755OutboxToOPStack.sol";

contract MockOPStackProver is RIP7755OutboxToOPStack {
    function validateProof(
        bytes memory storageKey,
        string calldata receiver,
        bytes[] calldata attributes,
        bytes calldata proof
    ) external view {
        _validateProof(storageKey, receiver, attributes, proof);
    }
}

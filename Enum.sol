// SPDX-License-Identifier: MIT
pragma solidity 0.8.16;

contract Enum {
    order public status;

    enum order {
        REJECTED,
        ACCEPTED,
        SHIPPED,
        RETURNED
    }

    function markAsShipped() public {
        status = order.SHIPPED;
    }

    function markAsAccepted() public {
        status = order.ACCEPTED;
    }
}

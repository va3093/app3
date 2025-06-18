// TODO: Extract to library

import { customType } from "drizzle-orm/pg-core";
import {Address, Uint, Int, Bytes} from "./types";

export const address = customType<{ data: Address; notNull: false; default: false }>({
    dataType() {
        return "bytea";
    },
    toDriver(value) {
        return value.address;
    },
    fromDriver(value: unknown) {
        if (!(value instanceof Buffer)) {
            throw new Error("Expected Buffer for bytea type");
        }
        return new Address(value);
    }
});

const internalBytes = (width?: number) => customType<{ data: Bytes; notNull: false; default: false }>({
    dataType() {
        return "bytea";
    },
    toDriver(value) {
        return value.data;
    },
    fromDriver(value: unknown) {
        if (!(value instanceof Buffer)) {
            throw new Error("Expected Buffer for bytea type");
        }
        return new Bytes(value);
    }
});

// TODO: All of them
export const bytes8 = internalBytes(8);
export const bytes16 = internalBytes(16);
export const bytes24 = internalBytes(24);
export const bytes32 = internalBytes(32);
export const bytes = internalBytes();


const uint = (width: number) => customType<{ data: Uint; notNull: false; default: false }>({
    dataType() {
        return "numeric";
    },
    toDriver(value) {
        return value.value;
    },
    fromDriver(value: unknown) {
        if (typeof value === "string") { // Base 10
            return new Uint(BigInt(value));
        }
        throw new Error("Invalid type for Uint: " + typeof value);
    }
});

export const uint8 = uint(8);
export const uint16 = uint(16);
export const uint24 = uint(24);
export const uint32 = uint(32);
export const uint40 = uint(40);
export const uint48 = uint(48);
export const uint56 = uint(56);
export const uint64 = uint(64);
export const uint72 = uint(72);
export const uint80 = uint(80);
export const uint88 = uint(88);
export const uint96 = uint(96);
// TODO
export const uint256 = uint(256);

const int = (width: number) => customType<{ data: Int; notNull: false; default: false }>({
    dataType() {
        return "numeric";
    },
    toDriver(value) {
        return value.value;
    },
    fromDriver(value: unknown) {
        if (typeof value === "string") { // Base 10
            return new Int(BigInt(value));
        }
        throw new Error("Invalid type for Int: " + typeof value);
    }
});

export const int8 = int(8);
export const int16 = int(16);
export const int24 = int(24);
export const int32 = int(32);
export const int40 = int(40);
export const int48 = int(48);
export const int56 = int(56);
export const int64 = int(64);
export const int72 = int(72);
export const int80 = int(80);
export const int88 = int(88);
export const int96 = int(96);
// TODO
export const int256 = int(256);

export const struct = <TData>(name: string) =>
    customType<{ data: TData; driverData: string }>({
        dataType() {
            return 'jsonb';
        },
        toDriver(value: TData): string {
            return JSON.stringify(value);
        },
    })(name);

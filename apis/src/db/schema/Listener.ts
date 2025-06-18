
import { pgEnum, pgTable as table } from "drizzle-orm/pg-core";
import * as t from "drizzle-orm/pg-core";
import * as simDb from "../../sim/db";
import * as simTypes from "../../sim/types";

export const poolCreated = table("pool_created", {
  caller: simDb.address('caller'),
  pool: simDb.address('pool'),
  token0: simDb.address('token0'),
  token1: simDb.address('token1'),
  fee: simDb.uint256('fee'),
})

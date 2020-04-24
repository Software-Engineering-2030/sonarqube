CREATE TABLE "ACTIVE_RULES"(
    "UUID" VARCHAR(40) NOT NULL,
    "PROFILE_ID" INTEGER NOT NULL,
    "PROFILE_UUID" VARCHAR(40) NOT NULL,
    "RULE_ID" INTEGER NOT NULL,
    "FAILURE_LEVEL" INTEGER NOT NULL,
    "INHERITANCE" VARCHAR(10),
    "CREATED_AT" BIGINT,
    "UPDATED_AT" BIGINT
);
ALTER TABLE "ACTIVE_RULES" ADD CONSTRAINT "PK_ACTIVE_RULES" PRIMARY KEY("UUID");
CREATE UNIQUE INDEX "UNIQ_PROFILE_RULE_IDS" ON "ACTIVE_RULES"("PROFILE_UUID", "RULE_ID");

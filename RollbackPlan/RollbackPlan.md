
---

# RollbackPlan/RollbackPlan.md

```markdown
# SQL Server Migration Rollback Plan

## Objective

Provide a recovery strategy in the event of migration failure.

---

## Rollback Triggers

Rollback will be initiated if any of the following occur:

- Restore failure
- Missing data
- Validation mismatch
- Application connectivity issues
- DBCC CHECKDB errors

---

## Rollback Procedure

### Step 1

Stop migration activities.

### Step 2

Keep source database online.

### Step 3

Point application connection string back to source instance.

### Step 4

Verify application functionality.

### Step 5

Notify stakeholders that rollback has been completed.

---

## Validation After Rollback

### Database Status

sql
SELECT name,state_desc
FROM sys.databases
WHERE name='ERPDB';

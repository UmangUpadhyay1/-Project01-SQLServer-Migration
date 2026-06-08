# SQL Server Migration Runbook

## Project

ERPDB Migration from Source Instance to Target Instance

## Objective

Migrate ERPDB from SQL Server 2025 Enterprise (Source) to SQL Server 2025 Developer (Target) using Full and Differential backups while ensuring data integrity.

---

## Source Environment

Server: DESKTOP-S12S9M1
Instance: MSSQLSERVER

## Target Environment

Server: DESKTOP-S12S9M1
Instance: SQL2025TARGET

---

## Pre-Migration Activities

### Validate Database Status

```sql
SELECT name,state_desc
FROM sys.databases
WHERE name='ERPDB';

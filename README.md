# Project01-SQL Server Migration Project

## Overview

This project demonstrates a production-style SQL Server database migration using:

- SQL Server 2025 Enterprise Edition
- Full Backups
- Differential Backups
- Transaction Log Backups
- Validation Scripts
- Rollback Planning

## Project Objectives

- Minimize downtime during migration
- Validate migrated data
- Document migration procedures
- Create reusable DBA runbooks

## Project Structure

- Scripts
- Runbook
- RollbackPlan
- Screenshots

## Environment

Source:
SQL Server 2025 Enterprise Edition

Target:
SQL Server 2025 Enterprise Edition (Migration Lab)

## Project Outcome

Successfully migrated ERPDB from a source SQL Server 2025 Enterprise instance to a target SQL Server 2025 Developer instance using a Full + Differential backup strategy.

### Validation Performed

- Backup Verification
- Row Count Validation
- Differential Backup Validation
- DBCC CHECKDB Integrity Validation

### Results

| Validation | Status |
|------------|---------|
| Full Backup | PASS |
| Differential Backup | PASS |
| Restore | PASS |
| Row Count Validation | PASS |
| Data Validation | PASS |
| DBCC CHECKDB | PASS |

Author:
Umang Upadhyay

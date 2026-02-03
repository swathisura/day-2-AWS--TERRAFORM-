# day-2-AWS--TERRAFORM-

AWS Infrastructure with Terraform
This repository contains Terraform configurations for provisioning AWS infrastructure resources. It supports both manual creation (for learning/troubleshooting) and infrastructure-as-code approaches.

## Overview
This project demonstrates two approaches to AWS resource management:

Manual creation - Step-by-step CLI/Console instructions

Terraform IaC - Automated, version-controlled infrastructure provisioning

## Resource Coverage
Core Infrastructure
Networking: VPC, Subnets, Route Tables, Internet Gateway

Compute: EC2 Instances, Auto Scaling Groups

Storage: S3 Buckets, EBS Volumes

Security: Security Groups, IAM Roles/Policies

Databases: RDS Instances, DynamoDB Tables

Load Balancing: ALB, NLB
Manual Creation Guides
1. VPC Creation
Console Steps:

Navigate to VPC Dashboard

Click "Create VPC"

Specify CIDR block (e.g., 10.0.0.0/16)

Configure subnets, route tables, and internet gateway
2. EC2 Instance Creation
Console Steps:

Go to EC2 Dashboard

-> Click "Launch Instance"

-> Choose AMI (Amazon Linux 2, Ubuntu, etc.)

-> Select instance type (t2.micro, t3.medium)

-> Configure security groups

-> Launch instance

Security Group Rules

Minimal required ports

Principle of least privilege

Regular security group audits
 Essential AWS Services
** Storage Services
S3 (Simple Storage Service)
Definition: Object storage with 99.999999999% durability

Storage Classes:

Standard: Frequently accessed data

Infrequent Access: Less accessed, lower cost

Glacier: Archival with retrieval times

Features: Versioning, lifecycle policies, encryption

Use Cases: Backup, static websites, data lakes

EBS vs Instance Store:
Feature	EBS Volumes	Instance Store
Persistence	Persistent	Ephemeral
Data Loss	Survives stop/terminate	Lost on stop/terminate
Performance	Moderate	Very High
Cost	Additional charge	Included with instance
** Database Services
RDS (Relational Database Service)
Definition: Managed relational database service

Supported Engines: MySQL, PostgreSQL, Oracle, SQL Server

Features: Automated backups, multi-AZ deployment, read replicas

Use Cases: OLTP, web applications, e-commerce

DynamoDB
Definition: Fully managed NoSQL database

Features: Auto-scaling, single-digit millisecond latency

Data Model: Key-value and document store

Use Cases: High-traffic applications, gaming, IoT

** Load Balancing & Scaling
ELB (Elastic Load Balancing)
Types:

Application Load Balancer (ALB): Layer 7, HTTP/HTTPS

Path-based routing

Containerized applications

Network Load Balancer (NLB): Layer 4, TCP/UDP

Extreme performance

Static IP support

Classic Load Balancer (CLB): Legacy, Layers 4-7

Auto Scaling
Components:

Launch Configuration/Template: EC2 instance blueprint

Auto Scaling Group: Logical grouping of instances

Scaling Policies: Rules for adding/removing instances

Health Checks: Monitor instance health

Scaling Types:

Scale Out: Add instances during high load

Scale In: Remove instances during low load

Scheduled Scaling: Based on predictable patterns

* Monitoring & Management
CloudWatch
Definition: Monitoring and observability service

Metrics: Performance data from AWS services

Alarms: Automated actions based on thresholds

Logs: Centralized log management

Dashboards: Custom monitoring views

CloudTrail
Definition: Governance, compliance, and auditing

Management Events: Operations on resources

Data Events: Resource activity (S3 object-level)

Insights Events: Unusual activity detection

** Infrastructure as Code with Terraform
 What is Terraform?
Definition: Infrastructure as Code tool by HashiCorp for provisioning cloud resources

Key Features:

Declarative Syntax: Define desired state, Terraform determines how

Resource Graph: Creates dependency graph for parallel operations

Change Automation: Plans and applies infrastructure changes

State Management: Tracks real-world resources

** Terraform Core Components
1. Configuration Files
.tf Files: Human-readable configuration using HCL (HashiCorp Configuration Language)

main.tf: Primary configuration file

variables.tf: Input variable definitions

outputs.tf: Output values after apply

providers.tf: Provider configurations

2. State Management
terraform.tfstate: JSON file tracking managed resources

Backends: Remote state storage (S3, Azure Blob, Terraform Cloud)

State Locking: Prevents concurrent modifications

3. Providers
Definition: Plugins that interact with APIs of cloud providers


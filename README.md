# HashiTalks 2026 — Terraform Search Demo (AWS + HCP Terraform)

This repository provides a minimal, VCS-friendly setup to demonstrate **Terraform Search** using the **AWS provider** in **HCP Terraform**. The focus is on discovering existing AWS resources from **HCP Terraform (Search & Import)** or via the Terraform CLI (`terraform query`).  
This repo is designed for a live session/demo where **code generation is shown**, while **import/apply is optional and out of scope**.

---

## What this repo contains

- Terraform AWS provider configuration (pinned to `>= 6.0.0`)
- Terraform Search query examples to discover:
  - EC2 instances (filtered by tag + instance state)
  - S3 buckets

---

## Prerequisites

- HCP Terraform organization + a **VCS-driven workspace**
- Workspace Terraform version set to **Terraform v1.14+** (required for Search & Import)
- AWS credentials configured in HCP Terraform workspace variables
- (Optional but recommended) Existing AWS resources to discover

---

## AWS authentication in HCP Terraform (static keys)

In **HCP Terraform → Workspace → Settings → Variables**:

1. Under **Environment variables**, add:
   - `AWS_ACCESS_KEY_ID` = `<your-access-key-id>` (**Sensitive**)
   - `AWS_SECRET_ACCESS_KEY` = `<your-secret-access-key>` (**Sensitive**)
2. Optional:
   - `AWS_DEFAULT_REGION` = `eu-west-1`

> Ensure the AWS identity has enough permissions to list EC2 and S3 resources.

---

## Terraform configuration (already in the repo)

The repository includes (or expects) a file containing:

```hcl
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 6.0.0"
    }
  }
}

provider "aws" {
  region = "eu-west-1"
}
```

---

## Terraform Search queries

Terraform Search queries are stored in `*.tfquery.hcl` files.

Create or update a file named `search.tfquery.hcl` with the following queries.

### Query: EC2 instances (tag + state)

```hcl
list "aws_instance" "hashitalksdemo_ec2" {
  provider = aws

  include_resource = true

  config {
    region = "eu-west-1"

    filter {
      name   = "tag:Name"
      values = ["hashitalks2026-demo-*"]
    }

    filter {
      name   = "instance-state-name"
      values = ["running", "stopped"]
    }
  }
}
```

### Query: S3 buckets

```hcl
list "aws_s3_bucket" "hashitalksdemo_s3" {
  provider = aws
  include_resource = true

  config {
    region = "eu-west-2"
  }
}
```

---

## Run Terraform Search

### Option A: HCP Terraform UI (Search & Import)

1. Open your workspace in **HCP Terraform**
2. Navigate to **Search & Import**
3. Run the query
4. Review discovered resources and their management status
5. Generate Terraform code (resource blocks + import blocks)

---

### Option B: Terraform CLI (`terraform query`)

From the repo root:

```bash
terraform init
terraform query
```

---

## Recommended demo naming (for predictable results)

For EC2, tag demo instances with:

- `Name = hashitalks2026-demo-01`
- `Name = hashitalks2026-demo-anything`

This matches the wildcard filter in the EC2 query.

---

## Troubleshooting

### Error: `provider hashicorp/aws does not support list resource ...`

Most common causes:
- Workspace Terraform version is below **1.14**
- AWS provider version is too old
- `.terraform.lock.hcl` pins an older AWS provider version

Fix:
1. Ensure the workspace Terraform version is **>= 1.14**
2. Ensure `required_providers` contains `version = ">= 6.0.0"`
3. Update and commit the lockfile:

```bash
terraform init -upgrade
```

Commit the updated:
- `.terraform.lock.hcl`
- any updated `.tf` files

---

## Notes

- This repository focuses on **Terraform Search** and **generated code preview**.
- Importing resources into Terraform state can be done later if needed.

---


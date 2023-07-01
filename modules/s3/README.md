# AWS S3 bucket Terraform module

## Description
Módulo de AWS S3 que crea un bucket en S3, se le puede pasar varios valores básicos como, el nombre del bucket, la política de acceso público, activar el versioning y declarar una política con diferentes statements.

## Resources

| Name | Type |
|------|------|
| [aws_s3_bucket.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket) | resource |
| [aws_s3_bucket_public_access_block.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_public_access_block) | resource |
| [aws_s3_bucket_versioning.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_versioning) | resource |
| [aws_s3_bucket_policy.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_policy) | resource |
| [aws_iam_policy_document.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |


## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_bucket_name"></a> [bucket_name](#input_bucket_name) | (Required) Name for bucket S3 | `string` | | yes |
| <a name="input_versioning"></a> [versioning](#input_versioning) | (Optional) Set versioning S3. | `map(string)` | `{}` | no |
| <a name="input_public_access_block"></a> [public_access_block](#input_public_access_block) | (Optional) Set public access S3. | `map(bool)` | `{}` | no |
| <a name="input_statements"></a> [statements](#input_statements) | (Optional) Multiple statements for policy S3. | <code>map(object({<br>&nbsp;&nbsp;&nbsp;&nbsp;principals = map(list(string)),<br>&nbsp;&nbsp;&nbsp;&nbsp;actions    = list(string),<br>&nbsp;&nbsp;&nbsp;&nbsp;effect     = string<br>}))</code> | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="otuput_arn"></a> [arn](#output_arn) | The ARN of the bucket. |

# AWS IAM role Terraform module

## Description
Módulo de AWS que crea un rol de IAM. Se pueden crear múltiples statements para la trust policy y permite crear un instance profile asociado al rol.

## Resources

| Name | Type |
|------|------|
| [aws_iam_role.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_instance_profile.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_instance_profile) | resource |
| [aws_iam_policy_document.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |


## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="role"></a> [role](#role) | (Required) Name for role. | `string` | | yes |
| <a name="instance_profile"></a> [instance_profile](#instance_profile) | (Optional) Create instance profile | `bool` | `false` | no |
| <a name="input_statements"></a> [statements](#input_statements) | (Required) Multiple statements for trust policy. | <code>map(object({<br>&nbsp;&nbsp;&nbsp;&nbsp;principals = map(list(string)),<br>&nbsp;&nbsp;&nbsp;&nbsp;actions    = list(string),<br>&nbsp;&nbsp;&nbsp;&nbsp;effect     = string<br>}))</code> | | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="otuput_arn"></a> [arn](#output_arn) | The ARN of the role. |

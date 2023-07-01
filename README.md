# s3-terraform-module

## Description

Este proyecto de Terraform implementa la infraestructura necesaria en AWS para crear un rol IAM y un bucket S3. A su vez crea una politica de S3 para este rol de IAM para darle acceso de lectura.

## Requeriments

Antes de utilizar este código, asegúrate de tener lo siguiente configurado:

- [Terraform](https://www.terraform.io/downloads.html) instalado.
- Perfil configurado de AWS o puedes [configurar](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#authentication-and-configuration) tu método favorito.

## Usage

Sigue estos pasos para utilizar el código de Terraform:

1. Clona este repositorio en tu máquina local.
2. Copia el archivo `terraform.tfvars.dist` a  `terraform.tfvars` y ajusta los valores de configuración según tus necesidades.
3. Ejecuta el siguiente comando en el directorio raíz del proyecto:

   ```shell
   terraform init
   ```

   Esto inicializará el backend de Terraform y descargará los plugins necesarios.

4. Revisa los recursos que se crearán con el siguiente comando:

   ```shell
   terraform plan
   ```

   Esto te mostrará una descripción de los recursos que serán creados.

5. Finalmente, ejecuta el siguiente comando para crear los recursos en AWS:

   ```shell
   terraform apply
   ```

   Confirma la ejecución escribiendo "yes" cuando se te solicite.

## Terraform files

El código de Terraform está organizado en los siguientes archivos y directorios:

- `main.tf`: Este archivo contiene la configuración principal de Terraform, incluyendo la definición del proveedor de AWS y la declaración de los módulos utilizados.
- `versions.tf`: En este archivo se definen los providers utilizados.
- `outputs.tf`: En este archivo se definen los outputs del modulo root, que en este caso no hay.
- `variables.tf`: En este archivo se definen las variables utilizadas en el código, como la región de AWS, el perfil de AWS, el nombre del bucket S3, etc.
- `modules/iam/role`: Este directorio contiene el módulo `iam/role`, que se encarga de crear el rol IAM con la trust policy asociada.
- `modules/s3`: En este directorio se encuentra el módulo `s3`, que se utiliza para crear el bucket S3 con las opciones de versioning y bloqueo de acceso público configuradas. También crea la política de S3 y le da permisos al usuario IAM creado.

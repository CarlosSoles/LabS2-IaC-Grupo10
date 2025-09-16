# Trabajo - Terraform + Docker

# Descripcion Breve:
Primero instalamos Terraform Luego lo agregamos al entorno de variables del sistema para ejcutarlo en el cmd correctamente, revisamos la documentacion de la pagina Docker Build para poder realizar los pasos siguientes, luego en visual code creamos los archivos Terraform y despues de eso revisamos la pagina de Conventional Commits para agregar cada uno sus commits correspondientes luego ejecutamos los codigos para que nos brinde el resultado esperado.

<img width="1241" height="691" alt="image" src="https://github.com/user-attachments/assets/6fd4003f-fe07-4a4d-b2d3-cedee624e9b2" />


# Integrantes:

1. Ahumada Soles Carlos
2. Calluchi Patiño  Eduardo
3. Principe Huamanchumo Luis
4. Sandoval Vargas Robert
5. Asencio Correa Damer

# Instrucciones

### 1. Inicialización de Terraform y descarga de proveedores

Ejecutamos este comando en la terminal de visual code

```bash
terraform init
```
### 2. Lista los workspaces existentes
```bash
terraform workspace list
```

Verás al menos default (creado automáticamente).

### 3. Crea un nuevo workspace
```bash
terraform workspace new dev
```

Esto crea y cambia al workspace dev.

El mensaje “Created and switched to workspace 'dev'” confirmará el cambio.

### 4. Cambia entre workspaces
```bash
terraform workspace select default
```

O para volver a dev:
```bash
terraform workspace select dev
```

### 5. Revisa el workspace actual
```bash
terraform workspace show
```
Te indica en cuál estás trabajando.


### 6. (Opcional) Genera un plan de ejecución para ver los cambios que se aplicarán

Este paso no es obligatorio, pero te permite revisar qué recursos se crearán, modificarán o eliminarán **antes de aplicar los cambios**.

```bash
terraform plan
```

### 7. Ejecución de la configuración en Terraform

Este comando aplica la configuración escrita en los archivos `.tf` y crea la infraestructura en visual code

```bash
terraform apply -auto-approve
```

### 8. Visualización de contenedores activos en Docker

Una vez aplicada la infraestructura con Terraform, puedes verificar qué contenedores están corriendo usando:

```bash
docker ps
```
### 9. Comprobación de accesibilidad de los servicios

Abre tu navegador web y accede al servicio a través de `localhost` y el puerto correspondiente.

Por ejemplo, ingresa:`http://localhost:8001/` -> app1
                     `http://localhost:8002/` -> app2
                     `http://localhost:8003/` -> app3
                     `http://localhost:3001/` -> grafana











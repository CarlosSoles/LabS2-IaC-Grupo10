# Trabajo - Terraform + Docker

# Descripcion Breve:
Primero instalamos Terraform Luego lo agregamos al entorno de variables del sistema para ejcutarlo en el cmd correctamente, revisamos la documentacion de la 
pagina Docker Build para poder realizar los pasos siguientes, luego en visual code creamos los archivos Terraform luego cada uno agrego sus commit correspondientes
luego ejecutamos los codigos y nos dio este resultado

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

### 2. (Opcional) Genera un plan de ejecución para ver los cambios que se aplicarán

Este paso no es obligatorio, pero te permite revisar qué recursos se crearán, modificarán o eliminarán **antes de aplicar los cambios**.

```bash
terraform plan
```

### 3. Ejecución de la configuración en Terraform

Este comando aplica la configuración escrita en los archivos `.tf` y crea la infraestructura en visual code

```bash
terraform apply
```

### 4. Visualización de contenedores activos en Docker

Una vez aplicada la infraestructura con Terraform, puedes verificar qué contenedores están corriendo usando:

```bash
docker ps
```
### 5. Comprobación de accesibilidad de los servicios

Abre tu navegador web y accede al servicio a través de `localhost` y el puerto correspondiente.

Por ejemplo, ingresa:`http://localhost:8000/`





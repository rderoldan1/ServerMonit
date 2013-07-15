Agente de Monitoreo en Servidores
===========

#### Instalación

Descargarlo desde github via git clone

#### Configuración

1. Crear un host virtual "escuchando" en el puerto 4567, ejemplo de configuración.


    	<VirtualHost *:4567>
      		ServerName domain
      		DocumentRoot /home/ubuntu/nubecoop/ServerMonit/public
      		<Directory /home/ubuntu/nubecoop/ServerMonit/public>
        		AllowOverride all 
        		Allow from all
        		Options -MultiViews
      		</Directory>
    	</VirtualHost>

2. Habilitar apache para que escuche el puerto 4567, este ejemplo se basa en un servidor ubuntu.

Editar el archivo `/etc/apache2/ports.conf `
Incluir la linea `Listen 4567`
  
  
  


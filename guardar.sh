#!/bin/bash
_fecha=$(date +"El Mes %m Hoy es %d del año %Y a las %r")
_hoy=$(date +"%m_%d_%Y_%r_%S")
_pwd=$(pwd)
# APP info
app_name="Aplication autosave"
app_version="1.0.3"
app_author="Juan Manuel Pedro Villalba <hexomedesarrollos@gmail.com>"
app_last_update="29-08-2019 y en la actualidad es "$_fecha

echo $app_name
echo $app_version
echo $app_author
echo $app_last_update


function bin(){
	if [ -d bin ];
	then
	echo "Sí, sí existe."
	echo "Data is exist in bin folder".	" [ ".$_hoy." ]"
    echo "Data deploy is existed  OK ".	" [ "$_hoy" ]" >> testing.server.log
    echo "Directorio de ./bin existe OK ".	" [ "$_pwd" ]" >> testing.server.log
    echo "Directorio de ./bin OK ".	" [ "$_pwd" ]"
	else
	echo "No, no existe"
	echo "File does not exist"
	echo "Create Directory"
	mkdir bin
        echo "Directorio de bin creado OK ".      " [ "$_pwd" ]" >> testing.server.log
	fi
}
bin

servicio() {
servicio=./bin/autosave.sh
if [ ! -f "$servicio" ];
then
    echo "File does not exist sh"
    echo "Download sh deployer to system_".		"[".$_hoy."]"
    curl -o bin/autosave.sh https://raw.githubusercontent.com/juanma386/autosave/master/autosave.sh
    echo 'Downloading finish OK'
else
echo 'El ejecutable esta adentro del bindario'
fi
}
servicio
echo 'Listo el proceso de instalación del servicio de autoguardado se ha terminado'

comando() {
comando=/usr/bin/guardar.sh
if [ ! -f "$comando" ];
then
    echo "File does not exist sh"
    echo "Intentando descargar de internet"
    curl -o bin/guardar.sh https://raw.githubusercontent.com/juanma386/autosave/master/guardar
    sudo -v
    sudo mv ./bin/guardar.sh /usr/bin/guardar
    echo 'ahora solo ejecutas guardar y se realizara el guardado automatico'
    echo 'tambien puedes automatizar el proceso con cron'
    
else
echo 'esto es un else'
fi
}
comando
echo 'Listo el proceso de instalación del comando de autoguardado se ha terminado'

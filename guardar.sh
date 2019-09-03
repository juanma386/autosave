#!/bin/bash
_fecha=$(date +"El Mes %m Hoy es %d del año %Y a las %r")
_hoy=$(date +"%m_%d_%Y_%r_%S")
_pwd=$(pwd)
# APP info
app_name="Aplication autosave"
app_version="1.0.3"
app_author="Juan Manuel Pedro Villalba <hexomedesarrollos@gmail.com>"
app_last_update="29-08-2019 y en la actualidad es "$_fecha

# git data
gitFolder=$(echo "$_pwd/./.git/")
gitStatus=$(/usr/bin/git status) 
gitInit=$(/usr/bin/git init)


echo $app_name
echo $app_version
echo $app_author
echo $app_last_update

gitinit()
         {  
  if [ -d $gitFolder ];
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
	echo $gitInit
    echo "el repositorio se ha inicializado ".      " [ "$_pwd" ]" >> testing.server.log
    echo $gitStatus     " [ "$_pwd" ]" >> testing.server.log
    echo 'No olvides crear tu repositorio externo en un servidor seguro'
    echo 'En caso de error revisar el archivo testing server con extension log'
	fi
}
gitinit


gitignore() {
gitignore=./.gitignore
if [ ! -f "$servicio" ];
then
    echo "File does not exist sh"
    echo 'bin' > .gitignore
    echo '*.log' >> .gitignore
    echo '*.ini' >> .gitignore

    echo 'Create .gitignore file finish OK'
else

    echo 'Debes agregar al gitignore datos importante por 
    favor verifica su estado para no crear codigo
    o cambios basura en el git '
fi
}
gitignore
echo 'Listo el proceso de instalación del servicio de autoguardado se ha terminado'


bin(){
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

comando() 
    {
comando=/usr/bin/guardar
if [ ! -f "$comando" ];
then
    echo "File does not exist sh"
    echo "Intentando descargar de internet"
    sudo -v
    sudo mv ./bin/guardar.sh /usr/bin/guardar
    echo 'ahora solo ejecutas guardar y se realizara el guardado automatico'
    echo 'tambien puedes automatizar el proceso con cron'
    
else
echo 'el archivo guardar existe OK'
fi
}
comando


echo 'Listo el proceso de instalación del comando de autoguardado se ha terminado'




if [ $1 ="ahora" ]; then
     echo 'si quieres guardar manualmente solo ejecuta comando "guardar ahora"';
else
    bash $servicio ;
   
fi
instalar()
        {
sudo -v
sudo cp $_pwd/./bin/guardar.sh /usr/bin/guardar
        }

if [ $1 ="instalar" ]; then
     echo 'si quieres instalar manualmente solo ejecuta comando "guardar instalar"';
else
echo 'esto es el else'
   
fi
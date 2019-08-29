#!/bin/bash
_fecha=$(date +"El Mes %m Hoy es %d del año %Y a las %r")
_hoy=$(date +"%m_%d_%Y_%r_%S")
_pwd=$(pwd)
_permisos=$(ls -la *)


# APP info
app_name="data-ram"
app_version="1.0.3"
app_author="Juan Manuel Pedro Villalba <hexomedesarrollos@gmail.com>"
app_last_update="29-08-2019 y en la actualidad es "$_fecha
amplitud=$changepass 
# app_usage="Usage: ./random_pwd.sh [password length]"


# Espacio de las funciones
 changepass=$( shuf -i 5-10 -n 1 )


function randPassword() {
        MATRIX="ABCDEF0123456789"
        PASS=""
        n=1
        i=1
        [ -z "$1" ] && length=8 || length=$1
        [ -z "$2" ] && num=1 || num=$2
        while [ ${i} -le $num ]; do
                while [ ${n} -le $length ]; do
                        PASS="$PASS${MATRIX:$(($RANDOM%${#MATRIX})):1}"
                        n=$(($n + 1))
                done
                echo $PASS
                n=1
                PASS=""
                i=$(($i + 1))
        done
}


function amplificar(){
     
        rand_pwd=$(randPassword $1)
        echo 'Estas usando la aplicación '$app_name
        echo 'Aplicación en version '$app_version
        echo 'Creado por '$app_author
        echo 'La ultima actualización fue '$app_last_update
        echo 'Amplitud usada '$amplitud
        # Print password
        echo $rand_pwd
}





if [ $# -eq 1 ]; then
case 1 in
    $(($1 <= 10)))
        echo "Unidades"
        rand_pwd=$(randPassword $1)
        echo $rand_pwd
        echo 'fin'      
        echo 'Amplitud usada '$1
        ;;
    $(($1 <= 100)))
        echo "Decenas "$_hoy
        rand_pwd=$(randPassword $1)
        echo $rand_pwd
        echo 'fin'      
        echo 'Amplitud usada '$1
        ;;
    $(($1 <= 1000)))
        echo "Centenas un número muy grande, estas gastando recursos de manera innecesaria "$_hoy
        rand_pwd=$(randPassword $changepass)
        echo $rand_pwd
        echo 'Usa un numero mas pequeño'      
        echo 'Amplitud usada '$changepass
        ;;
    $(($1 <= 10000)))
        echo "Millares un número muy grande, 
        estas gastando recursos de manera innecesaria, lamentamos
        informar que se esta superando la tasa de computo admitida "$_hoy
        rand_pwd=$(randPassword $changepass)
        echo $rand_pwd
        echo 'Usa un numero mas pequeño'      
        echo 'Amplitud usada '$changepass
        ;;
    *)
        echo "Un número muy grande, estas
        gastando recursos de manera innecesaria, lamentamos
        informar que se esta superando la tasa de computo admitida "$_hoy
        rand_pwd=$(randPassword $changepass)
        echo $rand_pwd
        echo 'Usa un numero mas pequeño'      
        echo 'Amplitud usada '$changepass
esac
else
        rand_pwd=$(randPassword $changepass)
        echo $rand_pwd" Cambios guardados automaticamente" $_hoy > ultimo-commit.log        
fi

algoritmo01=$(cat ultimo-commit.log)  
git add -A && git commit -m "$algoritmo01"

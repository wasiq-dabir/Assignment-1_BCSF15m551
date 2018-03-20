Is_upper()
{
 echo "$1" | tr '[:upper:]' '[:lower:]'
}

Is_Root_User()
{
 if [ $UID = 0 ]
 then
    echo "This Script : '$0' is exectued by root user  "
 else
    echo "This Script : '$0' is not executed by root user  "    
 fi
}


Is_Root_User()
{
 if [ $UID = 0 ]
 then
    echo "this Script : '$0' is executed by root user  "
 else
    echo "this Script : '$0' is not executed by root user  "    
 fi
}

Is_exist()
{

nam=$1

  for x in `cut -d: -f1 "/etc/passwd"`
do 

 if [ $x = $nam ]

then
 echo "The user: '$1' exists."
return 0

fi


done
 echo "This user :'$1' does not exists."
   
 return 1

}


Is_upper $1

Is_Root_User $0 $1

Is_exist $2 






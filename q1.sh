cd $1 
for x in `ls $1`
do
 extnsn=${x##*.}
 if [ $extnsn != "$x" ]
 then  
  test -d $extnsn
  if [ $? = 1 ]
then
  mkdir $extnsn
fi
  mv $i $extnsn
 fi

done

ls $1


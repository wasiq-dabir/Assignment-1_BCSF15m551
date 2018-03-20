if [ $# = 0 ]
then 
echo "Enter the file!"
exit 0
fi
if [ $# -gt 1 ]
then 
echo "Enter only one file!"
exit 0
fi
sort $1 | uniq -u | tee File2
echo "New file is created by name of File 2"

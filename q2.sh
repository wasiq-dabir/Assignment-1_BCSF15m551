`touch oddfile.txt`
`touch evenfile.txt`
coutn=1
for x in `more -1 f`
do 
i=$ ((coutn%2))
if [ $i -eq 0 ]
then
	echo $x x>>evenfile.txt
	coutn= `expr $coutn + 1`
else
	echo $x 1>>oddfile.txt
	coutn= `expr $coutn + 1`
fi
done



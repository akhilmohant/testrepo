clear
i="y"
while [ $i = "y" ]
do
echo "^______________ CALCULATOR _________________^
 "
echo " >>>>> Press [1] for additon         <<<<< "
echo " >>>>> Press [2] for substraction    <<<<< "
echo " >>>>> Press [3] for multiplication  <<<<< "
echo " >>>>> Press [4] for division        <<<<< "
read var
echo "::::: Enter the 1st number :::::: "
read a
echo "::::: Enter the 2nd number :::::: "
read b
case $var in
[1])
echo " The sum is `expr $a + $b ` "
;;
[2])
echo " >>> The difference is `expr $a - $b ` <<< "
;;
[3])
echo " >>> The product is `expr $a \* $b ` <<<"
;;
[4])
echo " >>> The quotient is `expr $a / $b ` <<<"
;;
[5])
echo " >>> The reminder is `expr $a % $b ` <<<"
;;
*)
echo " **** Please enter a valid option **** "
;;
esac
echo " **** Do you want to continue...? y/n **** "
read i
if [ $i != "y" ]
then
	exit
else
	clear
fi
done

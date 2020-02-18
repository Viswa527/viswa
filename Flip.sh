read num
h=0
t=0
for((i=0;i<num;i++))
do
g=$(($RANDOM%2))
if((g==1))
then
h=$(($h+1))
else
t=$(($t+1))
fi
done
echo $h $t
s=$((awk -v v1=$h -v v2=$num "BEGIN {(v1/v2)}"))
awk -v v1=$t -v v2=$num "BEGIN {print(v1/v2)}"
echo "Values od s is $s"

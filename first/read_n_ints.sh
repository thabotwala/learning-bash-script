read num
Y=0
i=0
for i in $(seq 1 $num); do
  read X
  Y=$((Y + X))
done
Y=$((Y / num))
printf
echo $Y

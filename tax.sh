echo "Enter employee name: "
read name

echo "Enter hours worked: "
read hours

echo "Enter rate per hour: "
read rate

basic_pay=$(($hours * $rate))

if (( $basic_pay > 70000 )); then
tax=$(($basic_pay * 0.25))
elif (( $basic_pay >= 15000 && $basic_pay <= 70000 )); then
tax=$(($basic_pay * 0.15))
else
tax=0
fi
net_pay=$(($basic_pay - $tax))

echo "Employee: $name"
echo "Hours worked: $hours"
echo "Rate per hour: $rate"
echo "Basic pay: $basic_pay"
echo "Tax: $tax"
echo "Net pay: $net_pay"

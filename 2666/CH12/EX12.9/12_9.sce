clc
//initialisation of variables
p1=140000//Btu per gal
h=0.75//percent
p2=40000//Btu per gal
h1=4.3//ft
h2=0.746//ft
p3=1.25//ft
f=10//cents a gal
//CALCULATIONS
H=h1*h2*p3//cents per hr
B=p2/(p1*h)*f//cents per lb
//RESULTS
printf('the cost of operating the heat pump is=% f cents per hr',H)
printf('the oil burner the cost is =% f cents per lb',B)

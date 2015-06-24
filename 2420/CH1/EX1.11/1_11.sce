clc
clear
//Initialization of variables
g=32.2 //ft/s^2
n=100 //rpm
p1=100 //psia
p2=25 //psia
v2=2 //cu ft
//calculations
W=p1*144*v2 - p2*144*v2
Hp=W*n/33000
//results
printf("Horsepower developed = %.1f hp",Hp)

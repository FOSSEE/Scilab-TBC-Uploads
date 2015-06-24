//Initilization of variables
l=62.4 //lb/ft^3
h=12 //ft
f=105 //lb/ft^3
//Calculations
p1=l*h //lb/ft^2
//Total force on left side
//Simplfying the equation we get a three degree equation in d
//solving for d
p=[1/3 0 -144 467]
r=roots(p)
d=r(3) //ft
//Result
clc
printf('The value of d is %f ft',d)

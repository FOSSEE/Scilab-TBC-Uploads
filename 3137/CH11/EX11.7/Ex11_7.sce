//Initilization of variables
m=10 //kg
g=9.8 //m/s^2
F=200 //N
l=3 //m
//Calculations
//Applying Virtual work principle
By=m*g*0.5 //N
Bx=F*(2/3) //N
//By equations of equilibrium
Ax=-Bx-F //N negative sign indictaes the LEFT orientation
Ay=m*g-By //N
//Result
clc
printf('The values are Ax=%fN,Ay=%fN,Bx=%fN and By=%fN',Ax,Ay,Bx,By )

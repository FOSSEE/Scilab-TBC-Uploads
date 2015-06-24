//Initilization of variables
Wc=100 //lb
r= 1 //ft
F=80 //lb
k=50 //lb/ft
s=6 //in
g=32.2 //ft/s^2
//Calculations
//Work done on the system
U=-0.5*k*(1)+F*(s/12) //ft-lb
//Initial KE is zero
Vo=sqrt(U/(0.5*(Wc/g+0.5*(Wc/g)*r))) //ft/s
//Result
clc
printf('The initial speed is %f ft/s',Vo)

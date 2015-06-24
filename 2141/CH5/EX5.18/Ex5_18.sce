
clc
//initialisation of variables
V=2 //ft^3
v=20 //lbf/in^2
T=540 //R
t=300 //F
t2=80 //F
cv=0.177 //lbf/in^2
p=160 //lbf/in^2
W=9.15 //Btu
m=0.1868 //lbm
//CALCULATIONS
Q=m*(cv)*(t-t2)-W//Btu
//RESULTS
printf('the amount of this heat transfer=% f Btu',Q) 

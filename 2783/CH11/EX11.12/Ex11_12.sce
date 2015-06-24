clc
//initialization of new variables
clear
P=5 //kW
U=30 //km/h
eta=70 //percent
rho=1.22 //kg/m^3
//calculations
eta=eta/100
P=P*1000
R=sqrt(P*27/(8*eta*rho*(U/3.6)^3*%pi))
//results
printf('R = %.2f m',R)

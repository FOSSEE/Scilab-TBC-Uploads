clc
//Example 17.2
//Calculate the force required to tow a square metal plate by a boat
rho_water=998.2//Kg/m^3
V=15//km/hr
v=1.004*10^(-6)//m^2/s
l=1//m length of plate
//1 km = 1000 m
//1 hr = 3600 s
Rx=(V*1000/3600)*l/v//dimentionless (reynold's number)
Cf=1.328/Rx^0.5//dimentionless
F=Cf*rho_water*(V*1000/3600)^2//N
printf("The force required to tow the square plate is %f N",F);
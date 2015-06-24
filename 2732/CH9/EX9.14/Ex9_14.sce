clc
//initialization of variables
clear
P=400 //kg/m
L=10 //m
F=10 //tonne
n=3
Ixx=5943.1 //cm^4
A=52.03 //cm^2
rx=10.69 //cm
E=2*10^6 //kg/cm^2
// calculations
Pcr=%pi^2*E*Ixx/((L*100)^2)
Pcr=Pcr/1000
e=P*L^2/(8*F*1000)
g=e*12.5*100/rx^2
Smax=F*1000/A*(1+g*1/(1-n*(F/Pcr)))
// results
printf('The maximum stress developed is %d kg/cm^2',Smax)

// approximate calculations involved in the text book

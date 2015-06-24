//example 3
//Calculating reversible work and irreversibility
clear
clc
//Form the Steam Tables at state 1
u1=1243.5 //initial specific internal energy in kJ/kg
s1=4.4819 //initial specific entropy in kJ/kg-K
v1=28.895 //initial specific volume in m^3/kg
v2=2*v1 //final specific volume in kg/m^3
u2=u1 //initial specific internal energy in kJ/kg
//These two independent properties, v2 and u2 , fix state 2.The final temp. is calculated by interplotation using the data for T2=5C and v2,x=0/3928 and u=948.5 kJ/kg. For T2=10C and v2, x=0.5433 and u=1317 kJ/kg
T2=9.1+273.2 //final temp. in K
x2=0.513 //quality in final state
s2=4.644 //final specific entropy in kJ/kg
V1=1 //volume of part of A in m^3
m=V1/v1  //mass flow rate in kg/s
To=20+273.2 //Room temperature in K
Wrev=To*m*(s2-s1) //reversible work in kJ
I=Wrev //irreversibility of the process
printf("\n The irreversibility is I=%.3f kJ/kg.\n",I)
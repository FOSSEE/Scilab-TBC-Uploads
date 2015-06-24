// Exa 2.7
clc;
clear;
close;
// Given data
r=5;// in cm
R_U= 8314
T= 27+273;// in K
V= 4/3*%pi*r^3;// volume of balloon in cm^3
// atmPressure= 75 cm off mercury = 75/76*1.01325 
atmPressure= round(75/76*1.01325) ;// in bar
p= atmPressure;// pressure of hydrogen in balloon in bar
p=p*10^5;// in N/m^2
R= R_U/2;// in J/kg K
m1= p*V/(R*T);// in kg
// The volume of air displaced = the volume of balloon, so
R=287;
T=20+273;// in K
m2= p*V/(R*T);// in kg
payload= m2-m1;// in kg
disp(payload,"Payload that can be lifted along with the balloon in kg is : ")



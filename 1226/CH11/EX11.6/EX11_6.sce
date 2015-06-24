clc;funcprot(0);//EXAMPLE 11.6
// Initialisation of Variables
as=4.6;........................//Air supply in kg/min
p1=1.013;.......................//Atmospheric pressure in bar
t1=298;......................//Atmospheric temperature in Kelvin
C2=80;........................//Air flow velocity in m/s
Cv=0.8;....................//Velocity co efficient
ga=1.4;........................//Degree of freedom of gas
R=0.287;........................//Gas constant in kJ/kgK
//Calculations
cp=R*(ga/(ga-1));.......................//Specific heat capacity of air in kJ/kgK
p2=((1-(((C2/Cv)^2)*(1/(2*cp*1000*t1))))^(ga/(ga-1)))*p1;...................//Throat pressure in bar
rho1=(p1*10^5)/(R*1000*t1);
rho2=rho1*(p2/p1)^(1/ga);
ma=as/60;...................//Air flow in kg/s
A2=ma/(rho2*C2);.................//Throat area in m^2
d2=sqrt((4*A2)/%pi);................//Throat diameter in m
disp(d2,"Throat diameter in m")

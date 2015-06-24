clc;funcprot(0);//EXAMPLE 3.13
// Initialisation of Variables
v1=0.45;.............//Initial volume in m^3 
p1=1;...............//Initial pressure in bar
t1=303;.............//Initial temperature in K
p2=11;...................//Pressure at the end of compression stroke in bar
Q=210;...................//heat added at constant volume in kJ
N=210;.................//No of working cycles per min
ga=1.4;.............//Ratio of specific heats
R=287;.................//Gas constant in kJ/kgK
cv=0.71;.................//Specific heat at constant volume in kJ/kg
//Calculations
r=(p2/p1)^(1/ga);...................//Compression ratio
t2=t1*(r^(ga-1));...................//Temperature at the end of adiabatic compression
v2=(t2*p1*v1)/(t1*p2);.................//Volume at the end of adiabatic compression in m^3
m=(p1*v1*10^5)/(R*t1);................//Mass of engine fluid in kg
t3=(Q/(m*cv))+t2;...................//Temperature at the end of isochoric compression in K
p3=(t3/t2)*p2;................//Pressure at the end of isochoric compression in bar
v3=v2;
t4=t3*(1/r)^(ga-1);...................//Temperature at the end of adiabatic expansion in K
p4=p3*(1/r)^ga;......................//Pressure at the end of adiabatic expansion in bar
v4=v1;
pc=(v2*100)/(v1-v2);..................//Percentage clearence
etaotto=1-(1/(r^(ga-1)));........................//Efficiency of otto cycle
Qr=m*cv*(t4-t1);...............................//Heat rejected in kJ/kg
pm=((Q-Qr)*1000)/((v1-v2)*100000);......//Mean effective pressure in bar
P=(Q-Qr)*(N/60);........................//Power developed in kW
printf("Temperature after adiabatic compression: %f K\n\n",t2)
printf("Pressure after adiabatic compression: %f bar\n\n",p2)
printf("Volume after adiabatic compression: %f m^3\n\n",v2)
printf("Temperature after isochoric compression: %f K\n\n",t3)
printf("Pressure after isochoric compression: %f bar\n\n",p3)
printf("Volume after isochoric compression: %f m^3\n\n",v3)
printf("Temperature after adiabatic expansion: %f K\n\n",t4)
printf("Pressure after adiabatic expansion: %f bar\n\n",p4)
printf("Volume after adiabatic expansion: %f m^3\n\n",v4)
printf("Percentage clearance: %f\n\n",pc)
printf("Efficiency of otto cycle: %f\n\n",etaotto*100)
printf("Mean effective pressure: %f bar:\n\n",pm)
printf("Power developed: %f kW\n\n",P)

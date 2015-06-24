//ques10
//Mass of Air in a Room
clc
l=4;//length in metres
b=5;//breadth in metres
h=6;//height in metres
V=l*b*h;//volume in m^3
P=100;//Pressure in kPa
R=0.287;//Gas constant for a given gas in kPa.m^3/Kg.k
T=298;//Temp in K
m=P*V/(R*T);//mass in Kg
printf('Mass =P*V/(R*T)= %.1f kg',m);


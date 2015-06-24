//ques2
//Mach Number of Air Entering a Diffuser
clear
clc
//(a) The speed of sound in air at 30°C is determined as
k=1.4;
R=0.287;//gas constant
T=303;//air temperature in K
c=sqrt(k*R*T*1000);//speed of light in m/s
printf('(a) speed = %.0f m/s \n',c);
//(b) Mach Mumber
V=200;//speed in m/s
Ma=V/c;
printf(' (b) Mach number = %.3f ',Ma);

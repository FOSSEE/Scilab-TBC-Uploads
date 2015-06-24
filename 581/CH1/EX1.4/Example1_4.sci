
clear;
clc;
printf("\t Example 1.4\n");
h=250; //Heat Transfer Coefficient, W/(m^2*K)
k=45; // Thermal Conductivity, W/(m*K)
c=0.18; //Heat Capacity, kJ/(kg*K)
a=9300; //density, kg/m^3
T1=200; //temperature, C
D=0.001; //diameter of bead, 
t1 =0:0.1:5;
T=200-180*exp(-t1/((a*c*D*1e3)/(6*h))); 
plot(t1,T);
xtitle("Thermocouple response to a hot gas flow","time,t1 sec","temperature,T C");
Bi = h*(0.001/2)/45; //biot no.
printf("The value of Biot no for this thermocouple is %f",Bi);
printf("\n Bi is <0.1 and hence the thermocouple could be considered as a lumped heat capacity system and the assumption taken is valid.\n");
//End











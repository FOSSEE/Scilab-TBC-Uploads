clear
clc
//Example 3.7 MANOMETER ANALYSIS
l1=0.4; //[m]
l2=1.0; //[m]
l3=0.8; //[m]
S_oil=0.8;
//Specific weights
g_water=9810; //[N/m^3]
g_oil=S_oil*g_water //[N/m^3]
g_air=0; //[N/m^3]
g_mercury=133000; //[N/m^3]
p1=0; //pressure[Pa]
//From Manometer equation
p2=(p1+g_mercury*l3-g_air*l2+g_oil*l1)/10^3 //[kPa],(factor 1kPa/10^3Pa)
printf("\nThe pressure of the air in the tank = %.f kPa gage.\n",p2)
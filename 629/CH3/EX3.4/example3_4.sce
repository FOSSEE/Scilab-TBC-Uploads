clear
clc
//Example 3.4 PRESSURE IN THE TROPOSPHERE
p0=101.3; //absolute pressure[kPa]
T0=23+273; //absolute temp.[K]
alpha=5.87*10^-3; //[K/m]
delz=2000; //[m](delz=z-z0)
k=5.823; //(k=g/alpha*R)

//Pressure equation in troposphere
p=p0*((T0-alpha*delz)/T0)^k //[kPa]
printf("\nThe pressure at an elevation of 2000m = %.1f kPa absolute.\n",p)
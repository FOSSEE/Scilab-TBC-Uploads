//Chapter-3, Example 3.23, Page 89
//=============================================================================
clc
clear

//INPUT DATA
p=100;//Resistivity of nichrome in µ ohm-cm 
Q=10000;//Heat input of a heater in W
T=1220;//Surface temperature of nichrome in degree C
Ta=20;//Temperature of surrounding air in degree C
h=1150;//Outside surface coeffient in W/m^2.K
k=17;//Thermal conductivity of nichrome in W/m.K
L=1;//Length of heater in m

//CALCULATIONS
d=(Q/((T-Ta)*3.14*h))*1000;//Diameter of nichrome wire in mm
A=(3.14*d*d)/4;//Area of the wire in m^2
R=((p*10^-8*L)/A);//Resistance of the wire in ohm
I=sqrt(Q/R)/1000;//Rate of current flow in A

//OUTPUT
mprintf('Diameter of nichrome wire is %3.4f mm \n Rate of current flow is %i A',d,I)

//=================================END OF PROGRAM==============================

//Chapter-5, Example 5.15, Page 192
//=============================================================================
clc
clear


//INPUT DATA
Ti=250;//Temperature of aluminium slab in degree C
Tc=50;//Convective environment temperature in degree C
h=500;//Heat transfer coefficient in W/m^2.K
x=0.05;//Depth of the plane in m
t=(1*3600);//Time in s
k=215;//Thermal conductivity in W/m.K
a=(8.4*10^-5);//Thermal diffusivity in m^2/h

//CALCULATIONS
X=(h*sqrt(a*t))/k;//X for calculating Temperature
Y=(x/(2*sqrt(a*t)));//Y for calculating Temperature
Z=0.62;//From Fig. 5.16 on page no.193
T=(Z*(Tc-Ti)+Ti);//Temperature at a depth of 5 cm after 1 hour in degree C

//OUTPUT
mprintf('Temperature at a depth of 5 cm after 1 hour is %3.0f degree C',T)

//=================================END OF PROGRAM==============================

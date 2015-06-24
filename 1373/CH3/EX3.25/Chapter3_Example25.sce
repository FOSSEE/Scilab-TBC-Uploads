//Chapter-3, Example 3.25, Page 95
//=============================================================================
clc
clear

//INPUT DATA
Q=300;//Heat produced by the oranges in W/m^2
s=0.08;//Size of the orange in m
k=0.15;//Thermal conductivity of the sphere in W/m.K

//CALCULATIONS
q=(3*Q)/(s/2);//Heat flux in W/m^2
Tc=10+((q*(s/2)^2)/(6*k));//Temperature at the centre of the sphere in degree C

//OUTPUT
mprintf('Temperature at the centre of the orange is %i degree C',Tc)

//=================================END OF PROGRAM==============================

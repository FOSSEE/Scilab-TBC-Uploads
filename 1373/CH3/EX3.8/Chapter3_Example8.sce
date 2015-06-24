//Chapter-3, Example 3.8, Page 63
//=============================================================================
clc
clear

//INPUT DATA
L1=0.5;//Thickness of the wall in m
k1=1.4;//Thermal conductivity in W/m.K
k2=0.35;//Thermal conductivity of insulating material in W/m.K
q=1450;//Heat loss per square metre in W
T=[1200,15];//Inner and outer surface temperatures in degree C

//CALCULATIONS
L2=(((T(1)-T(2))/q)-(L1/k1))*k2;;//Thickness of the insulation required in m

//OUTPUT
mprintf('Thickness of the insulation required is %3.3f m',L2)

//=================================END OF PROGRAM==============================

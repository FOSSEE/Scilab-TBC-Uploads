//Chapter-5, Illustration 5, Page 253
//Title: Air Compressors
//=============================================================================
clc
clear

//INPUT DATA
D=0.2;//Bore in m
L=0.3;//Stroke in m
lc=0.015;//Linear clearance in m
P1=1;//Pressure at point 1 in bar
P2=7;//Pressure at point 2 in bar
n=1.25;//Adiabatic gas constant

//CALCULATIONS
V3=(3.147*(D^2)*lc)/4;//Clearance volume in m^3
Vs=(3.147*(D^2)*L)/4;//Stoke volume in m^3
C=V3/Vs;//Clearance ratio
nv=(1+C-(C*((P2/P1)^(1/n))))*100;//Volumetric efficiency
DV=(nv*Vs)/100;//Volume of air taken in (m^3)/stroke

//OUTPUT
mprintf('Theoretical volume of air taken in per stroke is %3.6f (m^3)/stroke',DV)








//==============================END OF PROGRAM=================================

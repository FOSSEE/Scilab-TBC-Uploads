//Chapter-14, Example 14.1, Page 574
//=============================================================================
clc
clear

//INPUT DATA
D=0.025;//Diameter of the cylinder in m
R=(2*10^-6);//Rate of sublime in kg/s
C=(6*10^-6);//Saturated vapour concentration in kmol/m^3
W=128;//Molecular weight in kg/kmol

//CALCULATIONS
q=(R/W);//Molar transfer rate in k.mol/sm
h=(q/(%pi*D*C));//Convective mass transfer coefficient in m/s

//OUTPUT
mprintf('Convective mass transfer coefficient is %3.3f m/s',h)

//=================================END OF PROGRAM==============================

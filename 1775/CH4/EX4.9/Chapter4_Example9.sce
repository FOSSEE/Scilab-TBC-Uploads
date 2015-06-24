//Chapter-4, Illustration 9, Page 172
//Title: Steam Nozzles and Steam Turbines
//=============================================================================
clc
clear

//INPUT DATA
P1=10;//Pressure at point 1 in bar
T1=200;//Temperature at point 1 in oC
P2=5;//Pressure at point 2 in bar
n=1.3;//Adiabatic gas constant
h1=2830;//Enthalpy at P1 in kJ/kg
ht=2710;//Enthalpy at point Pt in kJ/kg
vt=0.35;//Specific volume at Pt in m^3/kg
m=3;//Nozzle flow in kg/s

//CALCULATIONS
x=n/(n-1);//Ratio
Pt=((2/(n+1))^x)*P1;//Throat pressure in bar
Ct=sqrt(2000*(h1-ht));//Throat velocity in m/s
At=(m*vt)/Ct;//Throat area in m^2

//OUTPUT
mprintf('Since throat pressure is greater than exit pressure,nozzle used is convergent-divergent nozzle \n Minimum area of nozzle required is %3.5f m^2',At)





//==============================END OF PROGRAM=================================

//Chapter-4, Illustration 8, Page 171
//Title: Steam Nozzles and Steam Turbines
//=============================================================================
clc
clear

//INPUT DATA
P1=3.5;//Dry saturated steam in bar
P2=1.1;//Exit pressure in bar
At=4.4;//Throat area in cm^2
h1=2731.6;//Enthalpy at P1 in kJ/kg
v1=0.52397;//Specific volume at P1 in m^3/kg
n=1.135;//Adiabatic gas constant
ht=2640;//Enthalpy at Pt in kJ/kg
vt=0.85;//Specific volume at throat in m^3/kg
h2=2520;//Enthalpy at P2 in kJ/kg
v2=1.45;//Specific volume at P2 in m^3/kg

//CALCULATIONS
x=n/(n-1);//Ratio
Pt=((2/(n+1))^x)*P1;//Throat pressure in bar
Ct=sqrt(2000*(h1-ht));//Throat velocity in m/s
mmax=((At*Ct*(10^-4))/vt)*60;//Maximum discharge in kg/min
C2=sqrt(2000*(h1-h2));//Exit velocity in m/s
A2=((mmax*v2)/(C2*60))*(10^6);//Exit area in mm^2

//OUTPUT
mprintf('Maximum discharge is %3.3f kg/min \n Exit area is %3.2f mm^2',mmax,A2)




//==============================END OF PROGRAM=================================

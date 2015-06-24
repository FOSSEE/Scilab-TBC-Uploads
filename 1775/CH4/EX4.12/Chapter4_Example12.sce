//Chapter-4, Illustration 12, Page 174
//Title: Steam Nozzles and Steam Turbines
//=============================================================================
clc
clear

//INPUT DATA
P1=9;//Pressure at point 1 in bar
P2=1;//Pressure at point 2 in bar
Dt=0.0025;//Throat diameter in m
nN=0.9;//Nozzle efficiency
n=1.135;//Adiabatic gas consstant
h1=2770;//Enthalpy at point 1 in kJ/kg
ht=2670;//Throat enthlapy in kJ/kg
h3=2400;//Enthlapy at point 2 in kJ/kg
x2=0.96;//Dryness fraction 2
vg2=0.361;//Specific volume in m^3/kg

//CALCULATIONS
x=n/(n-1);//Ratio
Pt=((2/(n+1))^x)*P1;//Throat pressure in bar
Ct=sqrt(2000*(h1-ht)*nN);//Throat velocity in m/s
At=(3.147*2*(Dt^2))/4;//Throat area in m^2
vt=x2*vg2;//Specific volume at throat in m^3/kg
m=(At*Ct)/vt;//Mass flow rate of steam in kg/s
hact=nN*(h1-h3);//Actual enthalpy drop in kJ/kg
C2=sqrt(2000*hact);//Exit velocity of steam in m/s

//OUTPUT
mprintf('Quantity of steam used per second is %3.3f kg/s \n Exit velocity of steam is %3.2f m/s',m,C2)




//==============================END OF PROGRAM=================================

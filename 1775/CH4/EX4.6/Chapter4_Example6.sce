//Chapter-4, Illustration 6, Page 169
//Title: Steam Nozzles and Steam Turbines
//=============================================================================
clc
clear

//INPUT DATA
m=14;//Mass flow rate of steam in kg/s
P1=3;//Pressure of Steam in MN/(m^2)
T1=300;//Steam temperature in oC
h1=2990;//Enthalpy at point 1 in kJ/kg
h2s=2630;//Enthalpy at point 2s in kJ/kg
ht=2850;//Enthalpy at point t in kJ/kg
n=1.3;//Adiabatic gas constant
C2=800;//Exit velocity in m/s
v2=0.4;//Specific volume at exit in (m^3)/kg

//CALCULATIONS
x=n/(n-1);//Ratio
Pt=((2/(n+1))^x)*P1;//Temperature at point t in MN/(m^2)
h2=h1-((C2^2)/2000);//Exit enthalpy in kJ/kg
nN=((h1-h2)/(h1-h2s))*100;//Nozzle efficiency
A2=((m*v2)/C2)*(10^6);//Exit area in (mm^2)
Ct=sqrt(2000*(h1-ht));//Throat velocity in m/s

//OUTPUT
mprintf('Nozzle efficiency is %3.1f percent \n Exit area is %3.0f (mm^2) \n Throat velocity is %3.0f m/s',nN,A2,Ct)




//==============================END OF PROGRAM=================================

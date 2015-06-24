//Chapter-4, Illustration 7, Page 170
//Title: Steam Nozzles and Steam Turbines
//=============================================================================
clc
clear

//INPUT DATA
P1=10;//Pressure at point 1 in bar
P2=0.5;//Pressure at point 2 in bar
h1=3050;//Enthalpy at point 1 in kJ/kg
h2s=2480;//Enthalpy at point 2s in kJ/kg
ht=2910;//Enthalpy at throat in kJ/kg
n=1.3;//Adiabatic gas constant
r=0.1;//Total available heat drop
v1=0.258;//Specific volume at point 1 in (m^3)/kg
h2f=340.6;//Enthalpy for exit pressure from steam tables in kJ/kg
hfg=2305.4;//Enthalpy for exit pressure from steam tables in kJ/kg
m=0.5;//Mass flow rate in kg/s

//CALCULATIONS
x=n/(n-1);//Ratio
Pt=((2/(n+1))^x)*P1;//Temperature at throat in bar
h2=h2s+(r*(h1-h2s));//Enthalpy at point 2 in kJ/kg
vt=((P1/Pt)^(1/n))*v1;//Specific volume at throat in (m^3)/kg
v2=((P1/P2)^(1/n))*v1;//Specific volume at point 2 in (m^3)/kg
Ct=sqrt(2000*(h1-ht));//Throat velocity in m/s
At=((m*vt)/Ct)*(10^6);//Throat area in (mm^2)
C2=sqrt(2000*(h1-h2));//Exit velocity in m/s
A2=((m*v2)/C2)*(10^6);//Exit area in (mm^2)
x2=((h2-h2f)/hfg)*100;//Steam quality at exit

//OUTPUT
mprintf('Throat area is %3.0f (mm^2) \n Exit area is %3.0f (mm^2) \n Steam quality at exit is %3.0f percent',At,A2,x2)






//==============================END OF PROGRAM=================================

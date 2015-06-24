//Chapter-4, Illustration 4, Page 165
//Title: Steam Nozzles and Steam Turbines
//=============================================================================
clc
clear

//INPUT DATA
P1=2.2;//Pressure at entry in MN/(m^2)
T1=533;//Temperature at entry in K
P2=0.4;//Pressure at exit in MN/(m^2)
m=11;//mass flow rate of steam in kg/s
n=0.85;//Efficiency of expansion
h1=2940;//Enthalpy at entrance in kJ/kg from Moiller chart
ht=2790;//Enthalpy at throat in kJ/kg from Moiller chart
h2s=2590;//Enthalpy below exit level in kJ/kg from Moiller chart
vt=0.16;//Throat volume in (m^3)/kg
v2=0.44;//Volume at exit in (m^3)/kg

//CALCULATIONS
Ct=(2000*(h1-ht))^0.5;//Throat velocity in m/s
h2=ht-(0.85*(ht-h2s));//Enthalpy at exit in kJ/kg
C2=(2000*(h1-h2))^0.5;//Exit velocity in m/s
At=((m*vt)/Ct)*(10^6);//Area of throat in (mm^2)
A2=((m*v2)/C2)*(10^6);//Area of exit in (mm^2)

//OUTPUT
mprintf('Throat velocity is %3.0f m/s \n Exit velocity is %3.0f m/s \n Throat area is %3.0f (mm^2) \n Exit area is %3.0f (mm^2) \n',Ct,C2,At,A2)




//==============================END OF PROGRAM=================================

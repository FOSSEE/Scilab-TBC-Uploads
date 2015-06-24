//Chapter-4, Illustration 27, Page 222
//Title: Steam Nozzles and Steam Turbines
//=============================================================================
clc
clear

//INPUT DATA
P0=800;//Steam pressure in kPa
T0=900;//Steam temperature in K
a1=70;//Nozzle angle in degrees
ns=0.85;//Steam efficiency
m=75;//Mass flow rate of steam in kg/s
R=0.5;//Degree of reaction
U=160;//Blade speed in m/s

//CALCULATIONS
C1=U/sind(a1);//Steam speed in m/s
Ca=C1*cosd(a1);//Axial velocity in m/s
b1=0;//Blade angle at inlet from velocity triangle in degrees
b2=a1;//Blade angle at exit in degrees
a2=b1;//Nozzle angle in degrees
W=(m*(U^2))/(10^6);//Power developed in MW
Dhs=(W*1000)/(ns*m);//Isentropic enthalpy drop in kJ/kg

//OUTPUT
mprintf('Rotor blade angles are %3.0f degrees and %3.0f degrees \n Power developed is %3.2f MW \n Isentropic enthalpy drop is %3.2f kJ/kg',b1,b2,W,Dhs)








//==============================END OF PROGRAM=================================

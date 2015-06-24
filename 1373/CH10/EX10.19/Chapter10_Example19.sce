//Chapter-10, Example 10.19, Page 433
//=============================================================================
clc
clear

//INPUT DATA
e=0.03;//Emissivity of silver
T2=-153+273;//Temperature of the outer surface of the inner wall in K
T1=27+273;//Temperature of the inner surface of the outer wall in K
D1=0.42;//Diamter of first sphere in m
D2=0.6;//Diamter of the second sphere in m
V=220;//Rate of vapourization in kJ/kg

//CALCULATIONS
e1=(1/((1/e)+((D1/D2)^2*((1/e)-1))));//Equivalent emissivity
A=(4*3.14*(D1/2)^2);//Area in m^2
Q=(e1*A*5.67*10^-8*(T1^4-T2^4))/(1000/3600);//Radiation heat transfer through walls into the vessel in kJ/h
R=(Q/V);//Rate of evaporation in kg/h

//OUTPUT
mprintf('Radiation heat transfer through walls into the vessel is %3.3f kJ/h \nRate of evaporation of liqiud oxygen is %3.4f kg/h',Q,R)

//=================================END OF PROGRAM==============================

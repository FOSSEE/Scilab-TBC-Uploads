//Chapter-2, Illustration 10, Page 66
//Title: Gas Power Cycles
//=============================================================================
clc
clear

//INPUT DATA
rv=20;//Compression ratio
P1=95;//Pressure at point 1 in kPa
T1=293;//Temperature at point 1 in K
T3=2200;//Temperature at point 3 in K
y=1.4;//Ratio of specific heats
R=287;//Universal gas constant in J/kg-K
Cp=1.005;//Specific heat at constant pressure in kJ/kg-K

//CALCULATIONS
P2=P1*(rv^y);//Pressure at point 2 in kPa
T2=T1*(rv^(y-1));//Temperature at point 2 in K
v2=(R*T2)/(P2*1000);//Specific volume at point 2 in (m^3)/kg
v3=v2*(T3/T2);//Specific volume at point 3 in (m^3)/kg
rc=v3/v2;//Cut-off ratio
nth=(1-(((rc^y)-1)/((rv^(y-1))*y*(rc-1))))*100;//Thermal efficiency
q23=Cp*(T3-T2);//Heat flow between points 2 and 3 in kJ/kg
wnet=(nth*q23)/100;//Net workdone in kJ/kg
MEP=wnet/(v2*(rv-1));//Mean effective pressure in kPa

//OUTPUT
mprintf('Thermal efficiency is %3.1f percent \n Mean effective pressure is %3.2f kPa',nth,MEP)






//==============================END OF PROGRAM=================================

//Chapter-2, Illustration 7, Page 62
//Title: Gas Power Cycles
//=============================================================================
clc
clear

//INPUT DATA
rv=16;//Compression ratio
P1=0.1;//Pressure at point 1 in MPa
T1=288;//Temperature at point 1 in K
T3=1753;//Temperature at point 3 in K
y=1.4;//Ratio of specific heats
Cp=1.005;//Specific heat at constant pressure in kJ/kg-K
R=0.287;//Universal gas constant in kJ/kg-K

//CALCULATIONS
T2=T1*(rv^(y-1));//Temperature at point 2 in K
rc=T3/T2;//Cut-off ratio
q1=Cp*(T3-T2);//Heat supplied in kJ/kg
nth=(1-(((rc^y)-1)/((rv^(y-1))*y*(rc-1))))*100;//Cycle efficiency
wnet=(q1*nth)/100;//Net work done in kJ/kg
v1=(R*T1)/(P1*1000);//Speific volume at point 1 in (m^3)/kg
v2=v1/rv;//Speific volume at point 2 in (m^3)/kg
MEP=wnet/(v1-v2);//Mean effective pressure in kPa

//OUTPUT
mprintf('Cut-off ratio is %3.2f \n Heat supplied is %3.1f kJ/kg \n Cycle efficiency is %3.1f percent \n Mean effective pressure is %3.2f kPa',rc,q1,nth,MEP)




//==============================END OF PROGRAM=================================

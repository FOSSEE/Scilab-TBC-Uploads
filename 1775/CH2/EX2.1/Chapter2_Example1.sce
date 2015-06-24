//Chapter-2, Illustration 1, Page 55
//Title: Gas Power Cycles
//=============================================================================
clc
clear

//INPUT DATA
P1=0.1;//Pressure of air supplied in MPa
T1=308;//Temperature of air supplied in K
rv=8;//Compression ratio
q1=2100;//Heat supplied in kJ/kg
Cp=1.005;//Specific heat at constant pressure in kJ/kg-K
Cv=0.718;//Specific heat at constant volume in kJ/kg-K
R=0.287;//Universal gas constant in kJ/kg-K

//CALCULATIONS
y=Cp/Cv;//Ratio of specific heats
n=(1-(1/(rv^(y-1))))*100;//Cycle efficiency
v1=(R*T1)/(P1*1000);//Specific volume at point 1 in (m^3)/kg
v2=v1/rv;//Specific volume at point 2 in (m^3)/kg
T2=T1*(rv^(y-1));//Temperature at point 2 in K
T3=(q1/Cv)+T2;//Temperature at point 3 in K
P2=P1*(rv^y);//Pressure at point 2 in MPa
P3=P2*(T3/T2);//Pressure at point 3 in MPa
wnet=(q1*n)/100;//Net workdone in J/kg
MEP=(wnet/(v1-v2))/1000;//Mean effective pressure in MPa

//OUTPUT
mprintf('Maximum pressure of the cycle is %3.3f MPa \n Maximum temperature of the cycle is %3.0f K \n Cycle efficiency is %3.1f percent \n Mean effective pressure is %3.3f MPa',P3,T3,n,MEP)





//==============================END OF PROGRAM=================================

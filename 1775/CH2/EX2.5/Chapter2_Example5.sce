//Chapter-2, Illustration 5, Page 60
//Title: Gas Power Cycles
//=============================================================================
clc
clear

//INPUT DATA
rv=8;//Compression ratio
P1=95;//Pressure at point 1 in kPa
T1=300;//Temperature at point 1 in K
q23=750;//Heat transferred during constant volume heat addition process in kJ/kg
y=1.4;//Ratio of specific heats
Cv=0.718;//Specific heat at constant volume in kJ/kg-K
R=287;//Universal gas constant in J/kg-K

//CALCULATIONS
T2=T1*(rv^(y-1));//Temperature at point 2 in K
P2=P1*(rv^y);//Pressure at point 2 in kPa
T3=(q23/Cv)+T2;//Temperature at point 3 in K
P3=P2*(T3/T2);//Pressure at point 3 in kPa
nth=(1-(1/(rv^(y-1))))*100;//Thermal efficiency
Wnet=(nth*q23)/100;//Net work output in kJ/kg
v1=(R*T1)/(P1*1000);//Speific volume at point 1 in (m^3)/kg
MEP=Wnet/(v1*(1-(1/rv)));//Mean effective pressure in kPa

//OUTPUT
mprintf('Pressure at the end of heat addition process is %3.1f kPa \n Temperature at the end of heat addition process is %3.1f K \n Net work output is %3.2f kJ/kg \n Thermal efficiency is %3.2f percent \n Mean effective pressure is %3.0f kPa',P3,T3,Wnet,nth,MEP)







//==============================END OF PROGRAM=================================

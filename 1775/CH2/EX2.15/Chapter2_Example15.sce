//Chapter-2, Illustration 15, Page 72
//Title: Gas Power Cycles
//=============================================================================
clc
clear

//INPUT DATA
P1=1;//Pressure at point 1 in bar
P3=70;//Pressure at point 3 in bar
T1=310;//Temperature at point 1 in K
rv=10;//Compression ratio
y=1.4;//Ratio of specific heats
qin=2805;//Heat added in kJ/kg
m=1;//Mass of air in kg
R=287;//Universal gas constant in J/kg
Cv=0.718;//Speific heat at constant volume in kJ/kg-K
Cp=1.005;//Speific heat at constant pressure in kJ/kg-K

//CALCULATIONS
V1=(m*R*T1)/(P1*(10^5));//Volume at point 1 in m^3
T2=T1*(rv^(y-1));//Temperature at point 2 in K
P2=P1*(rv^y);//Pressure at point 2 in K
T3=T2*(P3/P2);//Temperature at point 3 in K
q23=Cv*(T3-T2);//Heat supplied at constant volume in kJ/kg
q34=qin-q23;//Heat supplied at constant pressure in kJ/kg
T4=(q34/Cp)+T3;//Temperature at point 4 in K
V2=V1/rv;//Volume at point 2 in m^3
V4=V2*(T4/T3);//Volume at point 4 in m^3
V5=V1;//Volume at point 5 in m^3
T5=T4*((V4/V5)^(y-1));//Temperature at point 5 in K
qout=Cv*(T5-T1);//Heat rejected in kJ/kg
nth=(1-(qout/qin))*100;//Thermal efficiency
W=qin-qout;//Workdone in kJ/kg
Vs=V1*(1-(1/rv));//Swept volume in (m^3)/kg
MEP=(W/Vs)/100;//Mean effective pressure in bar

//OUTPUT
mprintf('Mean effective pressure is %3.2f bar \n Thermal efficiency is %3.2f percent',MEP,nth)






//==============================END OF PROGRAM=================================

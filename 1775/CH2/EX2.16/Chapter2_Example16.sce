//Chapter-2, Illustration 16, Page 74
//Title: Gas Power Cycles
//=============================================================================
clc
clear

//INPUT DATA
P1=1;//Pressure at point 1 in bar
T1=298;//Temperature at point 1 in K
P2=3;//Pressure at point 2 in bar
T3=923;//Temperature at point 3 in K
y=1.4;//Ratio of specific heats
Cp=1.005;//Speific heat at constant pressure in kJ/kg-K

//CALCULATIONS
x=(y-1)/y;//Ratio
rp=P2/P1;//Pressure ratio
nth=(1-(1/(rp^x)))*100;//Cycle efficiency
T2=T1*(rp^x);//Temperature at point 2 in K
q1=Cp*(T3-T2);//Heat supplied in kJ/kg
Wout=(nth*q1)/100;//Work output in kJ/kg
q2=q1-Wout;//Heat rejected in kJ/kg
T4=T3*((1/rp)^x);//Temperature at point 4 in K

//OUTPUT
mprintf('Cycle efficiency is %3.2f percent \n Heat supplied to air is %3.1f kJ/kg \n Work available at the shaft is %3.2f kJ/kg \n Heat rejected in the cooler is %3.2f kJ/kg \n Turbine exit temperature is %3.2f K',nth,q1,Wout,q2,T4)






//==============================END OF PROGRAM=================================

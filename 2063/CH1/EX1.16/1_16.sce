clc
clear
//Input data
r=16;//Compression ratio for the air standard diesel cycle
Q1=2200;//Heat added in kJ/kg
T4=1500;//Temperature at the end of isentropic expansion in K
T1=310;//Lowest temperature in the cycle in K
m=0.3;//Air flow rate in kg/sec
Cv=0.714;//Specific heat at constant volume in kJ/kg K

//Calculations
Q2=Cv*(T4-T1);//Heat rejected in kJ/kg
n=((Q1-Q2)/Q1)*100;//Efficiency in percent
P=m*(Q1-Q2);//Power developed in kW

//Output
printf('(a)Thermal efficiency is %3.2f percent\n (b)Power developed is %3.0f kW',n,P)

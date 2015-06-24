clc
clear
//Input data
P1=1;//Pressure at the beginning of compression stroke of an oil engine working on a air standard dual cycle in bar
T1=303;//Temperature at the beginning of compression stroke in K
P3=40;//The maximum pressure reached in bar
T4=1673;//Maximum temperature reached in K
P4=P3;//Pressure at the start of constant pressure heat addition in bar
Cp=1.004;//Specific heat at constant pressure in kJ/kg K
Cv=0.717;//Specific heat at constant volume in kJ/kg K
r1=10;//Compression ratio

//Calculations
r=Cp/Cv;//Isentropic ratio
T2=T1*r1^(r-1);//Temperature at the end of compression stroke in K
P2=P1*r1^r;//Pressure at the end of compression stroke in bar
T3=T2*(P3/P2);//Temperature at the end of constant volume heat addition in K
rho=T4/T3;//Cut off ratio

//Output
printf('(a)Temperature at the end of constant volume heat addition is %3.1f K\n (b)Cut off ratio is %3.3f',T3,rho)

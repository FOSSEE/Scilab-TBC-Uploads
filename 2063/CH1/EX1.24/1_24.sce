clc
clear
//Input data
P1=1;//pressure at the beginning of compression stroke in bar
T1=298;//Temperature at the beginning of compression stroke in K
P3=38;//Pressure at the end of constant volume heat addition in bar
T4=1573;//Temperature at the end of constant volume heat addition in K
r=9.5;//Compression ratio
Cp=1.004;//Specific heat of air at constant pressure
Cv=0.717;//Specific heat of air at constant volume

//Calculations
r1=Cp/Cv;//Isentropic ratio
T2=T1*r^(r1-1);//Temperature at the end of compression stroke in K
P2=P1*r^r1;//Pressure at the end of compression stroke in bar
T3=T2*(P3/P2);//Temperature at the end of constant volume heat addition in K
rho=T4/T3;//Cut off ratio
T5=T4*(rho/r)^(r1-1);//Temperature at the end of expansion stroke in K
Qs=Cv*(T3-T2)+Cp*(T4-T3);//Heat supplied per kg in kJ
Qr=Cv*(T5-T1);//Heat rejected per kg in kJ
W=Qs-Qr;//Work done per kg of air in kJ
n=(W/Qs)*100;//Efficiency of the air standard dual cycle in percent

//Output
printf('(a)The work done per kg of air is %3.1f kJ\n (b)Cycle efficiency is %3.2f percent',W,n)

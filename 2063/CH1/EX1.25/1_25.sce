clc
clear
//Input data
r=10.5;//Compression ratio
P3=65;//Maximum pressure in bar
P4=P3;//Pressure at the end of constant volume heat addition in bar
qs=1650;//Heat supplied in kJ/kg
P1=1;//Pressure at the beginning of compression stroke in bar
T1=368;//Temperature at the beginning of compression stroke in K
Cp=1.004;//Specific heat of air at constant pressure in kJ/kg K
Cv=0.717;//Specific heat of air at constant volume in kJ/kg K

//Calculations
r1=Cp/Cv;//Compression ratio
P2=P1*r^r1;//Pressure at the end of compression stroke in bar
T2=T1*r^(r1-1);//Temperature at the end of compression stroke in K
T3=T2*(P3/P2);//Temperature at the end of constant volume heat addition in K
qv=Cv*(T3-T2);//Heat supplied at constant volume in kJ/kg
qp=qs-qv;//Heat supplied at constant pressure in kJ/kg
T4=(qp/Cp)+T3;//Temperature at the end of constant volume heat addition in K
rho=T4/T3;//Cut off ratio
T5=T4*(rho/r)^(r1-1);//Temperature at the end of expansion stroke in K
P5=P4*(rho/r)^r1;//Pressure at the end of expansion stroke in K
q=Cv*(T5-T1);//Heat rejected in kJ/kg
n=((qs-q)/qs)*100;//Efficiency of the cycle in percent

//Output
printf('(a)Pressure at the end of compression stroke is %3.1f bar\n (b)Temperature at the end of compression stroke is %3.1f K\n (c)Temperature at the end of constant volume heat addition is %3.1f K\n (d)Temperature at the end of constant pressure heat addition is %3.2f K\n (e)Temperature at the end of expansion stroke is %3.2f K\n (e)Pressure at the end of expansion stroke is %3.2f bar\n (f)Efficiency of the cycle is %3.2f percent',P2,T2,T3,T4,T5,P5,n)

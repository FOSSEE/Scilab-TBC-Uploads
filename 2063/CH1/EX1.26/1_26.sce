clc
clear
//Input data
r=8.5;//Compression ratio
e=5.5;//Expansion ratio
P1=1;//Pressure at the beginning of compression stroke in bar
T1=313;//Temperature at the beginning of compression stroke in K
n=1.3;//polytropic constant
Cp=1.004;//Specific heat of air at constant pressure in kJ/kg K
Cv=0.717;//Specific heat of air at constant volume in kJ/kg K

//Calculations
rho=r/e;//Cut off ratio
T2=T1*r^(n-1);//Temperature at the end of compression stroke in K
T3=(2*Cv*T2)/(2*Cv-Cp*rho+1);//Temperature at the end of constant volume heat addition in K
T4=rho*T3;//Temperature at the end of constant pressure heat addition in K
a=T3/T2;//Pressure ratio i.e.,P3/P2
n1=(1-(1/r^(n-1))*(a*rho^n-1)/((a-1)+(n*a*(rho-1))))*100;//Air standard efficiency in percent

//Output
printf('The air standard efficiency is %3.2f percent',n1)

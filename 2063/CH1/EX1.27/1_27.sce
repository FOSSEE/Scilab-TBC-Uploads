clc
clear
//Input data
P1=1;//Initial pressure in a compression engine working on a dual combustion engine in bar
T1=300;//Initial Temperature in K
P2=25;//Pressure at the end of compression stroke in bar
Q=400;//Heat supplied per kg of air during constant volume heating in kJ/kg
P5=2.6;//Pressure at the end of isentropic expansion in bar
Cp=1.005;//Specific heat of air at constant pressure in kJ/kg K
Cv=0.715;//Specific heat of air at constant volume in kJ/kg K

//Calculations
r=Cp/Cv;//Isentropic index
r1=(P2/P1)^(1/r);//Compression ratio
T2=T1*(r1)^(r-1);//Temperature at the end of compression stroke in K
T3=(Q/Cv)+T2;//Temperature at the end of constant volume heat addition in K
a=T3/T2;//Pressure ratio
P3=a*P2;//Pressure ratio at the end of constant volume heat addition in bar
P4=P3;//Pressure at the end of constant pressure heat addition in bar
x=(P5/P4)^(1/r);//Ratio of volume at the end of constant pressure heat addition to the volume at the end of isentropic expansion
rho=x*(r1);//Cut off ratio
n=(1-(1/r1^(r-1))*(a*rho^r-1)/((a-1)+(r*a*(rho-1))))*100;//Air standard efficiency in percent of a dual combustion engine

//Output
printf('The ideal thermal efficiency is %3.1f percent',n)

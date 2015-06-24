clc
clear
//input data
W=4.5//Power absorbed by the compressor in MW
m=20//Amount of air delivered in kg/s
P01=1//Stagnation pressure of air at inlet in bar
T01=288//Stagnation temperature of air at inlet in K
np=0.9//Polytropic efficiency of compressor
dT0=20//Temperature rise in first stage in K
R=287//The universal gas constant in J/kg.K
Cp=1.005//The specific heat of air at constant pressure in kJ/kg.K
r=1.4//The ratio of specific heats of air


//calculations
T02=T01+dT0//Stagnation temperature of air at outlet in K
T0n1=((W*10^3)/(m*Cp))+T01//The temperature of air leaving compressor stage in K
P0n1=P01*(T0n1/T01)^((np*r)/(r-1))//Pressure at compressor outlet in bar
P1=(T02/T01)^((np*r)/(r-1))//The pressure ratio at the first stage 
N=((log10(P0n1/P01)/log10(P1)))//Number of stages 
T0n1T01=(P0n1/P01)^((r-1)/(np*r))//The temperature ratio at the first stage
T0n1sT01=(P0n1/P01)^((r-1)/r)//The isentropic temperature ratio at the first stage
nc=((T0n1sT01-1)/(T0n1T01-1))//The overall isentropic efficiency

//output
printf('(a)Pressure at compressor outlet is %3.2f bar\n(b)Number of stages is %3.f\n(c)The overall isentropic efficiency is %3.3f',P0n1,N,nc)

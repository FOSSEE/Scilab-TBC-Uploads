clc
clear
//Input data
T1=293;//Initial temperature of a gas turbine plant in K
P1=1;//Initial pressure in bar
P2=4.5;//Pressure after the compression in bar
nc=80;//Isentropic efficiency of a compressor in percentage
T3=923;//Temperature of the gas whose properties may be assumed to resemble with those of air in the combustion chamber in K
deltaP=0.1;//Pressure drop in a combustion chamber in bar
nt=20;//Thermal efficiency of the plant in percentage
r=1.4;//Isentropic index
P4=1;//Pressure at point 4 in bar

//Calculations
P3=P2-deltaP;//Pressure at point 3 in bar
T21=T1*(P2/P1)^((r-1)/r);//Temperature after the compression process in K
T2=(T21-T1)/(nc/100)+T1;//Temperature at the point 2 in K
T41=T3/(P3/P4)^((r-1)/r);//Temperature at the end of expansion process in K
Ac=T2-T1;//Work done by the compressor per kg of air per specific heat at constant pressure Ac=Wc/Cp
At=T3;//Work done by the turbine per kg of air per specific heat at constant pressure At=Wt/Cp
An=At-Ac;//Net work done per kg of air
Bs=T3-T2;//Heat supplied per kg of air per specific heat at constant pressure Bs=qs/Cp;qs=heat supplied
T4=An-((nt/100)*Bs);//Temperature at point 4 in K
nT=((T3-T4)/(T3-T41))*100;//Isentropic efficiency of the turbine in percentage

//Output
printf('The isentropic efficiency of the turbine is %3.2f percent',nT)

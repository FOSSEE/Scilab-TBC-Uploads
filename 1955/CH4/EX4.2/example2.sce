clc
clear
//input data
P01=1//Atmospheric pressure at inlet in bar
T01=291//Atmospheric temperature at inlet in K
T02=438//Total head temperature in delivery pipe in K 
P02=3.5//Total head pressure in delivery pipe in bar
P2=3//Staic pressure in delivery pipe in bar
R=287//The universal gas constant in J/kg.K
Cp=1005//The specific heat of air at constant pressure in J/kg.K
r=1.4//The ratio of specific heats of air

//calculations 
T02s=T01*(P02/P01)^((r-1)/r)//Total isentropic head temperature in delivery pipe in K 
nc=(T02s-T01)/(T02-T01)//Total head isentropic efficiency
np=((log10(P02/P01))/((r/(r-1))*(log10(T02/T01))))//Polytropic efficiency
T2=T02*(P2/P02)^((r-1)/r)//Static temperature in delivery pipe in K
C2=(2*Cp*(T02-T2))^(1/2)//The air velocity in delivery pipe in m/s

//output
printf('(a)Total head isentropic efficiency is %3.3f\n(b)Polytropic efficiency %3.3f\n(c)The air velocity in delivery pipe is %3.2f m/s',nc,np,C2)

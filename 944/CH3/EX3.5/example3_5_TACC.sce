//example 3.5

clear;
clc;

//given:
n=1;//number of moles of an given ideal gas
T=298;//temperature for the process[K]
V1=8.3;//initial volume of the ideal gas[m3]
V2=16.8;//final volume of the ideal gas[m3]
R=8.314;//universal gas constant[J/K/mol]


//to find the Q,W,H
//where Q is heat absorbed or evolved by the system
//W is the net workdone 
//H is the change in enthalpy of system
W=-2.303*R*T*log10(V2/V1);//[J]
Q=-W;//[J]
disp("H=U+PV ,where U is change in internal energy which is zero due to isothermal process");
disp("PV where V is change in volume of system ,PV=RT & RT==0 since T i.e change in temp is zero for system");
disp("Therefore,the change in enthalpy is 0J");
printf("the workdone by system is %f J",W);
printf("\nthe heat evolved is %f J",Q);

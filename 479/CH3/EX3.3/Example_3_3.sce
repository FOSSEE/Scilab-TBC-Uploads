//Chemical Engineering Thermodynamics
//Chapter 3
//First Law of Thermodynamics

//Example 3.3
clear;
clc;

//Given
P = 1;//constant pressure throughout the process in atm
T1 = 273;//Initial temperature in K
T2 = 373;//Final temperature in K
V1 = 0;//Volume of liquid water or initial volume
V0 = 22.4;//volume of vapour at standard condition in cubic meter
Q = 9.7//Heat of vapourisation in Kcal

//To calculate the work done by the expanding gas and increase in internal energy
//(i)Calculation of work done
V2 = 22.4*(T2/T1)*(P)*(10^-3);//Volume of final vapour in cubic meter
w = P*(V2-V1);//Work done in atm cubic meter
W = w*(1.03*10^4)/427;//Work done in Kcal
mprintf('(i)Work done by the expanding gas is %f Kcal',W);

//(ii)Calculation of change in internal energy
delE = Q-W;
mprintf('\n\n (ii)Increase in internal energy is %f Kcal',delE);
//end
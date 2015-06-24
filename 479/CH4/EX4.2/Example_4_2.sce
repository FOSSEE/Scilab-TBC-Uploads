//Chemical Engineering Thermodynamics
//Chapter 4
//Second Law of Thermodynamics

//Example 4.2
clear;
clc;

//Given
T1 = 373;//Temperature of the saturated steam in K
T2 = 298;//Temperature of the saturated water in K
//To calculate the total change in entropy and hence determine the reversibility of the process

//del_H = del_Q+(V*del_P)
//del_H =del_Q; since it is a constant pressure process

//From steam table,
//enthalpy of saturated steam at 373K is
H1 = 6348.5;// in Kcal/Kg
//enthalpy of saturated liquid water at 373K is
H2 = 99.15;//in Kcal/Kg
Q = H2-H1;//heat rejected in Kcal/Kg
del_S1 = Q/T1;//change in entropy of the system in Kcal/Kg K
del_S2 = Q/T2;//change in entropy of the surronding in Kcal/Kg K
del_St = del_S1+del_S2;//total change in the entropy in Kcal/Kg K
if(del_St == 0)
    mprintf('Process is reversible');
else
    mprintf('Process is irreversible');
end
//end
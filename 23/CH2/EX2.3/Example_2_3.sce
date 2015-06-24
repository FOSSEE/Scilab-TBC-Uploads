clear;
clc;

//Example 2.3
//Caption : Program to find the energy change in a System

//Given values

P_atm=101.3;//Atm Pressure=101.3KPa
V1=0.1;//Volume1=0.1m^3
V2=0.2;//Volume2=0.2m^3

//Solution

del_V=V2-V1;
W_by=P_atm*del_V;
W_on=-W_by;
Q=0;
del_Energy=Q+W_on;//KJ
disp('KJ',del_Energy,'Energy Change')

//End

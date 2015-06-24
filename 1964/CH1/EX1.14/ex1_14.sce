//Chapter-1, Example 1.14, Page 26
//=============================================================================
clc;
clear;
//INPUT DATA
P=100;//power of power station in MW
g=9.81;//gravity constant in m/sec^2
h=200;//effective head of power station in m
n=80;//efficiency of station in percentage
t=10;//operation time of power station 
//CALCULATIONS 
E1=P*t;// energy output from the station in 10 hours measured in MWh
n=n/100;
E2=P*t/n;//energy input to the station in 10 hours measured in MWh
E2=E2*10^6*60*60;//energy input to the station in 10 hours measured in Wsec or joules
//energy input to the station is equal to potential energy supplied by water to station
m=E2/(g*h);//mass in kg of water used
d=1000;//density of water in kg/m^3
V=m/d;//volume of water used in 10 hours
//OUTPUT
mprintf("Thus the volume of water used in 10 hours is %e cubic metre",V);
 

//=================================END OF PROGRAM==============================

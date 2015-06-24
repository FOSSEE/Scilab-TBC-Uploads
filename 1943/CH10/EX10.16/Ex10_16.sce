
clc
clear
//Input data
h=19//Head in m
Q=3//Flow rate in m^3/s
N=600//Speed in rpm
h1=5//Head in m

//Calculations
N1=N/sqrt(h/h1)//Speed in rpm
Q1=Q/sqrt(h/h1)//Discharge in m^3/s

//Output
printf('Speed of the turbine is %3.1f rpm \n Maximum flow rate is %3.1f m^3/s',N1,Q1)

// chapter 13
// example 13.1
// fig. 13.11
// Compute the values of di/dt inductor and the snubber circuit component Rs and Cs
// page-807-808
clear;
clc;
// given
E=400; // in V
di_dt=50; // in A/us
dv_dt=200; // in V/us
// calculate
// since di/dt=E/L, therefore we get
L=E/di_dt; // calculation of 
// since dV/dt=Rs*di/dt, therefore we get
Rs=dv_dt/di_dt; // calculation of 
Rs=10; // assuming the desired values
Cs=0.1; // in uF assuming the desired value
L=E*Rs/(dv_dt);
printf("\nThe value of di/dt inductor is \t\t L=%.f uH",L);
printf("\nThe snubber circuit component are \t Rs=%.f ohm \t Cs=%.1f uF",Rs,Cs);


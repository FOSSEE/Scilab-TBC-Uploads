//Example 1_38
clc;
clear;close;

//Given data: 
R=4;//ohm
L=6*10^-6;//H
C=6*10^-6;//F
V=300;//V
di_by_dt_max=V/L;//A/s
Isc=V/R;//A
dvc_by_dt=R*di_by_dt_max+Isc/C;//V/s
disp(di_by_dt_max,"Maximum permissible value of di/dt(A/s)");
disp(dvc_by_dt,"Maximum permissible value of dv/dt(V/s)");


// Sp_Example 3.4

clear; clc; close;

format('v',6);
// Given data
Nr=4;//poles
La=10.7;//in mH
Lu=1.5;//in mH
i=7;//in A
q=3;//phase

//Calculations
lambda_a=La*10^-3*i;//in Wb/T
lambda_u=lambda_a;//in Wb/T
i2=lambda_u/Lu/10^-3;//in Ampere
Wm=(i2-i)*lambda_u/2;//in Jooules
disp(Wm,"Energy conversion per stroke in Joules : ");
T=Wm*q*Nr/2/%pi;//in N-m
disp(T,"Average Tourque in N-m : ");

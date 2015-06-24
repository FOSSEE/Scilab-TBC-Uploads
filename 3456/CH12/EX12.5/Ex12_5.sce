//Example 12.5
//Infinite Life Design
//Page No. 422
clc;clear;close;

Kt=1.68;               //no unit
q=0.9;                 //no unit
sigma_ed=42000;         //in psi
Cs=0.9;                 //no unit
Cf=0.75;               //no unit
Cz=0.81;                //no unit
Kf=q*(Kt-1)+1;
sigma_e=sigma_ed*Cs*Cf*Cz;
sigma_en=sigma_e/Kf;
printf('\nFatigue Limit = %g psi',sigma_en);

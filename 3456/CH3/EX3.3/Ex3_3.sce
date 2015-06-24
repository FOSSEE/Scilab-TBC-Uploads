//Example 3.3
//Tresca Criterion
//Page No. 81
clc;clear;close;

sigma00=500;           //in MPa
sigma_z=-50;           //in MPa
sigma_y=100;           //in MPa
sigma_x=200;           //in MPa
T_xy=30;           //in MPa
T_yz=0;           //in MPa
T_xz=0;           //in MPa
sigma0=sigma_x-sigma_z;
s=sigma00/sigma0;
printf('\nSince the calculated value of sigma0 = %g MPa, which is less than the yield strength of the aluminium alloy\nThus safety factor is = %g',sigma0,s);

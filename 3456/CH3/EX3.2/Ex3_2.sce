//Example 3.2
//Yielding Criteria for Ductile Metals
//Page No. 78
clc;clear;close;

sigma00=500;           //in MPa
sigma_z=-50;           //in MPa
sigma_y=100;           //in MPa
sigma_x=200;           //in MPa
T_xy=30;           //in MPa
T_yz=0;           //in MPa
T_xz=0;           //in MPa
sigma0=sqrt((sigma_x-sigma_y)^2+(sigma_y-sigma_z)^2+(sigma_z-sigma_x)^2+6*(T_xy^2+T_yz^2+T_xz^2))/sqrt(2);
s=sigma00/sigma0;
printf('\nSince the calculated value of sigma0 = %g MPa, which is less than the yield strength of the aluminium alloy\nThus safety factor is = %g',sigma0,s);

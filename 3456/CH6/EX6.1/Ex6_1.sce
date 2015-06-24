//Example 6.1
//Grain Size Measurement
//Page No. 193
clc;clear;close;

sigma_i=150;              //in MN/m^2
k=0.7;                    //in MN/m^(3/2)
n=6;                      
N_x=2^(n-1);
N=N_x/(0.01)^2;             //in grains/in^2
N=N*10^6/25.4^2;             // in grains/m^2
D=sqrt(1/N);
sigma0=sigma_i+k/D^(1/2);
printf('\nYield Stress = %g MPa',sigma0);

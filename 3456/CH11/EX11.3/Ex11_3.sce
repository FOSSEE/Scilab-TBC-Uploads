//Example 11.3
//Plasticity
//Page No. 361
clc;clear;close;

a=10;                      //in mm
a=a*10^-3;                 //conversion to m
sigma=400;                  //in MPa
sigma0=1500;                //in MPa
rp=sigma^2*a/(2*%pi*sigma0^2);
rp=rp*1000;                      //conversion to mm
K=sigma*sqrt(%pi*a);
K_eff=sigma*sqrt(%pi*a)*sqrt(a+%pi*rp);
printf('\nPlastic zone size = %g mm\nStress Intensity Factor = %g MPa m^(1/2)\n\n\nNote: Calculation Errors in book',rp,K_eff);

//Example 6.4
//Load Transfer
//Page No. 225
clc;clear;close;

sigma_fu=5;                       //in GPa
sigma_fu=sigma_fu*10^9;         //Conversion to Pa
sigma_m=100;                   //in MPa
sigma_m=sigma_m*10^6;        //Conversion to Pa
T0=80;                       //in MPa
T0=T0*10^6;                   //Conversion to Pa
f_f=0.5;                      //no unit
d=100;                          //in um
d=d*10^-6;               //conversion to m
B=0.5;                   //no unit
L=10;                     //in cm
L=L*10^-2;                 //conversion to m
Lc=sigma_fu*d/(2*T0);
sigma_cu=sigma_fu*f_f*(1-Lc/(2*L))+sigma_m*(1-f_f);
sigma_cu=sigma_cu*10^-9;
printf('\nsigma_cu = %g GPa for L=100um\n',sigma_cu);;

L=2;                    //in mm
L=L*10^-3;          //conversion to m
sigma_cu=sigma_fu*f_f*(1-Lc/(2*L))+sigma_m*(1-f_f);
sigma_cu=sigma_cu*10^-9;
printf('sigma_cu = %g GPa for L=2mm',sigma_cu);;

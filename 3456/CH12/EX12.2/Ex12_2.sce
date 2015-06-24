//Example 12.2
//Low Cycle Fatigue
//Page No. 391
clc;clear;close;

sigma_b=75;               //in MPa
e_b=0.000645;              //no unit
e_f=0.3;                   //no unit
E=22*10^4;                 //in MPa
c=-0.6;                    //no unit
d_e_e=2*sigma_b/E;
d_e_p=2*e_b-d_e_e;
N=(d_e_p/(2*e_f))^(1/c)/2;
printf('\nd_e_e = %g\nd_e_p = %g\nNumber of Cycles = %g cycles',d_e_e,d_e_p,N);

//Example 12.3
//Fatigue Crack Proportion
//Page No. 401
clc;clear;close;

ai=0.5;                  //in mm
ai=ai*10^-3;           //conversion to m
sigma_max=180;             //in MPa
Kc=100;                  //MPam^(1/2)
alpha=1.12;                //no unit
p=3;                       //no unit
A=6.9*10^-12;              //in MPam^(1/2)
af=(Kc/(sigma_max*alpha))^2/%pi;
Nf=(af^(1-(p/2))-ai^(1-(p/2)))/((1-p/2)*A*sigma_max^3*%pi^(p/2)*alpha^p);
printf('Fatigue Cycles = %g cycles',Nf);

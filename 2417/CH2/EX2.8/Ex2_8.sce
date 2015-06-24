clear;
clc;
printf("\t\t\tProblem Number 2.8\n\n\n");
// Chapter 2: Work, Energy, and Heat
// Problem 2.8 (page no. 69) 
// Solution

m=10; //Unit:lb //m=Mass
V1=88; //Unit://ft/s V1=Velocity before it is slowed down
V2=10; //Unit;ft/s //V2=Velocity after it is slowed down
gc=32.174; //Unit: (lbm*ft)/(lbf*s^2) //gc is constant of proportionality

KE1=m*V1^2/(2*gc); //The kinetic energy of the body before it is slowed down //Unit:ft*lbf
printf("The kinetic energy of the body before it is slowed down is %f ft*lbf\n",KE1);

KE2=m*V2^2/(2*gc); //The kinetic energy of the body before it is slowed down //Unit:ft*lbf
printf("The kinetic energy of the body before it is slowed down is %f ft*lbf\n",KE2);

KE=KE1-KE2; //KE=Change in kinetic energy //Unit:ft*lbf
printf("Change in kinetic energy is %f ft*lbf",KE);

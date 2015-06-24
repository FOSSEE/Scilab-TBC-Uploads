clc();
clear;
//Given :
T_half = 8 ; // iodine 131 haf life in days
lambda = 0.693/T_half ; // decay constant in decays/day
N0 = 20 ; // mass in mg
t = 48; // time in days
N = N0*exp(-lambda*t); // in mg
printf("Original amount : %d mg \n",N0);
printf("Remaining amount after 48 days : %.3f mg",N);

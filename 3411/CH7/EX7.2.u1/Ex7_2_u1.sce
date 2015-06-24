//Example 7_2_u1
clc();
clear;
//To find the fraction of initial intensity
alpha=-2.2
l=2    //units in KM
//Case (a) when L=2
It_I0=10^(alpha*l/10)
printf("The fraction of initial intensity left when L=2 It/I0=%.3f\n",It_I0)
//Case (b) when L=6
l=6    //units in KM
It_I0=10^(alpha*l/10)
printf("The fraction of initial intensity left when L=6 It/I0=%.3f\n",It_I0)

//Example 7_2_u1
clc();
clear;
//To find the fraction of initial intensity
alpha=-2.2            //units in db/Kilo meters
//When l=2 Kilo meters
l=2    //units in Kilo meters
//Case (a) when L=2 Kilo meters
It_I0=10^(alpha*l/10)
printf("The fraction of initial intensity left when L=2 It/I0=%.3f\n",It_I0)
//Case (b) when L=6 Kilo meters
l=6    //units in Kilo meters
It_I0=10^(alpha*l/10)
printf("The fraction of initial intensity left when L=6 It/I0=%.3f\n",It_I0)

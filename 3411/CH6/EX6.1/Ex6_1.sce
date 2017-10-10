//Example 6_1
clc();
clear;
//To calculate the Electric field of a laser beam
i=10^-3/(3*10^-6)         //units in W/mts^2
c=3*10^8   //units in mts/sec
u=4*10^-7       //units in SI
n=1
E0=sqrt((i*2*c*u)/n)    //units in V/mts
printf("The electric field is E0=%.2f V/m",E0)
//In text book answer is given E0=501 V/m but the correct answer is E0=282.84 V/m 

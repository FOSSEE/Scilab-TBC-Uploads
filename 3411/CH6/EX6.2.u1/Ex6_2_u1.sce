//Example 6_2_u1
clc();
clear;
//To calculate the Electric field of a bulb
w=10       //units in W
i=(100*w)/(4*%pi*10^2)         //Units in W/mts^2
c=3*10^8   //units in mts/sec
u=4*10^-7       //units in SI
n=1
E0=sqrt((i*2*c*u)/n)    //units in V/mts
printf("The electric field of the bulb is E0=%.2f V/mts",E0)
//In text book answer is given E0=2.4 V/m but the correct answer is E0=13.82 V/m 

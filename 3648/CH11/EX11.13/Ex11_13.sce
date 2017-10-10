//Example 11_13
clc();
clear;
//To findout how much heat is lost through it
a=15   //Unis in meter^2
t=30    //Units in K
R=2.2 //Units in Meter^2 K/W
q_t=(a*t)/R    //Units in W
T=3600     //Units in sec
Q=q_t*T       //Units in J
printf("The amount of hea lost is Q=%.1f J",Q)

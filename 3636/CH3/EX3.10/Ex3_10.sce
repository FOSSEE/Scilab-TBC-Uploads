clear;
clc;
J=14.14*10^-14 //current density in A/cm^2
v1=3*10^7 //hole group drift velocities in cm/s
v2=5*10^8 //in cm/s
v3=6*10^8 //in cm/s
q=1.6*10^-19 //in C
n=1000 //number of holes

//Calculation
x=((J/(n*q))-v1-v2-v3)

mprintf("Drift velocity of remaining hole group= %.1e cm s^-1",x)

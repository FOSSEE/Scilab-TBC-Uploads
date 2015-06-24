clc;clear;
//Example 4.1
//Calculation of acceleration,time taken,distance covered and kinetic energy of an accelerating proton

//given values
 m=1.67*10^-27;//mass of proton in kg
 q=1.602*10^-19;//charge of proton in Coulomb
 v1=0;//initial velocity in m/s
 v2=2.5*10^6;//final velocity in m/s
 E=500;//electric field strength in V/m
 //calculation
 a=E*q/m;//acceleration
disp(a,'acceleration of proton in (m/s^2) is:');
t=v2/a;//time
disp(t,'time(in s) taken by proton to reach the final velocity is:');
x=a*t^2/2;//distance
disp(x,'distance (in m)covered by proton in this time is:');
KE=E*q*x;//kinetic energy
disp(KE,'kinetic energy(in J) at the time is:');


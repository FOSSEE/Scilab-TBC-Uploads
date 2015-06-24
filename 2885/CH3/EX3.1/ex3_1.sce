//find the value of threshold voltage
clear;
clc;
//soltion
//given
t1=25;//°C//initial temperature
t2=100;//°C//final temperature
V=2*10^-3;//V per celsius degree//decrease in barrier potential per degree
V0=0.7//V//Potential at normal temperature
Vd=(t2-t1)*V;//decrease in barrier potential
Vt=V0-Vd;//threshold volatge at 100°C
printf("Threshold volatge at 100°C = %.2f V",Vt);

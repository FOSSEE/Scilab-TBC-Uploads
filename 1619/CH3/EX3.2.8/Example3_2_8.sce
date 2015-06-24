//Examplr 3.2.8 page 3.16

clc;
clear;

V= 2;
I= 100*10^-3;
Pc= 2*10^-3;
P= V*I;
Npc= Pc/P*100;
printf("The overall power conversion efficiency is %d %%",Npc);

//4.9
clc;
emf=220;
duty_cycle=0.6;
Vi=220*duty_cycle;
Ra=1;
I=20;
emf_back=Vi-I*Ra;
N_no_load=1000;
N=emf_back*N_no_load/emf;
printf("\nSpeed of motor = %.1f rpm", N)

//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex9_2.sce

clc;
clear;
V=3.6e3;
phase=3
f=50;
N=500;
m=3;
c=10;

printf("\n (a)")
p=(120*f)/N;
printf("\n   The number of poles=%d",p)

printf("\n (b)")
slots_per_phase=m*p;
conductor_per_phase=(slots_per_phase)*c;
turns_per_phase=conductor_per_phase/2;
emf_per_phase=V/sqrt(3);
solts_per_pole=m*phase;
alpha=180/solts_per_pole;

Kd=sind(m*alpha/2)/(m*sind(alpha/2));
betta=alpha;
Kp=cosd(betta/2);
phi=emf_per_phase/(4.44*f*Kd*Kp*turns_per_phase);
printf("\n   The useful flux per pole=%1.3f Wb",phi)

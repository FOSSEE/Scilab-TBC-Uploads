
//Optoelectronics and Fiber Optics Communication by C.R. Sarkar and D.C. Sarkar
//Example 6.2
//OS = Windows 7
//Scilab version 5.5.2

clc;
clear;

//given
rp=3*10^11;//number of incident photon
re=1.5*10^11;//number of hole-pairs generated
lamda=0.85*10^-6;//wavength in m
h=6.62*10^-34;//Plank's constant in SI Unit
c=3*10^8;//speed of the light in m/s
e=1.9*10^-19;//electric charge in Coulomb
eta=re/rp;//quantum efficiency
c1=(e*lamda)/(h*c);//constant value
R=eta*c1;//responsivity of the photodiode inA/W
mprintf("\n Quantum efficiency is= %.2f",eta);
mprintf("\n Responsivity of the photodiode is= %.2f A/W",R);

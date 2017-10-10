clc;
clear all;
disp("molar diffusion flux")
L=16/1000;//m
CA1=1.2;// kg mole/m^3
CA2=0;// kg mole/m^3
Da=0.248*10^(-12);//m^2/s

Na= Da*(CA1-CA2)/L;// kg mole /(m^2*s)
disp("kg mole /(m^2*s)",Na,"molar diffusion flux rate, Na =")



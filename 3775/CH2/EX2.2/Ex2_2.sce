//Ex 2.2 page 67

clc;
clear;
close;

diBYdt=1000;//A/s (rate of rise of current)
il=10;//mA (latching current = diBYdt * tp)
tp=il*10**-3/diBYdt;//s
printf('Minimum duration of gating pulse = %.f micro s',tp*10**6)

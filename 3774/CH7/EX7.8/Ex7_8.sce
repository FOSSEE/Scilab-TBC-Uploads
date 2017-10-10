// exa 7.8 Pg 208
clc;clear;close;

// Given Data
d=25;// mm
N=550;// rpm
P=12;// kW
sigma_yt=400;// N/mm.sq.
sigma_yc=400;// N/mm.sq.
n=2.5;// factor of safety

// P= 2*%pi*N*T/(60*10**3)
T=P/(2*%pi*N/(60*10**3));// N.m
tau=0.5*sigma_yt;// MPa
tau_d=tau/n;// N/mm.sq.
printf('design shear stress = %.f N/mm.sq.',tau_d)
sigma_d=sigma_yc/n;// N/mm.sq.
printf('\n design crushing strength = %.f N/mm.sq.',sigma_d)
b=d/4;//mm
printf('\n width of key = %.f mm. Use 7mm',b)
b=ceil(d/4);// mm
t=b;// mm
printf('\n thickness of key = %.f mm.',t)
l_s=2*T*10**3/(d*b*tau_d);// mm (length of key based on shear failure)
printf('\n length of key based on shear failure = %.2f mm or %.f mm',l_s, l_s)
l_c=4*T*10**3/(d*t*sigma_d);// mm (length of key based on crushing failure)
printf('\n length of key based on crushing failure = %.2f mm or %.f mm',l_c, l_c)



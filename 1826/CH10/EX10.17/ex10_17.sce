// Example 10.17, page no-279
clear
clc
hc=0.55*10^-10//m^3//A-s
cc=5.9*10^7//per Ohm-m
T=300//K
dm=hc*cc
printf("The drift mobility is given by mu_d = %.1f * 10^-3 m^2/V-s",dm*10^3)

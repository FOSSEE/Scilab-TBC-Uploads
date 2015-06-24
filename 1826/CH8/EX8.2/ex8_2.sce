// Example 8.2, page no-210
clear
clc
avg=6.023*10^26
h=6.626*10^-34
m=9.1*10^-31//kg
e=1.6*10^-19//C
n=8.4905*10^28

ef=(h^2/(8*m))*(3*n/%pi)^(2/3)
ef=ef/e
gam=6.82*10^27
x=(gam*sqrt(ef))/2
printf("The density of states for Cu at the Fermi level for T = 0 K is %.0f*10^27 m^-3",x*10^-27)

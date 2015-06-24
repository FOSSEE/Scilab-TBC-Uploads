// Example 15.2, page no-406
clear
clc

e=1.6*10^-19//C
h=6.626*10^-34
c=3*10^8//m/s
lam=6751*10^-10//m
E=h*c/lam
E=E/e
printf("The band gap of the given GaAsP is %.1f eV",E)

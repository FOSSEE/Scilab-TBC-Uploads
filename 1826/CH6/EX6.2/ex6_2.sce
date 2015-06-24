// Example 6.2, page no-144
clear
clc
lam=6715*10^-10//m
h=6.626*10^-34
c=3*10^8//m/s
e=1.6*10^-19//C
Eg=h*c/lam
Eg=Eg/e
printf("The band gap of the given GaAsP is %.2f eV",Eg)

// Example 2.4, page no-31
clear
clc

d=4*10^3//kg/m^3
awtcs=132.9
awtcl=35.5
a=4.12*10^-10
m=d*a^3
N=(awtcs+awtcl)/m
printf("The value of Avogadro Constant %.4f *10^26 per kg mole",N*10^-26)

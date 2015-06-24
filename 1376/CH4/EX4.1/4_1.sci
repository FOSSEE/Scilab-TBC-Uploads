// 4.1
clc;
t=20;
C=8*10^-10;
E=200;
e=150;
a=log10(E/e)
R=(0.4343*t)/(C*a)*10^-6;
printf("Insulation resistance=%.2f mega-ohm",R)

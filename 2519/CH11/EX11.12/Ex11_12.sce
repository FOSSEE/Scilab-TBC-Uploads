clc
clear
//Initialization of variables
T=250 + 460 //R
p=29.825 //psia
pt=50 //psia
vg=13.821 //ft^3/lbm
M=29
R=10.73
//calculations
pa=pt-p
V=1/M *R*T/pa
ma=V/vg
xa=p/pt
mb=xa/M *18/(1-xa)
//results
printf("In case 1, volume occupied = %.2f ft^3",V)
printf("\n In case 1, mass of steam = %.2f lbm steam",ma)
printf("\n In case 2, mass of steam = %.3f lbm steam",mb)


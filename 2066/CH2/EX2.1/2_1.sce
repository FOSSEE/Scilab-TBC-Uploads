clc
clear
//Initialization of variables
gam=0.0765 //lb/ft^3
p=14.7 //psia
dz=10560 //ft
//calculations
pg=p*144/gam
p2=p*exp(-dz/pg)
gam2=p2/p*gam
//results
printf("Final pressure = %.2f psia",p2)
printf("\n Final specific weight = %.4f lb/ft^3",gam2)

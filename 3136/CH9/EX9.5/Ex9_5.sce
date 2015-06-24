clear all; clc;

disp("To calculate the thermal efficiency,the units have to be consisitent. With hp=0.707 Btu/s=2545Btu/h, we have ETAth=Ps+Qe/Qin")
ETA_th=(2512*0.707+1259*7)/(7*1750)
printf(" Thus ETA_h= %0.3f",ETA_th)

ETA_th=2512*0.707/(7*1750)
printf("\n For the simple shaft power system,we have ETA_th= %0.3f",ETA_th)

ETA_th=2545/17675
printf("\n From the heat rate,ETA_th=2545/HR %0.3f",ETA_th)
























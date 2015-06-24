clc
clear
//Initialization of variables
disp("From Table B-4,")
h=1187.2 //Btu/lbm
t=328 //F
//calculations
p2=100 //psia
u2=1187.2 //Btu/lbm
t2=540 //F
dt=t2-t
//results
printf("Final temperature of steam = %d F",t2)
printf("\n Final pressure = %d psia",p2)
printf("\n Change in temperature = %d F",dt)

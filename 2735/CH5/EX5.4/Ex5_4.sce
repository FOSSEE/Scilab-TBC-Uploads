clc
clear
//Initialization of variables
P=100 //psia
//calculations
disp("From table B-4")
h=1187.2 //Btu/lbm
t1=328 //F
t2=540 //F
dt=t2-t1
//results
printf("Final temperature of the steam = %d F",t2)
printf("\n Change in temperature = %d F",dt)

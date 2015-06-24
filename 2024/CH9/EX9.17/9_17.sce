clc
//Initialization of variables
hf=1187.2 //Btu/lbm
p2=100 //psia
//calculations
t=328 //F
u2=hf
disp("from steam table,")
t2=540 //F
p2=100 //psia
dt=t2-t
//results
printf("Rise in temperature = %d F",dt)

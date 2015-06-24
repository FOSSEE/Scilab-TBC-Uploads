clc
//Initialization of variables
T=0 //C
//calculations
de1=-72 //mV/C
de2=500 //mv/C
alpha=de1-de2
pi=-(T+273)*alpha
//results
printf("Peltier coefficient at %d C = %d mv",T,pi/1000)

clc
//initialization of varaibles
T0=540 //R
Q=826 //B/lb
ds=0.534
ds2=0.431
//calculations
tds=T0*ds
tds2=T0*ds2
H=Q-tds2
Loss=tds/H
//results
printf("Loss = %d percent",Loss*100+1)

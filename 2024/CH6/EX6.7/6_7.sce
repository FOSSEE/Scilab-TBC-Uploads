clc
//Initialization of variables
sf=0.12948
dt=0.32 //F
t1=100 //F
x=0.6
//calculations
t2=t1+dt
hf=67.97
ht=2.7
hp=0.3
h2=hf+ht+hp
Wrev=hf-h2
Wact=Wrev/x
//results
printf("Actual work done = %.1f Btu/lbm",Wact)

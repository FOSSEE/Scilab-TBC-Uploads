clc
//initialization of varaibles
T1=400+460 //R
P1=50 //psia
ratio=1/10
R=53.34
//calculations
P2=P1/ratio
W=R*T1*log(ratio)
du=0
//results
printf("Final pressure =  %d psia",P2)
printf("\n Work done = %.1f B/lb",W)
printf("\n Change in Internal energy = %d ",du)

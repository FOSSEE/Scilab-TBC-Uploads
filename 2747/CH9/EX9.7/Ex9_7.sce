clc
clear
//Initialization of variables
T1=100 //F
P2=1000 //psia
x=0.6
J=778.16
tir=2 
P1=0.9 //psia
//calculations
disp("From table 3,")
hf=67.97
htc=2.7
hpc=0.32
h1=67.97
dv=0.000051
v=0.01613
h2=hf+htc+hpc
wrev=h1-h2
wact=wrev/x
dt=hpc+tir
t2act=T1+dt
wrev2=-v*144*(P2-P1)/J
dw=(P1+P2)/2 *dv *144/J
//results
printf("Work required = %.2f Btu/lbm",wact)
printf("\n reversible work done = %.2f Btu/lbm",wrev2)
printf("\n Work done in compression = %.4f Btu/lbm",dw)

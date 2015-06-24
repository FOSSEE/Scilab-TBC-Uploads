clc
//Initialization of variables
T1=500+460 //R
P1=50 //psia
P2=15 //psia
g=1.4
cp=0.24
//calculations
T2=T1*(P2/P1)^((g-1)/g)
W=cp*(T2-T1) + (T1-460)^2 /(2*32.2*778)
//results
printf("Net work output from turbine = %.1f B/lbm",W)

clc
//initialization of variables
P=500 //lb/in^2
T=800+460 //R
Pf=1 //lb/in^2
//calculations
disp("From table 4 of appendix,")
ht1=69.7
vt1=0.01614
W=vt1*(P-Pf)*144
ht2=W/778 +ht1
ht3=1412.1
s3=1.6571
ht4=925.8
WbyJ=ht3-ht4
W3=778*WbyJ
dW=W3-W
eta=1-((ht4-ht1)/(ht3-ht2))
//results
printf("Neglecting pump work, Work = %d ft-lb/lbm",W3)
printf("\n Considering pump work, Work = %d ft-lb/lbm",dW)
printf("\n Considering pump work, Thermal efficiency = %.3f ",eta-0.001)
printf("\n Neglecting pump work, Thermal efficiency = 0.362")

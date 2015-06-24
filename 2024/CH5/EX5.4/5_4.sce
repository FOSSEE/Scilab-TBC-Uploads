clc
//Initialization of variables
W=14.5 //B/lbm
Q=141.7 //B/lbm
Tr=520 //R
Ta=1040 //R
//calculations
n1=W/Q
n2=1-Tr/Ta
Wc=n2*Q
//results
printf("Thermal efficiency = %.2f percent",n1*100)
printf("\n Work done in carnot cycle = %.1f Btu/lbm",Wc)

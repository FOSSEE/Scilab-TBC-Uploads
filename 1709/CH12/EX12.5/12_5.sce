clc
//Initialization of variables
P4=50 //psia
P1=14.7 //psia
P3=50 //psia
P2=14.7 //psia
g=1.4
//calculations
V1r=(P4/P1)^(1/g)
V2r=(P3/P2)^(1/g)
//After solving,
V4=5.38 //ft^3/min
V1=12.9 //ft^3/min
V2=112.9  //ft^3/min
PD=V2-V4
etavol=(V2-V1)/(V2-V4)
W32=g*P2*144*V2*((P3/P2)^((g-1)/g) -1 ) /(1-g)
W41=g*P4*144*V4*((P1/P4)^((g-1)/g) -1 ) /(1-g)
Wt=W32+W41
//results
printf("Total work = %.2e ft-lbf /min",Wt)
//The answer given in textbook is wrong . please verify it using a calculator

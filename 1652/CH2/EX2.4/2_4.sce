clc
//Initialization of variables
M1=4
M2=14
E=-1.2 //Mev
//calculations
R1=1.5*10^-13 *(M1)^(1/3)
R2=1.5*10^-13 *(M2)^(1/3)
V1=2*7*(4.8*10^-10)^2 /(R1+R2)
V2=V1/(1.6*10^-6)
x=(M1+M2)*V2/M2
//results
printf("Threshold = %.1f Mev",x)

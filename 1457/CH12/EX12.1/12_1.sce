clc
//Initialization of variables
P1=10 //psia
Q=0.6 //cfs
A1=0.0491 //ft^2
g=32.2
V=39.2//fps
A0=0.0218 //ft^2
d1=2 //in
d2=3 //in
//calculations
Phead=P1*144/62.4
V1=Q/A1
V2i= sqrt(2*g*(Phead + V1^2 /(2*g)))
Cv=V/V2i
A2=Q/V
Cc=A2/A0
Cd=Cc*Cv
hL=(1/Cv^2 -1)*(1- (d1/d2)^4)*V^2 /(2*g)
//results
printf("Cc = %.2f ",Cc)
printf("\n Cd= %.2f",Cd)
printf("\n Cv= %.2f",Cv)
printf("\n Head loss = %.2f ft",hL)

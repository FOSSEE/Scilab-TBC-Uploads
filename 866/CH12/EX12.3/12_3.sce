clc
b=200 //mm
d=350 //mm
dia=20 //mm
BM=30*10^3 //Nm
m=15
As=2*%pi*dia^2 /4
n=m*As*(sqrt(1+ 2*b*d/(m*As))-1)/b
Ic=b*n^3 /3 + m*As*(d-n)^2
SigmaC=-BM*n*10^3/Ic
printf("Stress in concrete=%f N/mm^2 compression",SigmaC)
SigmaS=m*BM*10^3*(d-n)/Ic
printf("\n Stress in Steel=%f N/mm^2 tension",SigmaS)

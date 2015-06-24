clc
b=250 //mm
BM=350*10^3 //Nm
SigmaCu=30 //N/mm^2
SigmaY=400 //N/mm^2
d1=sqrt(BM*10^3 /(0.15*SigmaCu*b))
lever=3*d1/4
As=BM*10^3/(0.87*SigmaY*lever)
printf("As=%f mmm^2",As)

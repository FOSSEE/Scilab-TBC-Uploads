clc
b=300 //mm
d=618 //mm
depth=60 //mm
SigmaCu=30 //N/mm^2
SigmaY=410 //N/mm^2
BM=650 //Nm
Mu=0.15*SigmaCu*b*d^2 *10^(-6)
Asc=(BM-Mu)*10^6 /((d-depth)*0.72*SigmaY)
Ast=Mu*10^6/(0.75*d*SigmaY*0.87) + (BM-Mu)*10^6/((d-depth)*0.87*SigmaY)
printf("Asc=%f mm^2",Asc)
printf("\n Ast=%f mm^2",Ast)

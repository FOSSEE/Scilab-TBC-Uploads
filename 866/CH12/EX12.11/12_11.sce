clc
thick=150 //mm
width=1.8 //m
depth=562 //mm
SigmaCu=30 //N/mm^2
SigmaY=350 //N/mm^2
BM=709 //KNm
As=2*BM*10^6 /(0.87*SigmaY*depth)
Tensile=0.87*SigmaY*As
disp(Tensile)
Compressive=0.4*width*thick*SigmaCu*10^3
disp(Compressive)
n1=0.87*SigmaY*8530/(0.4*SigmaCu*width*10^3)
disp(n1)
Mu=0.87*SigmaY*8530*(SigmaY+6-n1/2)*10^(-6)
printf("Mu=%f KNm",Mu)
printf("\n This is greater than applied moment. hence it is satisfactory")

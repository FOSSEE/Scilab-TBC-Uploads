clc
d=400 //mm
m=15
ASs=120 //N/mm^2
ASc=6.5 //N/mm^2
BM=40*10^3 //Nm
n=d/(ASs/(ASc*m) +1 )
As=BM*10^3/(ASs*(d-n/3))
printf("required area= %f mm^2",As)

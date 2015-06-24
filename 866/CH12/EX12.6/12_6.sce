clc
b=180 //mm
d=360 //mm
m=15
BM=45*10^3 //Nm
depth=40 //mm
Sc=8.5 //N/mm^2
Ss=140 //N/mm^2
n=d/(Ss/(Sc*m) +1 )
Ast=(BM*10^3 - Sc*b*n*(n/3 - depth)/2)/(Ss*(d-depth))
Asc=(m*Ast*(d-n) - b*n^2 /2 )/((m-1)*(n-depth))
SigmaSC=-m*(n-depth)*Sc/n
printf("Area of reinforcement steel = %f mm^2",Ast)
printf("\n Area of reinforcement concrete= %f mm^2",Asc)
printf("\n Stress in compresson steel=%f N/mm^2 compression",SigmaSC)

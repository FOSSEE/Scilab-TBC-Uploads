//find
clc
//solution
//given
b=6//mm
t1=0.25//mm
l=2500//mm
t=800//N/mm^2
E=200*1000//N/mm^2
M=t*b*t1^2/(12)//N-mm
printf("bending moment is,%f N-mm\n",M)
q=12*M*l/(E*b*t1^2)//rad
printf("angular def is,%f rad\n",q)
U=0.5*M*q
printf("energy stored is,%f N-mm",U)
//find
clc
//solution
//given
D=60//mm
d=6//mm
M=6000//N-mm
C=10
E=200000//N/mm^2
n=5.5
K=(4*C^2-C-1)/(4*C^2-4*C)
fb=K*(32*M/(%pi*d^3))//N/mm^2
printf("bending stressa acting is,%f N/mm^2\n",fb)
q=64*M*D*n/(E*d^4)//rad
printf("angular deflection is,%f rad",q)
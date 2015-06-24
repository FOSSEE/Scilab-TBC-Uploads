//find
clc
//solution
//given
d=0.06//m
l=0.09//m
N=450//rpm
Z=0.06//kg/m/s
c=0.1
S=14.3*10^6
p=(Z*N)*(d*1000/c)^2/S//N/mm^2
printf("bearing pressure is,%f N/mm^2",p)
W=p*l*d*10^6//N
printf("safe load is ,%f N\n",W)
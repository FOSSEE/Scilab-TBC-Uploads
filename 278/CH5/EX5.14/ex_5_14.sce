//cal stress at A and B
clc
//solution
//given
W=3000//N
T=10^6//N-mm
P=15000//N
d=50//mm
x=250//mm
pi=3.14
A=(pi/4)*d^2//mm^2//area of shaft
f1=P/A//tensile stress at A and B
M=W*x//N-mm
Z=(pi/32)*d^3//mm^3
f2=M/Z//N/mm^2
fa=f1+f2//N/mm^2
fb=f2-f1//N/mm^2//tensile stress at B
fs=16*T/(pi*d^3)//N/mm^3
Fama=(fa/2)+0.5*sqrt((fa)^2+4*(fs)^2)//max stress at A
Fami=(fa/2)-0.5*sqrt((fa)^2+4*(fs)^2)//min stress at A
Tama=0.5*[sqrt(((fa)^2)+(4*(fs)^2))]// max shear stress at A
Fbma=(fb/2)+0.5*sqrt((fb)^2+4*(fs)^2)//max stress at B
Fbmi=(fb/2)-0.5*sqrt((fb)^2+4*(fs)^2)//min stress at B
Tbma=0.5*[sqrt(((fb)^2)+(4*(fs)^2))]//max shear stress at B
printf("the max stress at A is,% f N/mm^2\n",Fama)
printf("the min stress at A is,% f N/mm^2\n",Fami)
printf("the max stress at B is,% f N/mm^2\n",Fbma)
printf("the max stress at B is,% f N/mm^2\n",Fbmi)
printf("the max shear stress at A is,%f N/mm^2\n",Tama)
printf("the max shear stress at B is,%f N/mm^2",Tbma)

//find
clc
//solution
//given
D1=65//mm
p1=0.7//N/mm^2
p2=0.75//N/mm^2
dx=3.5//mm
t=550//N/mm^2
G=84000//N/mm^2
C=6
W1=(%pi/4)*D1^2*p1//N
W2=(%pi/4)*D1^2*p2//N
W=W1-W2//N
//T=W2*D/2=7467*d
//D=6d
//T=(%pi/16)*t*d^3=108*d^3
//d=sqrt(7467/108)//mm
printf("dia of spring wire is,%f mm\n",sqrt(7467/108))
printf("standard dia is 8.839 mm from table 23.2\n")
d=8.839
D=6*d//mm
Do=D+d
Di=D-d
printf("mean dia,outer di and inner dia are,%f mm\n,%f mm\n,%f mm\n",D,Do,Di)
//let n be nubr of tunrs
printf("numbr of turns are ,%f \n",dx*G*d^4/(8*D1^3*W))
printf("numbr of turns are say 10\n")
n=10
nb=n+1
fL=n*d+ (n-1)*d
printf("free length is ,%f mm\n",fL)
printf("pitch of coil is,%f mm",fL/(nb-1))
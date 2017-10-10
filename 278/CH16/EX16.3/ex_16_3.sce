//cal dia of piston
clc
//soltuion
//given
D=1500//mm
p=0.2//N/mm^2
E=200*1000//N/mm^2
l=3000//mm
W=(%pi/4)*D^2*p//N
Fs=8
Wcr=W*Fs//N
L=l/2;
d=(Wcr/0.043)^(1/4)//mm;
//let d be dia and I be moment of inertia
I=(%pi/64)*d^4
//acc to euler's formula
//Wcr=%pi^2*E*I/L^2//N
//Wcr=0.043*d^4

//acc to rankine's formula
//Wcr=(fc*A)/(1+a*(L/k)^2)
fc=320//N/mm^2
a=1/7500
//k=sqrt(I/A)=d/4
//Wcr=(251.4*d1^2)/(d1^2 +4800)
//on solving d2=14885
d1=sqrt(14885)//mm
//taking large rof two values
printf("the dia od piston is,%f\n",d1)
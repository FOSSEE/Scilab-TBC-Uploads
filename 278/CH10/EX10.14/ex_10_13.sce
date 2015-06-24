////find size of weld
clc
//solution
//given
//ref fig 10.28
P=15000//N
T=80//N/mm^2
b=80//mm
l=50//mm
e=125//mm
//let s be size of weld
//A=2*t*l//70.7*s//mm^2
//T1=P/A//N/mm^2//direct stress
//T1=212/s
//J=t*l*(3*b^2+l^2)/6//mm^4
//J=127850*s//mm^4
ab=40//mm
bg=25//mm=r1
r2=(sqrt(ab^2+bg^2))//mm
printf("the value of r2 is,%f mm\n",r2)
//T2=P*e*r2/J
//T2=689.3/s//N/mm^2
//cos(q)=r1/r2=25/47=0.532
a=0.532
//T=sqrt(T1^+T2^2+2*T1*T2*a)
//80=822/s
s=822/80//mm
printf("the sieze of weld is,%f mm",s)
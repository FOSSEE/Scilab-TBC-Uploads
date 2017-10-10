
clc
//solution
//given
//ref fig 10.32 and 33
s=6//mm
P=20*10^3//N
l=40//mm
b=90//mm
//let t throat thickness
//let x is distance of Cg from left edge
x=l^2/(2*l+b)//mm
//J=t*[(b+2*l)^3/12-(l^2*(b+l)^2/(b*2*l))]
J=0.707*s*[{(b+2*l)^3/12}-{(l^2*(b+l)^2)/(b+2*l)}]//mm^4
printf("the value of J is,%f mm^4\n",J)
Bg=40
e=200-x//mm
r1=Bg-x//mm
Ab=(90/2)//mm
r2=sqrt(Ab^2+Bg^2)//mm
//cos(q)=r2/r1=0.5625
a=0.5625
A=2*0.707*s*l+(0.707*s*b)//mm^2
t1=P/A//N/mm^2'
t2=P*e*r2/J//N/mm^2
T=sqrt(t1^2 + t2^2 + 2*t1*t2*a)//N/mm^2'
printf( "the value of x is,%f mm\n",x) 
printf("the value of direct shear stress is,%f N/mm^2\n",t1)
printf("the value of secondary shear stress is,%f N/mm^2\n",t2)
printf("the max shera stress is,%f N/mm^2",T)
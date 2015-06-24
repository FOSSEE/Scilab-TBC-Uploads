//find euler's crippling load
clc
//solution
//given
//ref fig 16.3
D=400//mm
B=200//mm
t=10//mm
b=200-10//mm
d=400-20
l=6000//mm
E=200*1000//N/mm^2
Ixx=B*D^3/12-b*d^3/12//mm^4
Iyy=2*[t*B^3/12]+(d*t^3/12)//mm^4
//since Iyy <Ixx,therefore it will try to b uckle about Y axis
L=l/2
I=Iyy
Wcr=%pi^2*E*I/L^2//N
printf("the cripling load acting is,%f N",Wcr)

clc
//given
w=3//lb
g=32.2
N2=300
w2=(N2*%pi/30)
r2=3/12//ft
N1=1.06*N2
r1=4.5/12//ft
a=4//in
b=2//in
ro=3.5/12//ft
F2=w*w2^2*r2/g
F1=F2*N1^2*r1/(N2^2*r2)
p=2*a^2*(F1-F2)/(b^2*(r1-r2))
Fc=F2+(F1-F2)*(.5/1.5)
N=(Fc*g/(ro*w))^(1/2)*30/%pi
Ns=ceil(N)
printf("N = %.f rpm",Ns)

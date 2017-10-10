//to find the equivalent stiffness of the auxiliary spring referred to the sleeve
clc
//given
w=5//lb
g=32.2
N2=240//rpm
w2=(N2*%pi/30)
r2=5/12//ft
N1=1.05*N2
r1=7/12//ft
a=6//in
b=4//in
pb=3/2
F2=w*w2^2*r2/g
F1=F2*N1^2*r1/(N2^2*r2)
p=2*(a/b)^2*((F1-F2)/(r1*12-r2*12)-4*pb)
printf("Equivalent stiffness; p = %.f lb/in",p)

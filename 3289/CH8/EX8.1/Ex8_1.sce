clc

di=0.3 //m
de=0.4 //m
v=0.3
sigmathetamax=250*10^6 //Pa
p0=0
pi=0

//solution a:
a=0.15
b=0.2
r=a
//sigmathetamax=pi*((b^2+a^2)/(b^2-a^2))
pi=sigmathetamax*((b^2-a^2)/(b^2+a^2))
disp(pi,"in Pa is= ")

//solution b:
r=a
//sigmathetamax=-2*p0*(b^2/(b^2-a^2))
p0=-(-sigmathetamax)*((b^2-a^2)/(2*b^2))
disp(p0,"in Pa is= ")

//solution c:
u=((a^3*pi)/(b^2-a^2))*(0.7+1.3*(b^2/a^2))
disp(u,"in per E meter is= ")
sigmaz=(pi*a^2-p0*b^2)/(b^2-a^2)
disp(sigmaz,"for longitudinal stress is")


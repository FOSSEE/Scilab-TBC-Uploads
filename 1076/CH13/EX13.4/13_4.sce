clear;
clc
dP=.1
f=50;
H=9;
x=.6
P=.7
pf=.8
pfa=acos(pf)
V=1
D=.14
dd=10 * %pi/180

S=P/pf * exp(%i * pfa)
I=conj(S/V)
E=V+ (%i * x *I)
d0=atand(imag(E)/real(E))
Pr=abs(E) * V * cosd(d0)/x

w1=sqrt(Pr *f *%pi/H)
w1=round(w1*100)/100

z=(D/2) * sqrt(%pi * f/(H*Pr))

wd=w1 *sqrt(1-(z*z))
Wd=wd / (2*%pi)

z=round(z*1e4)/1e4
c_1=1/sqrt(1-z^2)
c_2=z*w1
c_3=180 * f * dP/(9 * w1^2)

mprintf("\n\nd = %.2f + %.3f(1- (%.3f exp(-%.3f t) sin(%.3f t + %.1f deg)))", d0, c_3,c_1, c_2,wd, acosd(z))

c_4= dP * f /(w1* 9 * sqrt(1-z^2))
mprintf("\n\nf = %.0f + %.4f exp(-%.3f t) sin(%.3f t)", f, c_4, c_2,wd)

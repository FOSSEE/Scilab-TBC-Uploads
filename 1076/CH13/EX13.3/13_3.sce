clear;
clc

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
mprintf("\nSynchronising Power Coefficient = %.3f pu",Pr)

w1=sqrt(Pr *f *%pi/H)
mprintf("\nUndamped Speed Of oscillations = %.2f rad/sec",w1)
w1=round(w1*100)/100

z=(D/2) * sqrt(%pi * f/(H*Pr))
mprintf("\nDamping Ratio = %.4f ",z)

wd=w1 *sqrt(1-(z*z))
Wd=wd / (2*%pi)
mprintf("\ndamped angular frequency Of oscillations = %.3f rad/sec = %.3f Hz",wd, Wd)

z=round(z*1e4)/1e4
c_1=10/sqrt(1-z^2)
c_2=z*w1

mprintf("\n\nd = %.2f + %.3f exp(-%.3f t) sin(%.3f t + %.1f deg)", d0, c_1, c_2,wd, acosd(z))

c_3=w1 * 10 /(360 * sqrt(1-z^2))
mprintf("\n\nf = %.0f - %.4f exp(-%.3f t) sin(%.3f t)", f, c_3, c_2,wd)







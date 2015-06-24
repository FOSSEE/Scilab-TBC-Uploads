clear;
clc;

z1=complex(4,6)
z2=complex(3,2)

Vs=3.3e3/sqrt(3)
Is=250
pf=.8
pfa=acos(pf)
I=Is *(exp(%i * -pfa)) 

I1=I * z2/(z1+z2)
pfa1=atan(imag(I1)/real(I1))
pf1=cos(pfa1)
mprintf("\n(a) Current in OH line = %.1f A pf= %.3f", abs(I1), pf1)

I2=I * z1/(z1+z2)
pfa2=atan(imag(I2)/real(I2))
pf2=cos(pfa2)
mprintf("\n(b) Current in cable = %.2f A pf= %.2f", abs(I2), pf2)

vr=sqrt((Vs)^2-imag(I1*z1)^2)- real(I1*z1) 
Vr=vr*sqrt(3)/1000;
mprintf("\n(c) Receiving end voltage = %.3f KV", Vr)

d=atan(imag(I1*z1)/(Vr+real(I1*z1)))
phi=pfa-d;
pfr=cos(phi)
mprintf("\n(d) Receiving end pf = %.1f lagging", pfr)

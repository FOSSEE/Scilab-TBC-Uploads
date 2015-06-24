clear
clc

V=230

I1=80
I2=70
I3=50

pf1=.8
pf2=.9
pf3=1

phi1=acos(pf1)
phi2=acos(pf2)
phi3=acos(pf3)

i1=I1*exp(%i *0*%pi/3) * exp(%i * -phi1)
i2=I2*exp(%i*-2*%pi/3) * exp(%i * -phi2)
i3=I3*exp(%i *2*%pi/3) * exp(%i * -phi3)

r=.2

in=i1+i2+i3

dvR=r*i1
dvN=r*in

VR=V+dvR+dvN

mprintf("VR= %.1f V ang (%.1f)deg V", abs(VR), atand(imag(VR)/real(VR)))


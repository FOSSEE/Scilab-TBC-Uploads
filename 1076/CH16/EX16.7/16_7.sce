clear
clc

V=240

P1=50e3
P2=50e3
P3=200e3
Pm=500e3
pfm=.8


I1=P1/V
I2=P2/V
I3=P3/V
Im=Pm/(3*V*pfm)

i1=fix(I1*exp(%i *0*%pi/3)*100)/100
i2=fix((fix(I2*100)/100)*exp(%i *-2*%pi/3)*1000)/1000
i3=fix(I3*exp(%i *2*%pi/3)*100)/100
in=abs(round((i1+i2+i3)*100)/100)

iR=sqrt((I1)^2+(Im)^2+(2*I1*Im*pfm))
iY=sqrt((I2)^2+(Im)^2+(2*I2*Im*pfm))
iB=sqrt((I3)^2+(Im)^2+(2*I3*Im*pfm))

mprintf("\nIR= %.0f A", iR)
mprintf("\nIY= %.0f A", iY)
mprintf("\nIB= %.0f A", iB)
mprintf("\nIn= %.2f A", in)

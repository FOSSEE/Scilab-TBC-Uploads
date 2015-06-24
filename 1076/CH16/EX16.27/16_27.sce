clear
clc

V=400
Im=40
pfm=.75
pfd=.95

Pm=sqrt(3)* V * Im * pfm * 1e-3
phi1=acos(pfm)
phi2=acos(pfd)
kvar1=Pm * tan ( phi1)
kvar2=Pm * tan ( phi2)
kvarC=kvar2-kvar1
Ic= abs(kvarC)* 1e3 /(3 * V)
Xc=V/Ic
C=1/(2*%pi*50 * Xc)


Imx=Im * sin (acos(pfm))
Iline= (Im * pfm) - (%i * (Imx - (Ic*sqrt(3))))
dL=(1-(abs(Iline)/Im)^2)*100
mprintf("\npercentage reduction in power loss=%.2f",dL)

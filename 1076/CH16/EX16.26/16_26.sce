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
KVarC=(abs(kvarC)*10)/10
Ic= KVarC* 1e3 /(3 * V)
Ic=round(Ic*1000)/1000
Xc=round(V*100/Ic)/100
C=1/(2*%pi*50 * Xc)

mprintf("\nkVAR of Capacitor Bank = %.1f KVAR, Phase Current Of Capacitor Bank=%.2f A, C= %.2f e-6 F/phase",KVarC, Ic, C*1e6)








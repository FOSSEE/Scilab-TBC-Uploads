clear
clc

xl=.1

st1=10
vt1a=66
vt1b=11
xt1=.1
n1=vt1b/vt1a

st2=5
vt2a=11
vt2b=3.3
xt2=.08
n2=vt2b/vt2a

st3=05
vt3a=11
vt3b=.415
xt3=.06
n3=vt3b/vt3a

Sm=5
pfm=.8

Sl=1
pfl=.8

Sb=10
Vb1=66
Vb2=Vb1*n1
Vb3=Vb2*n2
Vb4=Vb2*n3

Xt2=xt2* (Sb/st2)
Xt3=xt3* (Sb/st3)

Il=(Sl/Sb) * exp(%i * -acos(pfl))
Im=(Sm/Sb) * exp(%i * -acos(pfm))

It=Im+Il
Vt= 1- (It*(%i*(xt1+xl)))- (Il *%i* Xt3)

mprintf("\n(a) Voltage at domestic load is %.3f pu", abs(Vt))

Im=-1 * %i * 5 * Sm / Sb 
It=Il +Im
Vt= 1- (It*(%i*(xt1+xl)))- (Il *%i* Xt3)

mprintf("\n(b) Voltage at domestic load is %.3f pu", abs(Vt))



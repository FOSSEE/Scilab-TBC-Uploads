clear;
clc

r1=.02
r2=.05
r3=.03

Ic1=100
Id1=180

Va=255;
Vb=250

dV=abs(Va-Vb)
Ia=(dV+(r1*0)+(r2*Ic1)+(r3*(Id1+Ic1)))/(r1+r2+r3)

Ib=-(Ia-(Ic1+Id1))

Vc=Va-Ia*r1
Vd=Vc-((Ia-Ic1)*r2)

mprintf("IA= %.0f A, IB=%.0fA, Vc=%.2f V, Vd=%.2f V", Ia, Ib, Vc,Vd)

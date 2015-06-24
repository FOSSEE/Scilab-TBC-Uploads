clear
clc

l=300
l1=120
l3=120
l2=l-l1-l3
U=.25
Ic1=40
Id1=60

r=.1/100
r1=l1*r;
r2=l2*r
r3=l3*r

Va=300
Vb=300

dV=abs(Va-Vb)
Ia=(dV+(r1*.5*U*l1)+(r2*.5*U*l2)+(r3*.5*U*l3)+(r2*(Ic1+U*l1))+(r3*(Ic1+U*l1 +Id1+U*l2)))/(r1+r2+r3)
I=Ic1+Id1+(U*l)
Ib=I-Ia

Vc=Va-(Ia-.5*U*l1)*r1
Vd=Vb-((Ib-.5*U*l3)*r3)

mprintf("IA= %.1f A, IB=%.1fA, Vc=%.2f V, Vd=%.2f V", Ia, Ib, Vc,Vd)


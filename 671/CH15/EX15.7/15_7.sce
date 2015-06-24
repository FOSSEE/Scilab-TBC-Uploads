f=50
w=2*%pi*f
V=33000
Vr=V/sqrt(3)
P=24E6/3
pf=0.8
phi=acos(pf)
Ia=P/Vr/pf
Rl=4
Xl=20
Vs=Vr+Ia*(Xl*sin(phi)+Rl*cos(phi))
Vsll=sqrt(3)*Vs
VR=Vsll/V-1
disp(Vsll)
Ia=Ia*exp(-%i*phi)
disp(norm(Ia))

phi1=atan(-Rl/Xl)
pf=cos(phi1)
Ia1=P/Vr/pf
Ia1=Ia1*exp(-%i*phi1)       ////calculation mistake in the book at this step

Ic=Ia1-Ia
C=norm(Ic/w/Vr)
disp(C)

LL1=norm(Ia*Ia*Rl)
effi1=P/(P+LL1)
LL2=norm(Ia1*Ia1*Rl)
effi2=P/(P+LL2)
disp(effi1)
disp(effi2)

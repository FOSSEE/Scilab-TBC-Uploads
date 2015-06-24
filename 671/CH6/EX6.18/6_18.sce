V=400
P=900
pf=0.8

Pph=P/3
Vph=V/sqrt(3)
Iph=Pph/Vph/pf
Zph=Vph/Iph
theta=acos(pf)
Zph=Zph*exp(-%i*theta)
disp(Zph)
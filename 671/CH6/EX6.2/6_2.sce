Vl=400
Vph=Vl
pf=0.8

Pph=1500/3
Iph=Pph/Vph/pf
Il=sqrt(3)*Iph
theta=acos(0.8)
Iph=Iph*exp(%i*theta)
Zph=Vph/Iph

disp(Iph,Il,Zph)
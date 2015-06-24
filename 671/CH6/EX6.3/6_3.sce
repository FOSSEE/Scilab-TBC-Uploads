Vl=400
pf=0.8

Pph=1200/3
Vph=Vl/sqrt(3)
Iph=Pph/Vph/pf
Il=Iph
theta=acos(0.8)
Zph=Vph/Iph*exp(%i*theta)

disp(Il,Iph,Zph)
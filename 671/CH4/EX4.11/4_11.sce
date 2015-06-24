P1=8000
pf1=0.8
V1=430

I1=P1/V1/pf1
Pr1=P1-I1^2*1
Q1=P1*tan(acos(pf1))
Qr1=Q1-I1^2*1.2
Sr1=sqrt(Pr1^2+Qr1^2)

Vl=Sr1/I1
Pl=15000
Ql=Pl*tan(acos(0.8))
Pr2=Pl-Pr1
Qr2=Ql-Qr1
Sr2=sqrt(Pr2^2+Qr2^2)

I2=Sr2/Vl
P2=Pr2+I2^2*0.7
Q2=Qr2+I2^2*0.9

pf=cos(atan(Q2/P2))
S2=sqrt(P2^2+Q2^2)
V2=S2/I2

disp(V2,pf,P2,Q2,Q1,Vl)

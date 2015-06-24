V=231
f=50
w=2*%pi*f
Sl=10
pf=0.8
Pl=Sl*pf
Ql=Sl*sin(acos(pf))
Qc=Ql-tan(acos(0.95))*Pl

C=Qc*1000/V^2/w

Is1=10*1000/V
Il=Is1
Is2=norm(Pl+%i*(Ql-Qc))*1000/V

disp(Is2,Is1,C,Qc)
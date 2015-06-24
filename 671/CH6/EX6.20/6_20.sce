Ig1=15000/sqrt(3)/800/0.8
PG1=15000
QG1=15000*tan(acos(0.8))
SG1=PG1+%i*QG1

Pll=3*Ig1*Ig1*1.2
Qll=3*Ig1*Ig1*1.8
Sll=Pll+%i*Qll
SlG1=SG1-Sll
Vl=SlG1/sqrt(3)/Ig1


Pl=30000
Ql=30000*tan(acos(0.8))
PlG2=Pl-real(SlG1)
QlG2=Ql-imag(SlG1)
SlG2=PlG2+%i*QlG2

IG2=SlG2/sqrt(3)/Vl

Pll2=3*IG2*IG2*0.8
Qll2=3*IG2*IG2*1.2

PG2=PlG2+Pll2
QG2=QlG2+Qll2
SG2=PG2+%i*QG2
VG2=SG2/sqrt(3)/IG2

disp(norm(SG2),norm(VG2))
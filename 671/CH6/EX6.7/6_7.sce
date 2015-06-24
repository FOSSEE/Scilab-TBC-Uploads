Ig1=200000/sqrt(3)/11000/0.75
PG1=200000
QG1=200000*tan(acos(0.75))
SG1=PG1+%i*QG1

Pll=3*Ig1*Ig1*1
Qll=3*Ig1*Ig1*2.2
Sll=Pll+%i*Qll
SlG1=SG1-Sll
Vl=SlG1/sqrt(3)/Ig1


Pl=400000
Ql=400000*tan(acos(0.8))
PlG2=Pl-real(SlG1)
QlG2=Ql-imag(SlG1)
SlG2=PlG2+%i*QlG2

IG2=SlG2/sqrt(3)/Vl

Pll2=3*IG2*IG2*0.6
Qll2=3*IG2*IG2*1.2

PG2=PlG2+Pll2
QG2=QlG2+Qll2
SG2=PG2+%i*QG2
VG2=SG2/sqrt(3)/IG2

disp(norm(SG2),norm(VG2))
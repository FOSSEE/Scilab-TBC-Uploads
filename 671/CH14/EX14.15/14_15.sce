V=5.9
Rx=0
Rm=2000
R1=49000
Ifsd=100E-6
Vam=Rm*Ifsd
I=(V-Vam)/R1
Ish=I-Ifsd
R2=Vam/Ish
disp(R2)

I=0.6*I
Req=V/I
Rx=Req-R1-Rm*R2/(R2+Rm)
disp(Rx)

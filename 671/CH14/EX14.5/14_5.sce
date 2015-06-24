
E=4
R1=800
R2=80
R3=1605
R4=160
Rg=80
s=8

Eth=E*(R2/(R2+R4)-R1/(R1+R3))
Rth=R1*R3/(R1+R3)+R2*R4/(R2+R4)
Ig=Eth/(Rth+Rg)
D=s*Ig*1000000
disp(D)

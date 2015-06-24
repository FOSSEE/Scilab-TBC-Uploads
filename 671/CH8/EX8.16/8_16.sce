v1=2500
v2=250
P=25000
Pc=130
Pcfl=320
pf=0.8

V2=2750

P0=P*pf
Pl=Pcfl+Pc
effi=P0/(P0+Pl)*100
disp(effi)

I2=P/v2
I1=I2+P/v1
kVA=I1*v1/1000
P0=kVA*pf*1000
effi=P0/(P0+Pl)*100
disp(effi)

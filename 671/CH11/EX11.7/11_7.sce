f=50
ns=100
P=110000
pf=0.8

p=120*f/ns
disp(p)
kVA=P/pf/1000
disp(kVA)
kW=P/0.971/1000
disp(kW)
Tpm=kW*1000*60/2/%pi/ns
disp(Tpm)

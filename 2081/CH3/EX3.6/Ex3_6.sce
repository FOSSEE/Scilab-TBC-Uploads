Ptmw=10000
Gt=9
Gr=4
fcMhz=250
rkm=25
PtdBm=10*log10(Ptmw)
LpfdB=32.44+20*log10(rkm)+20*log10(fcMhz)//path loss
l=20
At=3/100
Lt=l*At
Lr=.2
PrdBm=PtdBm-Lt+Gr+Gt-LpfdB-Lr//Power delivered to the reciever
disp(PrdBm,'Power delivered to the reciever in dBm')

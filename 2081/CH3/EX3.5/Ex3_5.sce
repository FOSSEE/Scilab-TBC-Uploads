PtmW=10000
Gt=1.6
Gr=1.6
fcMhz=1000
rkm=1.6
PtdBm=10*log10(PtmW)


GtdB=10*log10(Gt)
GrdB=10*log10(Gr)
LpfdB=32.44+20*log10(rkm)+20*log10(fcMhz)//path loss
printf('\npath loss= %.1f dB',LpfdB)
PrdBm =PtdBm+GtdB+GrdB-LpfdB//recieved signal power
printf('\nrecieved signal power= %.1f dBm',(PrdBm-0.1))
T=3.3*10^(-1*9)*1600//transmission delay
printf('\ntransmission delay=%.2f microsec',((T*10^6)+0.05));

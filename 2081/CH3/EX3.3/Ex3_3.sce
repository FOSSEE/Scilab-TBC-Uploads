PtmW=100000
PtdBm=10*log10(PtmW)
PrdBm=-100//reciever threshold
LpdB=PtdBm-PrdBm//path loss
LodB=30
Y=4
r=10^((LpdB-LodB)/(Y*10))
printf('\nradio coverage range= %.f km',r*10^(-3));

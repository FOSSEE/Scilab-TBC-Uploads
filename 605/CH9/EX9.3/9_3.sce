
Zo=75
Wc=2*%pi*2*10^6
foo=2.05*10^6
L=Zo/Wc*2
m=0.6
C=2/(Zo*Wc)
printf("\nm*L/2=%.2e H",m*L/2)
printf("\nm*C=%.3e F",m*C/2)
printf("\n(1-m^2)*L/4/m=%.2e",(1-m^2)*L/2/m)
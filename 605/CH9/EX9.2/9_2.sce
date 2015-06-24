
foo=2.05*10^6
fc=2*10^6
Zo=75
Wc=2*%pi*2*10^6
L=Zo/Wc*2
C=2/(Zo*Wc)
m=sqrt(1-(fc/foo)^2)
printf("\nm=%.4f",m)
printf("\nm*L/2=%.2e H",m*L/2)
printf("\nm*C=%.3e F",m*C)
printf("\n(1-m^2)*L/4/m=%.2e",(1-m^2)*L/4/m)
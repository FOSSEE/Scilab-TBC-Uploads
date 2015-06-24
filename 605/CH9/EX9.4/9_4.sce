
Zo=75
Wc=2*%pi*2*10^6
foo=1.95*10^6
fc=2*10^6
L=Zo/Wc/2
C=1/2/(Zo*Wc)
m=sqrt(1-(foo/fc)^2)
printf("\nL=%.3e H",L)
printf("\nC=%.3e F",C)
printf("\nm=%.4f",m)
printf("\n2*C/m=%.4e F",2*C/m)
printf("\nL/m=%.4e H",L/m)
printf("\n4*m*C/(1-m^2)=%.4e F",4*m*C/(1-m^2))
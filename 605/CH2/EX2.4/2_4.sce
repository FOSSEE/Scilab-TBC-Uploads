// data 
// output of high power amplifier(W)
Pt=500;
//efficiency
e=0.8;
//gain of transmitting antenna(60dB=10^6)
G=10^6;
// data print
printf("\nPt=500 W\te=0.8\tG=60 dB\n")
//equations and result
printf("\nresult:-")
Pant=e*Pt
printf("\noutput power of antenna Pant=%.2f W",Pant)
L=Pt/Pant
printf("\ninput/output power ratio L=Pt/Pant=%.2f=%.4f dB",L,10*log10(L))
EIRP=Pt*G/L
printf("\nEIRP =%.4f dBw",10*log10(Pt)+10*log10(G)-10*log10(L))
printf("\nEIRP=Pt*G/L=%.2e W",EIRP)
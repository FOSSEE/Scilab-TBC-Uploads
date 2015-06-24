//data in question
//noise power at Th=290 K(dBm)
P1=-70
Th=290
//noise power at Tc=77 K(dBm)
P2=-75
Tc=77
//given noise temperature(K)
Ts=450 
//frequency band B
B=1.5*10^9-500*10^6
//power gain of amplifier(10dB=10)
G=10
//boltzamn constant
k=1.38*10^(-23)
//data print
printf("\nP1=-70 dBm at Th=290 K\tP2=-75 dBm at Tc=77 K \tTs=450 K G=10\n")
//equation and result
printf("\nresult:-")
//Y-factor(Y=P1/P2 = (P1-P2)dBm)
Y=10^((P1-P2)/10)
printf("\n Y-factor = 10^((P1-P2)/10) = %.4f",Y)
//equivalent noise temperature
Te=(Th-Y*Tc)/(Y-1)
printf("\nequivalent noise temperature\nTe=(Th-Y*Tc)/(Y-1)=%.2f K",Te)
//noise power output of amplifier
Po=G*k*Ts*B+G*k*Te*B
printf("\nnoise power output\nPo=G*k*Ts*B+G*k*Te*B=%.4e W",Po)
printf(" = %.4f dBm\n",10*log10(Po*1000))



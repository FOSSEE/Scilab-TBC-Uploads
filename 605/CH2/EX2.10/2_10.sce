//data in question
//noise figure(dB)
NF=3.5
//band width(Hz)
B=(12-10)*10^9
//amplifier gain
G=10^(20/10)
To=290
k=1.38*10^-23
//data print
printf("\nNF=3.5 dB\tB=2 GHz  \tG=20dB\n")
//equations and result
//noise factor
F=10^(NF/10)
printf("\nnoise factor\nF=10^(NF/10)=%f",F)
No=F*k*To*B*G
printf("\noutput noise power\nNo=F*k*To*B*G=%.4e W",No)
printf(" = %.1f dBm",10*log10(No*1000))
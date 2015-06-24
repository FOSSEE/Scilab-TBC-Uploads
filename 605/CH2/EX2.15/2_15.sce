//data in question
To=290
//bandwidth(Hz)
B=500*10^3
k=1.38*10^-23
//noise factor
F=10^(8/10)
//input power at IP
Pip=10
printf("\nB=500kHz\tF=8 dB\tPip=10 dBm")
//equations and result
Nf=k*To*B*F
printf("\nNf=k*To*B*F=%.4e",Nf)
printf(" = %.2f dBm",10*log10(Nf*1000))
Nf=10*log10(Nf*1000)   //Nf in dBm
DR=2/3*(Pip-Nf)    //DR in dB; Pip,Nf in dBm
printf("\ndynamic range\nDR=2/3*(Pip-Nf)=%.2f dB",DR)


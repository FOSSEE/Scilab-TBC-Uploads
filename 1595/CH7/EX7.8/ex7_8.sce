//Communication Techniqu;es : example 7-8 : (pg 315)
nf=5;
x=24;
y=20;
NR0=10^(nf/10);
NR1=10^(y/10);
PG1=10^(x/10);
NR=NR0+((NR1-1)/PG1);
NF=10*log10(NR);
S=-174+NF+60;
a=nf-x;//the system's third-order intercept point 
dr=2/3*(a-S);
printf("\nNR = antilog(NF/10)");//noise ratio
printf("\nNR1 = %.2f",NR0);
printf("\nNR2 = %.f",NR1);
printf("\nOverall NR = NR1+NR2-1/PG1");
printf("\nPG1= antilog(24dB/10) = %.f",PG1);
printf("\nNR = %.2f",NR);
printf("\nNF = %.1f dB",NF);//total system noise figure
printf("\nS = %.1f dBm",S);//sensitivity
printf("\nthe systems third-order intercept point is %.f dBm",a);
printf("\ndynamic range = %.1f dB",dr);

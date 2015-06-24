//Communication Techniqu;es : example 7-9 : (pg 315 & 316)
x=24;
nf=-5;
NR = 3.16+(99/10);
NF = 10*log10(NR);
S=-174+NF+60;
dr = 2/3*(nf-S);
printf("\nNR = %.1f",NR);//noise ratio
printf("\nNF = %.1f dB",NF);//noise figure
printf("\nS = %.1f dBm",S);//sensitivity
printf("\ndynamic range = %.1f dB",dr);

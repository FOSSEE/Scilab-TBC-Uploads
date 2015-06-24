//8.18
clc;
Vcom=0.5*(2+2);
Acom=5*10^-3/Vcom;
CMRR=20*log10(50/Acom);
printf("CMRR=%.2f dB",CMRR)
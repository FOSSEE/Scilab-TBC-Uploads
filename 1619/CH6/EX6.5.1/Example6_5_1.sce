//Example 6.5.1 page 6.11

clc;
clear;

lamda_p= 980*10^-9;
lamda_s=1550*10^-9;
P_in=30;    // in mW....
G=100;

Ps_max= ((lamda_p*P_in)/lamda_s)/(G-1);
printf("\nMaximum input power is:%.5f mW",Ps_max);

Ps_out= Ps_max + (lamda_p*P_in/lamda_s);
Ps_out= 10*log10(Ps_out);
printf("\n\nOutput power is:%.2f dBm",Ps_out);

clear;
clc;
V_s=230;//V
R=10;//ohm
V_m=sqrt(2)*V_s;
V_o=2*V_m/%pi;    printf("avg value of o/p voltage=%.2f V",V_o);
I_o=V_o/R;    printf("\navg value of o/p current=%.3f A",I_o);
I_DA=I_o/2;    printf("\navg value of diode current=%.3f A",I_DA);
I_Dr=I_o/sqrt(2);    printf("\nrms value of diode current=%.3f A",I_Dr);

printf("\nrms value of o/p current=%.3f A",I_o);
printf("\nrms value of i/p current=%.3f A",I_o);
pf=(V_o/V_s);    printf("\nsupply pf=%.2f",pf);
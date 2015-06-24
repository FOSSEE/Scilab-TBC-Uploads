clear;
clc;

Oat1=0.1;
Oacb=0.15;
Oafd=1.2;
Oat2=0.3;

Obt1=0.1;
Obcb=0.15;
Obfd=5.2;
Obt2=0.3;

Oct1=0.5;
Occb=0.4;
Ocfd=2;
Oct2=0.6;

Rat1=6;
Racb=4;
Rafd=5;
Rat2=5;

Rct1=8;
Rccb=5;
Rcfd=3;
Rct2=4;

N=120;
S=3;

Of=((N/(N+S))*Oafd)+((S/(N+S))*Obfd);
Oafe=Oat1+Oacb+Of+Oat2;
Ocfe=Oct1+Occb+Ocfd+Oct2;

Rae=((Oat1*Rat1)+(Oacb*Racb)+(Of*Rafd)+(Oat2*Rat2))/Oafe;
Rce=((Oct1*Rct1)+(Occb*Rccb)+(Ocfd*Rcfd)+(Oct2*Rct2))/Ocfe;

R=Oafe+Ocfe;
mprintf("\n(a)Annual Outage Rate = %.3f outage per year",R);

TperO=((Oafe*Rae)+(Ocfe*Rce))/R;
mprintf("\n(b)Downtime per Outage = %.2f hours",TperO);

T=TperO*R;
mprintf("\n(a)Total outage time per year = %.2f hours per year",fix(T*100)/100);

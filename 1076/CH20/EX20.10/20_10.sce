clear;
clc;

On=3;
Os=9
Oa=1
rn=6
ra=8;
n=110;
s=4;

y=24*365;
Rn=rn/y;
Ra=ra/y;
N=n/y;
S=s/y;

Ofe=((N/(N+S))*((On*On*2*Rn)+((S/N)*2*On*Os*Rn)+((S/N)*2*On*Os*Rn)+((2*S*S/N)*(Os*Os))));
Oes=2*(Oa*Ra*On);

Rfe=Rn*Rn*y/(2*Rn);
Res=Rn*Ra*y/(Ra+Rn);

R=Ofe+Oes;
mprintf("\n(a) Annual Outage rate= %.4f outages per year", fix(R*10000)/10000);

TO=(Ofe*Rfe)+(Oes*Res);
mprintf("\n(b) Total outage time per year = %.2f hours per year",TO);

TperO=TO/R;
mprintf("\n(c) Downtime per Outage = %.1f hours",TperO);

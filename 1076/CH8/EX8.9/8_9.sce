clear;
clc;

T2=65;
T1=20;
n=3;
restivity=.02826;
A=400;


R=restivity/A;

Eff_SnL=2/100;
Rdc20= (1+Eff_SnL)*(1+Eff_SnL)*R;

a=0.004
Rdc65=Rdc20 * (1+(a*(T2-T1)));

Eff_Skin_Prox=3.5/100;
Rac= (1+Eff_Skin_Prox)*(1+Eff_Skin_Prox)*Rdc65;

ti_core=2.7;
ti_belt=1.2;
tins=ti_belt+ti_core;

r=13;
ratio_tins_dia=tins/(2*r);

Gi3=.65;

Gi=Gi3/3;

R1=35.2e-3;
R2=40e-3;
h=.75
g1=5;
g2=1.5;
Gp=g1*log(R2/R1)/(2*%pi);
Gs=g2*log((2*h)/R2)/(2*%pi);

sheathlosses=.1;

I=((T2-T1)/(n* Rac * (Gi + ((1+sheathlosses)*(Gp+Gs)))))^.5
mprintf("Current Rating =%d Amperes",I);



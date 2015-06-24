//Example 8.16

clear;

clc;

R1=1*10^3;

R2=99*10^3;

PM=45;

ft1=1*10^6;

ft2=ft1;

Cf=sqrt((1+(R2/R1))/(ft1*ft2))/(2*%pi*R2);

a0=2*10^5;

T0=(a0^2)/100;

fp=(1/(2*%pi*R2*Cf));

fB=fp;

PMs=PM*2;

T0s=a0/100;

fBs=ft1/100;

printf("(a) Composite Amplifier with feedback Lead Compensation Parameters :");

printf("\n    PM=%.f degrees",PM);

printf("\n    T0=");

disp(T0);

printf("    fB=%.f kHz",fB*10^(-3));

printf("\n\n    Single Op Amp Parameters :");

printf("\n    PM=%.f degrees",PMs);

printf("\n    T0=");

disp(T0s);

printf("    fB=%.f kHz",fBs*10^(-3));

Cf2=((1+(R2/R1))^(1/4))*Cf;

fp2=(1/(2*%pi*R2*Cf2));

fz2=(1+(R2/R1))*fp2;

fx2=sqrt(fp2*fz2);

PM2=180-180-[(180/%pi)*((atan(fx2/fz2))-atan(fx2/fp2))];

printf("\n\n(b) Cf=%.1f pF",Cf2*10^12);

printf("\n    fp=%.2f kHz",fp2*10^(-3));

printf("\n    PM=%.1f degrees",PM2);

printf("\n\n(c) Increasing Cf above %.1f pF will reduce PM until eventually PM=0 degrees,",Cf2*10^12);

printf("\n    indicating the overcompensation is decremental.")
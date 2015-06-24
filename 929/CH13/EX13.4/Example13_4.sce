//Example 13.4

clear;

clc;

Kv=10^4;

wx=10^3;

pm=45;

wz=wx;

wp=(wz^2)/Kv;

C=0.1*10^(-6);

R2=1/(wz*C);

R1=(1/(wp*C))-R2;

printf("(a) Designed Passive Lag-Lead Filter :");

printf("\n    R1=%.2f kohms",R1*10^(-3));

printf("\n    R2=%.2f kohms",R2*10^(-3));

printf("\n    C=%.1f uF",C*10^6);

wxact=1.27*10^3;

T=(1+(%i*(wxact/wz)))/(((%i*wxact)/Kv)*(1+((%i*wxact)/wp)));

Tang=((180/%pi)*atan(imag(T)/real(T)))-180;

PMact=180+Tang;

printf("\n\n(b) Actual Value of wx=%.2f krad/s",wxact*10^(-3));

printf("\n    Actual Phase Margin (PM)=%.f deg",PMact);
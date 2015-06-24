//Example 2.9

clear;

clc;

R1=10*10^3;

R3=R1;

R2=100*10^3;

R4=R2;

p=0.01;

emax=4*p;

Adm1=R2/R1;

Adm2n=emax*(R1+2*R2);

Adm2d=2*(R1+R2);

Adm2=1-(Adm2n/Adm2d);

Admin=Adm1*Adm2;

Acmax=(R2/(R1+R2))*emax;

cmrrm=20*log10(Admin/Acmax);

printf("(a) CMRR min=%.1f dB",cmrrm);

//2.9(b)

vdm=0;

vcm=10;

vO=vcm*Acmax+vdm*Admin;

printf("\n(b) Output Error vO=%.3f V",vO);

//2.9(c)

//CMRR=20*log((1+(R2/R1))/emax) -> 80=20*log((1+(R2/R1))/emax) -> 4=log((1+(R2/R1))/emax) ->10^4=(1+(R2/R1))/emax -> emax=10^4/(1+(R2/R1))

emax1=(1+(R2/R1))/(10^(4));

p=emax1/4;

pper=p*100;

printf("\n(c) Required Resistance Tolerance=%.4f percent",pper);
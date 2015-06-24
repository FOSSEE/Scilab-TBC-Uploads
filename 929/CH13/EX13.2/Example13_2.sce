//Example 13.2

clear;

clc;

w0=10^5;

Q=5;

C1=100*10^(-12);

C2=C1;

gm2=w0*sqrt(C1*C2);

gm3=gm2;

gm1=((sqrt(C1/C2))*sqrt(gm2*gm3))/Q;

printf("(a) gm1=%.d uA/V",gm1*10^6);

printf("\n    gm2=gm3=%.d uA/V",gm2*10^6);

R=1/gm1;

L=C2/(gm2*gm3);

printf("\n\n(b) R=%.f kohms",R*10^(-3));

printf("\n    L=%.f H",L);

s1=-1;

s2=(1/2);

s3=-(1/2);

printf("\n\n(c) The sensitivities of the filter are :");

printf("\n    s1 (for gm1)=%.f",s1);

printf("\n    Other sensitivities are either %.1f or ",s2);

printf("%.1f",s3);
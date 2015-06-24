//Example 6.6(a)

clear;

clc;

R=100*10^3;

R1=2*10^3;

R2=18*10^3;

b=R1/(R1+R2);

A0=-(1+(R2/R1))*R;

a0=2*10^5;

ft=1*10^6;

ro=100;

fB=b*ft;

Ri=[R+((R1*R2)/(R1+R2))]/(1+(a0*b));

Ro=ro/(1+(a0*b));

fb=ft/a0;

printf("A(jf)=(%d V/A)",A0);

printf("/(1+(jf/%.d))",fB);

printf("\nZi(jf)=%.d",Ri);

printf("*(1+j(f/%.d))",fb);

printf("/(1+(jf/%.d)) ohms",fB);

printf("\nZo(jf)=%.d",Ro*10^3);

printf("*(1+j(f/%.d))",fb);

printf("/(1+(jf/%.d)) mohms",fB);
//Example 6.4

clear;

clc;

rd=1*10^6;

rc=1*10^9;

a0=10^5;

ro=100;

ft=1*10^6;

R1=2*10^3;

R2=18*10^3;

b=R1/(R1+R2);

fB=b*ft;

Rs=rd;

Rd=rd*(1+(a0*b));

Rp=((2*rc)*Rd)/((2*rc)+Rd);

Ceq=1/(2*%pi*fB*rd);

f1=(Rs/Rp)*fB;

printf("Element Values in the Equivalent Circuit of Zi :");

printf("\nRs=%.2f Mohms",Rs*10^(-6));

printf("\nRp=%.2f Gohms",Rp*10^(-9));

printf("\nCeq=%.2f pF",Ceq*10^12);

printf("\n\nBreakpoint Frequencies of Magnitude Plot :");

printf("\nfB=%.2f kHz",fB*10^(-3));

printf("\nf1=%.2f Hz",f1);
//Example 6.5

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

fb=ft/a0;

fB=b*ft;

Rp=ro;

Rs=ro/(1+(a0*b));

Leq=ro/(2*%pi*fB);

printf("Element Values in the Equivalent Circuit of Zo :");

printf("\nRs=%.f mohms",Rs*10^(3));

printf("\nRp=%.2f ohms",Rp);

printf("\nLeq=%.f uH",Leq*10^6);

printf("\n\nBreakpoint Frequencies of Magnitude Plot :");

printf("\nfb=%.2f Hz",fb);

printf("\nft=%.2f MHz",ft*10^(-6));
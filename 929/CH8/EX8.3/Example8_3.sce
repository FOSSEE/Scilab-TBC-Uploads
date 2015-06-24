//Example 8.3

clear;

clc;

R1=30*10^3;

R2=R1;

Cext=3*10^(-12);

GBP=20*10^6;

Cd=7*10^(-12);

Cc=12*10^(-12);

Cn=Cext+Cd+(Cc/2);

Rp=(R1*R2)/(R1+R2);

Cf1=0;

fz1=1/(2*%pi*Rp*(Cn+Cf1));

ft=20*10^6;

Q=sqrt((ft)/(2*fz1));

pm=(180/%pi)*acos((sqrt(1+(1/(4*Q^4))))-(1/(2*Q^2)));

Cf2=(R1/R2)*Cn;

fp=1/(2*%pi*R2*Cf2);

x=poly(0,'f');

A=-1/[(1+(%i*(x/fp)))*(1+(%i*(x/(0.5*ft))))];

printf("(a) Phase Margin with Cf absent=%.1f degrees",pm);

printf("\n(b) Cf for PM=90 degrees=%.2f pF",Cf2*10^12);

printf("\n(c) A(jf)=");

disp(A);
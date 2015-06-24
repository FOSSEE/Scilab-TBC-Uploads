//Example 8.4

clear;

clc;

R1=30*10^3;

R2=R1;

ft=20*10^6;

Cext=3*10^(-12);

GBP=20*10^6;

Cd=7*10^(-12);

Cc=12*10^(-12);

Cf=(R1/R2)*((Cc/2)+Cext);

Cn=Cext+Cd+(Cc/2);

fx=ft/(1+(Cn/Cf));

x=poly(0,'f');

A=(1+(R2/R1))/(1+(%i*(x/fx)));

printf("A(jf)=");

disp(A);

printf("V/V");
//Frequency Modulation : Transmission : example 5-7 : (pg 218  & pg 219)
mf=0.25;
a=0.98;
b=0.12;
x=10*10^3;
P=(a^2)*x;
P1=(b^2)*x;
t=P+2*P1;
printf("\nFor mf=0.25,the carrier is equal to0.98 times its unmodulated amplitude & the only significant sideband is J1 with a relative amplitude of 0.12");
printf("\ncarrier power = %.f W",P);
printf("\npower of each sideband = %.f W",P1);
printf("\ntotal power = %.f W",t)

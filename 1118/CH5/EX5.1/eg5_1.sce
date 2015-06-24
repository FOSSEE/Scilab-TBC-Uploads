clear;
//clc();
V=100;..//voltage betwen line conductor and earth
k1=0.1;
n=4;
k=sqrt(k1);

V1=(V*sinh(k)/sinh(n*k));
printf("\n the voltage1 is:  %.2f V\n ",V1);

V2=(V*sinh(2*k)/sinh(n*k));
printf("\n the volatge2 is:  %.2f V\n ",V2);

V3=(V*sinh(3*k)/sinh(n*k));
printf("\n the voltage3 is:  %.2f V\n ",V3);

V4=V;
printf("\n the voltage4 is:  %.2f V\n ",V4);

v1=V1;

v2=V2-V1;

v3=V3-V2;

v4=V4-V3;

eff=(sinh(n*k)/(n*(sinh(n*k)-sinh((n-1)*k))));
printf("\n the string efficiency is:  %.2f percent\n ",eff*100);

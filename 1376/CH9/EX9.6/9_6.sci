//9.6
clc;
E2=((1.8+5*0.16)^2+(2.4+5*0.195)^2)^0.5;
pf2=2.6/E2;
AT_sec=600;
sina=3.375/E2;
AT_pri=600+10.1*pf2+13.4*sina;
I1=AT_pri/40;
Ratio_error=(15-I1)*100/I1;
printf("Ratio error=%.2f percent",Ratio_error)


//Example 11.17

clear;

clc;

VI=12;

Vo=5;

D1=Vo/VI;

D1per=D1*100;

printf("(a) D=%.1f percentage",D1per);

Vsat1=0.5;

VF1=0.7;

D2=(Vo+VF1)/(VI-Vsat1+VF1);

D2per=D2*100;

printf("\n\n(b) D=%.1f percentage",D2per);

VImin=8;

VImax=16;

D1max=Vo/VImin;

D1min=Vo/VImax;

D1minper=D1min*100;

D1maxper=D1max*100;

printf("\n\n(c) Duty Cycle for case(a): %.1f<=D(percentage)",D1minper);

printf("<=%.1f",D1maxper);

Vsat1=0.5;

VF1=0.7;

D2max=(Vo+VF1)/(VImin-Vsat1+VF1);

D2maxper=D2max*100;

D2min=(Vo+VF1)/(VImax-Vsat1+VF1);

D2minper=D2min*100;

printf("\n    Duty Cycle for case(b): %.1f<=D(percentage)",D2minper);

printf("<=%.1f",D2maxper);
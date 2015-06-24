clear;
clc;
r=1.25;d1=75;d2=150;
r1=0.7718*r;
ds=nthroot((r1*r1*d1*d1),4);
dm=sqrt(d2*(sqrt((d2*d2)+(d1*d1))));
L=0.9212*log10(dm/ds);
printf("Total loop inductance = %f mH/loop km",round(L*100)/100);

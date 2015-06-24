clear;
clc;
R=600;f=4000;
a=3;
w=2*%pi*f;
C=sqrt((exp(2*3*0.115)-1)/(4*w*w*R*R));
printf("-C = %f microfarads\n",round(C*(10^9))/1000);
L=2*C*R*R;
printf(" -L = %f mH",fix(L*(10^5))/100);

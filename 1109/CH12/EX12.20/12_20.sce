clear;
clc;
w1=1000;w2=1500;w3=2000;w4=3000;w5=5000;w=100;Z=%i*100;
F=((w*w)-(w2*w2))*((w*w)-(w4*w4))/(((w*w)-(w1*w1))*((w*w)-(w3*w3))*((w*w)-(w5*w5)));
H=Z/(%i*w*F);
A=((w1*w1)-(w2*w2))*((w1*w1)-(w4*w4))/(((w1*w1)-(w3*w3))*((w1*w1)-(w5*w5)));
B=((w3*w3)-(w2*w2))*((w3*w3)-(w4*w4))/(((w3*w3)-(w5*w5))*((w3*w3)-(w1*w1)));
C=((w5*w5)-(w2*w2))*((w5*w5)-(w4*w4))/(((w5*w5)-(w1*w1))*((w5*w5)-(w3*w3)));
C2=-1/(H*A);
printf("-C2 = %f microfarads\n",round(C2*(10^6)*100)/100)
L2=1/(w1*w1*C2);
printf("-L2 = %f henry\n",round(L2*100)/100);
C4=-1/(H*B);
printf("-C4 = %f microfarads\n",round(C4*(10^6)*100)/100);
L4=1/(w3*w3*C4);
printf("-L4 = %f henry\n",round(L4*100)/100);
C6=-1/(H*C);
L6=1/(w5*w5*C6);
printf("-C6 = %f microfarads\n",round(L6*100)/100);
printf("-L6 = %f henry\n",round(C6*(10^6)*100)/100)

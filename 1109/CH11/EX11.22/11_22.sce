clear;
clc;
Z1o=1260*(exp(%i*30/(180/(%pi))));Z2o=2430*(exp(-%i*34/(180/(%pi))));
Z1s=318*(exp(%i*72/(180/(%pi))));Z2s=613*(exp(%i*8/(180/(%pi))));
Zi1=sqrt(Z1o*Z1s);
A=real(Zi1);
B=imag(Zi1);
printf("(i)Image impedance Zi1 = %f /_ %f ohms\n",round(abs(Zi1)),atan(B,A)*180/%pi);
Zi2=sqrt(Z2o*Z2s);
C=real(Zi2);
D=imag(Zi2);
printf("  Image impedance Zi2 = %f /_ %f ohms\n",round(abs(Zi2)),atan(D,C)*180/%pi);
Z3=sqrt(Z2o*(round(Z1o)-round(Z1s)));
Z1=Z1o-Z3;
Z2=Z2o-Z3;

P=atanh(sqrt(Z1s/Z1o));
printf(" (ii)Propagation constant = %f /_ %f\n",round(abs(P*100))/100,round(atan(imag(P),real(P))*100)/100);
printf(" (iii)The elements of the T network are:\n");
printf("     Z1 = %f + j(%f) ohms\n",round(real(Z1)),round(imag(Z1)));
printf("     Z2 = %f + j(%f) ohms\n",round(real(Z2)),round(imag(Z2)));
printf("     Z3 = %f + j(%f) ohms",round(real(Z3)),round(imag(Z3)));


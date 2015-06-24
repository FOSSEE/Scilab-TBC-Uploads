clear;
clc;
l=5;f=5000/(2*%pi);Rs=175;Ls=10*(10^-3);Rsh=270;Csh=0.2*(10^-6);
w=2*%pi*f;
Z1=(Rs+(%i*w*Ls)); //Z1=Z1/2
Z2=Rsh-(%i/(w*Csh));
t=sqrt((Z1)/((Z1)+(2*Z2)));
P=2*(atanh(t))/l;
A=real(P);
B=imag(P);
printf("Propagation constant = % f + %f per loop km\n",round(A*100)/100,round(B*100)/100);
Zo=Z1/(tanh((P*l)/2));
C=real(Zo);
D=imag(Zo);
printf("Characteristic impedance = %f /_ %f ohms",round(abs(Zo)*1000)/1000,round(atan(D,C)*180/%pi));
//the difference in result  is due to erroneous value in textbook.
disp("The difference in result is due to erroneous value in textbook")

clear;
clc;
f=7.5*(10^3);R=2.6;L=2.4*(10^-3);C=.0078*(10^-6);G=.11*(10^-6);l=50;Vs=10;
w=2*%pi*f;
Z=R+(%i*w*L);
Y=G+(%i*w*C);
Zo=sqrt(Z/Y);
P=sqrt(Z*Y);
Is=Vs/Zo;
Ir=Is*(exp(-P*l));
Ir1=abs(Ir);
Rr=real(Zo);
Pr=Ir1*Ir1*Rr;
printf("Power consumed in load is Pr = %f mW",round(Pr*(10^3)*10)/10);
//the difference in result  is due to erroneous value in textbook.
disp("The difference in result is due to erroneous value in textbook")

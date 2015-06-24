clear;
clc;
f=1000;l=1000;R=10.4;L=0.00367;G=0.8*(10^-6);C=0.00835*(10^-6);Es=10;
//value of Es as taken in solution
w=2*%pi*f;
Z=R+round((%i*w*L));
Y=G+(%i*w*C);
Zo=sqrt(Z/Y);
P=sqrt(Z*Y);
Is=Es/Zo;
Ir=Is*exp(-P*l);
P=((abs(Ir))^2)*real(Zo);
printf("-Power delivered at receiving end = %f micro-watt",P*(10^6));
//the difference in result  is due to erroneous value in textbook.
disp("The difference in result is due to erroneous value in textbook")

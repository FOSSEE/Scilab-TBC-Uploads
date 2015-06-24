clear;
clc;
f=5000/(2*%pi);R=196;C=.09*(10^-6);L=.71*(10^-3);G=0;
//value of C as taken in solution
w=2*%pi*f;
Z=R+(%i*w*L);
Y=G+(%i*w*C);
Zo=sqrt(Z/Y);
printf('-Characteristic impedance is Zo = %f /_%f ohms\n',fix(abs(Zo)),round(((atan(imag(Zo),real(Zo))*180/%pi))*10)/10);
P=sqrt(Z*Y);F=fix(abs(P)*100)/100;
printf("-Propagation constant P =  %f /_%f ohms\n',F,((atan(imag(P),real(P))*180/%pi))); 
//the difference in result  is due to erroneous value in textbook.
disp("The difference in result is due to erroneous value in textbook")

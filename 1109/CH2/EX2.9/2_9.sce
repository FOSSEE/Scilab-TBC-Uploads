clear;
clc;
Vs=1;f=1000;l=150;Zo=692*exp(%i*(-%pi/(180/12)));a=0.0047;b=0.022;Vr=0;
P=a+(%i*b);
Ir=1/(Zo*sinh((a*l)+(b*l)));
C=real(Ir);
D=imag(Ir);
printf("Output current(in amperes)= %f /_ %f mA",round(abs(Ir)*10^6)/1000,atan(D,C)*180/%pi);
//the difference in result  is due to erroneous value in textbook.
disp("The difference in result is due to erroneous value in textbook")

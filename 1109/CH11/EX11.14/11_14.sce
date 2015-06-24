clear;
clc;
L=20*(10^-3);C=0.064*(10^-6);f=400;
w=2*%pi*f;
Z1=round(2*%i*w*L*10)/10;
Z2=1/(%i*w*C);
Zo=sqrt((Z1*Z1/4)+(Z1*Z2));
printf("Characteristic impedance = %f ohms\n",round(Zo*100)/100);
Pf=(1+(Z1/(2*Z2)));
printf(" Propagation constant = %f",round(Pf*100)/100);
//the difference in result  is due to erroneous value in textbook.
disp("The difference in result is due to erroneous value in textbook")

clear;
clc;
V1=5;V2=4;R1=5;R2=4;I3=1;R3=10;R4=5;
V3=I3*R3;
Y1=1/R1;Y2=1/R2;Y3=1/R3;
V4=((V1*Y1)+(V2*Y2)+(V3*Y3))/(Y1+Y2+Y3);
I4=V4/R4;
printf("Voltage across resistor R4 = %f volts\n",V4);
printf("Current in resistor R4 = %f Amp",I4);
//the difference in result  is due to erroneous value in textbook.
disp("The difference in result is due to erroneous value in textbook")

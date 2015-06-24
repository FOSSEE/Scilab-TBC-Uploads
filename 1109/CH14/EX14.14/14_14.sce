clear;
clc;
f1=12000;f2=16000;Rk=600;
C1=(f2-f1)/(4*%pi*Rk*f1*f2);
L1=Rk/(%pi*(f2-f1));
C2=1/(%pi*Rk*(f2-f1));
L2=Rk*(f2-f1)/(4*%pi*f1*f2);
printf("The elements of the prototype band pass filter are:\n");
printf("  L1 = %f mH\n",round(L1*(10^5))/100);
printf("  C1 = %f picofarads\n",round(C1*(10^12)));
printf("  L2 = %f mH\n",L2*(10^3));
printf("  C2 = %f microfarads",C2*(10^6));
//the difference in result of L2 and C2 is due to erroneous value in textbook.
disp("The difference in result of C2 and L2 is due to erroneous value in textbook")

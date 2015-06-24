clear;
clc;
Rk=600;f1=120*(10^3);f2=123*(10^3);
C1=(f2-f1)/(4*%pi*Rk*f1*f2);
L1=Rk/(%pi*(f2-f1));
C2=L1/(Rk*Rk);
L2=Rk*(f2-f1)/(4*%pi*f1*f2);
printf("The elements of the T-type constant k band pass filter are:\n");
printf(" L1 = %f mH\n",fix((L1)*(10^4))/10);
printf(" C1 = %f picofarads\n",fix((C1)*(10^14))/100);
printf(" L2 = %f microhenry\n",fix((L2)*(10^7))/10);
printf(" C2 = %f microfarads",round((C2)*(10^9))/1000);
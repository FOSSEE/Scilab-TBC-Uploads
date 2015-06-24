clear;
clc;
Rk=600;fc=1000;fi=1050;
L0=Rk/(%pi*fc);
C0=1/(%pi*fc*Rk);
m=round(sqrt(1-((fc/fi)^2))*10)/10;
L1=m*L0/2;
printf("-mL/2 = %f mH\n",round(L1*(10^3)*100)/100);
C=m*C0;
printf("-mC = %f microfarads\n",round(C*(10^6)*1000)/1000);
L2=L0*((1-(m*m))/(4*m));
printf("-(1-m^2)L/(4m) = %f mH",L2*(10^3));
//the difference in result is due to erroneous value in textbook.
disp("The difference in result is due to erroneous value in textbook")

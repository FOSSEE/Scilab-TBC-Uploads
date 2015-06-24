clear;
clc;
Rk=500;fc=4000;fi=5000; //fi=frequency at which infinite attenuation occurs
L0=Rk/(%pi*fc);
C0=1/(%pi*fc*Rk);
printf("The elements of the constant-K L.P. are:\n");
printf("  L = %f mH\n",round(L0*(10^4))/10);
printf("  C = %f microfarads\n\n",round(C0*(10^9))/1000);
m1=sqrt(1-((fc/fi)^2));
L1=m1*L0/2;
L2=(1-(m1*m1))*L0/(4*m1);
C1=m1*C0;
printf("The elements of the m-derived L.P.T. filter are:\n");
printf("  mL/2 = %f mH\n",round(L1*(10^5))/100);
printf("  C = %f microfarads\n",round(C1*(10^10))/10^4);
printf("  Lshunt = %f mH\n\n",round(L2*(10^5))/100);
m2=0.6;
L3=m2*L0/2;
L4=(1-(m2*m2))*L0/(2*m2);
C2=m2*C0/2;
printf("The elements of the terminating half sections m-derived L.P.T. filter are:\n");
printf("  Lseris = %f mH\n",round(L3*(10^5))/100);
printf("  C = %f microfarads\n",round(C2*(10^10))/10^4);
printf("  Lshunt = %f mH\n\n",round(L4*(10^5))/100);
printf("The complete composite filter is constructed by using the  constant-K in cascade with the short-cut of m-derived section and terminating half section");
//the difference in result of the elements of the m derived L.P. T section is due to erroneous value in textbook.
disp("The difference in result of the elements of the m derived L.P. T section is due to erroneous value in textbook")

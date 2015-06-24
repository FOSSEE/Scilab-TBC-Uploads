clear;
clc;
fc=5000;fi=1.25*fc;Rk=600; //fi=frequency at which infinite attenuation occus
L0=Rk/(%pi*fc);
C0=1/(%pi*fc*Rk);
m=sqrt(1-((fc/fi)^2));
L1=m*L0/2;
L2=(1-(m*m))*L0/(4*m);
C1=m*C0;
printf("The elements of the m-derived L.P.T. filter are:\n");
printf("  mL/2 = %f mH\n",round(L1*(10^5))/100);
printf("  mC = %f microfarads\n",fix(C1*(10^10))/10^4);
printf("  (1-m^2)L/4m = %f mH",round(L2*(10^4))/10);

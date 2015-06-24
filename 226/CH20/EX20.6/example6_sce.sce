//chapter 20
//example 20.6
//page 925
printf("\n")
printf("given")
Vs=10;Vf=1.7;Is=500*10^-6;Ih=1.5*10^-3;E=30;R=27*10^3;C=.5*10^-6;
R1max=(E-Vs)/Is
R1min=(E-Vf)/Ih
t=C*R*log((E-Vf)/(E-Vs));
printf(" capacitor charging time is %3.4fs\n",t)
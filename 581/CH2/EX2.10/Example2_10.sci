
clear;
clc;

printf("\t Example 2.10\n");

h1=200; // convective heat transfer coefficient, W/(m^2*K)
a=1/60000; // 1/a=l/Kal, l=0.001m, Kal=160 W/(m*K)
h2=5000; //convective heat transfer coefficient during boiling,W/(m^2*K)

U=1/(1/h1+a+1/h2)+0.40;
printf("\t overall heat transfer coefficient is : %.1f W/(m^2*K)\n",U);
//end
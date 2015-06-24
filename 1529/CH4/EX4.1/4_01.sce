//Chapter 4, Problem 1
clc;
//There is eight cell with same emf and internal resistance
r=0.2;
emf=2.2;
//When connected in series
Temf=8*emf;
Tr=8*r;
//When connected in parallel
Tr1=(1/8)*r;
printf("Total emf in series = %f V\n\n\n",Temf);
printf("Total internal resistance in series = %f ohm\n\n\n",Tr);
printf("Total emf in parallel = %f V\n\n\n",emf);
printf("Total internal resistance in parallel = %f ohm\n\n\n",Tr1);

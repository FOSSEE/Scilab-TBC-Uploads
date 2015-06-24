//Example 1.10(a)

clear;

clc;

R1=100*10^3;

R2=100*10^3;

ro=75;//Output Resistance

a=200*10^3;//Open Loop Gain for ic741
 
b=R1/(R1+R2);//Feedback Factor

T=a*b;//Loop Gain

Trec=1/T;

Atemp=1+Trec;

Atempr=1/Atemp;

A=(-R2/R1)*Atempr;//Gain

Rnnum=R2+ro;

Rnden=1+a;

Rn=Rnnum/Rnden;//Equivalent Resistance of the  inverting input(Calculation Mistake in the book as a is taken as 10^5 rather than 2*10^5)

Ri=R1+Rn;//Equivalent Input Resistance

Ro=ro/(1+T);//Equivalent Output Resistance

printf("A=%.5f V/V",A);

printf("\nRn=%.2f ohms ",Rn);//answer in textbook is wrong

printf("\nRi=%.2f kohms",(Ri/1000));

printf("\nRo=%.2f mohms",(Ro*1000));
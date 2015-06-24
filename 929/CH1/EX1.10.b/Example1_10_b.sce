//Example 1.10(b)

clear;

clc;

R1=1*10^3;

R2=1*10^6;

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

printf("\nRn=%.2f ohms",Rn);

printf("\nRi=%.3f kohms",(Ri/1000));

printf("\nRo=%.3f ohms",Ro);
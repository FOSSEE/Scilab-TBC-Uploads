//Example 1.9(b)

clear;

clc;

rd=2*10^6;//Input Resistance

ro=75;//Output Resistance

a=200*10^3;//Open loop Gain

printf("Note (as mentioned in the book): Because of much larger value, we simply ignore the exact calculations and use only the approximations.");

//R12=infinity

R2=0;

//b2=R12/(R12+R22) (Feedback Factor)will be equal to 1 as R12 tends to infinity and R22 is 0

b=1;//Feedback Factor

T=a*b;//reteurn ratio or loop gain

//Aapprox=(1+(R22/R12))*(1/(1+(1/T2)))(Approximate Gain) but R22/R12=0

Trec=1/T;

Aden=(1+Trec);

Anum=1;

Aapprox=Anum/Aden;//Approximate Gain

Riapprox=rd*(1+T);//Approximate Input Resistance

Roapprox=ro/(1+T);//Approximate Output Resistance

//Ideal Value of input resistance Ri2 is infinity and ideal value of output resistance Ro2 is 0.

printf("\nApproximate Value of A is =%.f V/V",Aapprox);

printf("\nIdeal Value of A is =%.2f V/V",1);

printf("\nApproximate Value of Ri is =%.3f Gohms",Riapprox/10^9);

printf("\nIdeal Value of Ri is infinity");

printf("\nApproximate Value of Ro is =%.3f uohms",Roapprox*10^6);

printf("\nApproximate Value of Ro is =%.f ohms",0);
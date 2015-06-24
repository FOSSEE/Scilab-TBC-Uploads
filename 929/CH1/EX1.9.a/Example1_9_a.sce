//Example 1.9(a)

clear;

clc;

rd=2*10^6;//Input Resistance

ro=75;//Output Resistance

a=200*10^3;//Open loop Gain

R1=1*10^3;

R2=999*10^3;

b=R1/(R1+R2);//Feedback Factor

T=a*b;//reteurn ratio or loop gain

Aapprox=(1+(R2/R1))*(1/(1+(1/T)))//Approximate Gain

Riapprox=rd*(1+T);//Approximate Input Resistance

Roapprox=ro/(1+T);

Anum=((1+(R2/R1))*a)+(ro/rd)//Numerator of exact Gain

Aden=1+a+(R2/R1)+((R2+ro)/rd)+(ro/R1);//Denominator of exact Gain

Aexact=Anum/Aden;//exact Gain

Ri1=rd*(1+(a/(1+((R2+ro)/R1))));

Ri2=(R1*(R2+ro))/(R1+R2+ro);

Riexact=Ri1+Ri2;//Exact Input Resistance

Ronum=ro;

Roden=1+((a+(ro/R1)+(ro/rd))/(1+(R2/R1)+(R2/rd)))

Roexact=Ronum/Roden;//Exact Output Resistance

//Ideal Value of input resistance Ri1 is infinity and ideal value of output resistance Ro1 is 0. 

printf("Exact Value of A is =%.2f V/V",Aexact);

printf("\nApproximate Value of A is =%.3f V/V",Aapprox);

printf("\nIdeal Value of A is =%.3f V/V",1000);

printf("\nExact Value of Ri is =%.3f Mohms",Riexact/10^6);

printf("\nApproximate Value of Ri is =%.3f Mohms",Riapprox/10^6);

printf("\nIdeal Value of Ri is infinity");

printf("\nExact Value of Ro is =%.3f mohms",Roexact*10^3);

printf("\nApproximate Value of Ro is =%.3f mohms",Roapprox*10^3);

printf("\nApproximate Value of Ro is =%.3f ohms",0);
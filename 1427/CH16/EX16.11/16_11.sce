//ques-16.11
//Calculating amount of A and B left unreacted after 2 hours in two given conditions
clc
a=1;//say
t1=1;//time (in hours)
x1=(75/100)*a;

//Part (i) - 1st order in A
k=(2.303/t1)*log10(a/(a-x1));//rate constant (in /h)
//k=(2.303/t)*log10(a/(a-x))
t2=2;//(in h)
x2=(15/16)*a;
printf("(i) Amount of A and B left unreacted are %.2f and 100 percent respectively.\n",(a-x2)*100);

//Part (ii) - 1st order in A and B
k=x1/(a*t1*(a-x1));//rate constant (in L/mol/h)
//k=x/(a*t*(a-x))
x2=(6/7)*a;
printf(" (ii) Amount of A and B left unreacted is %.3f percent.",(a-x2)*100);

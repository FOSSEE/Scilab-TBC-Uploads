//ques-6.7
//Calculating reduction potential for reduction of oxygen
clc
pH=7;
p=0.2;//partial pressure of O2 (in bar)
Es=1.229;//standard emf (in V)
H=10^(-pH);//concentration of hydrogen ion
n=2;//number of electrons
E=Es-(0.0592/n)*log10(1/(H^2*sqrt(p)));
printf("the reduction potential required is %.3f V.",E);

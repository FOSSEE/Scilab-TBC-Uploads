//Example number 3.15, Page number 52

clc;clear;
close;

//Variable declaration
KbT=0.025;
nbyN=1/10**10;    //concentration
N=10**29;
//Calculation
x=2*KbT;
Ev=x*log(1/nbyN);     //value of concentration(eV)
n=1/((N*nbyN)**(1/3));     //average seperation(m)
//Result
printf("value of concentration is %.1f eV",Ev)
printf("\n average seperation is %.2e m",n)


//To find the Time Constant Maximum Current and Time

//Example 38.5

clear;

clc;

L=20*10^-3;//Seld Inductance of Inductor

R=100;//Resistance of the Resistor in ohms

tau=L/R;//Time Constant of L-R circuit

printf("(a) Time Constant =%.2f ms",tau*10^3);

E=10;//EMF of Battery in Volts

I=E/R;//Maximum Current in Amperes

printf("\n (b) Maximum current = %.2f A",I);

iper=0.99;//Current reaches 99% of the Maximum Value

t=tau*-log(1-iper);//Time elapsed befor the current reaches 99% of the maxium value

printf("\n (c) Time elapsed before the current reaches 99 percent of the maximum value = %.2f ms",t*10^3);


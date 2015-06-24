//Chapter 1
//Example 1.1
//Page 6

clear;
clc;
Pi = 4200;
E = 120;
I = 32.2; 

printf("(i)	Input Power,	Pi = %.4f J/s = 4200 W\n", Pi)

Po = E*I;
printf("	Output Power,	Po = %.4f W\n", Po)

//Calculation of efficiency
n = Po/Pi*100;
printf("	Efficiency,	n = %.2f %%\n", n)

Pl = Pi-Po;
printf("(ii)	Power lost,	Pl = %.4f W\n", Pl)

//Calculation of energy lost per minute of operation
El = Pl*60;
printf("	Energy lost per minute(=60s) of operation= Pl*t = %.4f J\n",El)

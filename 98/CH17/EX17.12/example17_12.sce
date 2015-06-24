//Chapter 17
//Example 17_12
//Page 415

clear;clc;

ml=5000;
v=6600;
x=6;
m=5;

base=input("Base kVA: ");
x=base*100/m/ml-6;
xohm=x*10*(v/1000)^2/ml;

printf("%% reactance of the reactor = %.2f %% \n\n", x);
printf("Reactance in ohms = %.2f \n\n", xohm);

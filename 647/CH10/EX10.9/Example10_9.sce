clear;
clc;

// Example: 10.9
// Page: 412

printf("Example: 10.9 - Page: 412\n\n");

// Solution

//*****Data******//
x1 = 0.42;
x2 = 0.58;
P = 760;// [mm of Hg]
P1sat = 786;// [mm of Hg]
P2sat = 551;// [mm of Hg]
//***************//

gama1 = P/P1sat;
gama2 = P/P2sat;
A = log(gama1)*(1 + (x2*log(gama2))/(x1*log(gama1)))^2;
B = log(gama2)*(1 + (x1*log(gama1))/(x2*log(gama2)))^2;
printf("Van Laar Constants\n");
printf("A = %.3f\n",A);
printf("B = %.3f\n",B);
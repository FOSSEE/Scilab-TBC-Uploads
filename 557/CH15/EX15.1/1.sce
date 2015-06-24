clc; funcprot(0);//Example 15.1

//Initializing the variables
B =4;
D = 1.2;
C = 7.6;
n = 0.025;
s = 1/1800;

//Calculations
W = B + 2*1.5*D;
A = D*(B+C)/2; // Area of parallelogram formed
P = B +2*1.2*sqrt(D^2 +(1.5D)^2);
m =A/P;
i=s;
C = (23+0.00155/i+1/n)/(1+(23+0.00155/i)*n/sqrt(m)); // By Kutter formula
Q1 = C*A*sqrt(m*i);
Q2 = A*(1/n)*m^(2/3)*sqrt(i);
disp(Q2,"Q using the Manning formula(m3/s) :",Q2,"Q using Chezy formula with C determined from the Kutter formula (m3/s) :");
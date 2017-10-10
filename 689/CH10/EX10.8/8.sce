clc; funcprot(0);
//Example 10.8 Best lift distribution in biplane

// Initialisation of variables
b1 = 30;
b2 = 27;
gap = 4.5;
S = 400;

// Calculations
mu = b2/b1;
gapBYmeanspan = 2*gap/(b1+b2);
sigma = 0.538;        //From fig 10.10
r = (mu^2-sigma*mu)/(1-sigma*mu);
S1 = r*S;
S2 = S - S1;
C1 = S1/b1;
C2 = S2/b2;
EMAR = (b1^2/S)*(1 - 2*sigma*mu + mu^2)/(1-sigma^2) ;

//Results 
disp(EMAR,"EMAR when total area is 400 sq-ft :",r, "Ratio of areas of lower to upper wing " );
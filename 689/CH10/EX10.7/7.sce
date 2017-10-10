clc; funcprot(0);
//Example 10.7 Equivalent monoplane aspect ratio

// Initialisation of variables
b1 = 40;
C1 = 4+10/12;
b2 = 32;
C2 = 3+9/12;
gap = 4.5;

// Calculations
mu = b2/b1;
Ratio_Gap_to_mean_span = 2*gap/(b1+b2);
sigma = 0.56;        //From figure 10.10
A1 = b1*C1;
A2 = b2*C2;
S = A1+A2;
r = A2/A1;
EMAR = (b1^2/S)*(mu*(1+r))^2/(mu^2 + 2*sigma*mu*r + r^2) ;

//Results 
disp(EMAR,"Effective monoplane aspect ratio :" );
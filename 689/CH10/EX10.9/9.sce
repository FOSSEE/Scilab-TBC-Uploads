clc; funcprot(0);
//Example 10.9 Equivalent monoplane span

// Initialisation of variables
b1 = 32;
b2 = 29;
gap = 4.63;
S1 = 152;
S2 = 120;
 
// Calculations
mu = b2/b1;
gapBYmeanspan = 2*gap/(b1+b2);
sigma = 0.54;    // from fig 10.10
r = S2/S1;
k = sqrt(mu^2*(1+r)^2)/sqrt(mu^2 + 2*sigma*r*mu + r^2);
kb1 = k*b1;

//Results 
disp(kb1,"Equivalent monoplane span (ft):" );
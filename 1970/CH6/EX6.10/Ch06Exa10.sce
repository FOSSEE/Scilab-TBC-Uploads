// Scilab code Exa6.10: : Page-244 (2011)
clc; clear;
tau_0 = 7000;        // Time constant, sec
M_mod_sqr = 3;        // Nuclear matrix
E_0 = 0.018;        // Energy of beta spectrum, MeV 
ft = 0.693*tau_0/M_mod_sqr;   // Comparative half life
fb = 10^(4.0*log10(E_0)+0.78+0.02);    //
t = 10^(log10(ft)-log10(fb));   // Half life of H3, sec
printf("\nThe half life of H3 = %4.2e sec", t);

// Result
// The half life of H3 = 2.44e+009 sec 
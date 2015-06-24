// Scilab code Exa2.10 : : Page 91 (2011)
clc; clear;
lambda_t = 0.693/(60.5*60);// Total decay constant, per sec
lambda_a = 0.34*lambda_t;// Decay constant for alpha_decay, per sec
lambda_b = 0.66*lambda_t;// Decay constant for beta_decay, per sec
printf("\nThe decay constant for total emission = %4.2e /sec", lambda_t);
printf("\nThe decay constant for beta_decay lambda_b = %4.2e /sec", lambda_b);
printf("\nThe decay constant for alpha_decay lambda_a = %4.2e /sec", lambda_a);

// Result 
// The decay constant for total emission = 1.91e-004 /sec
// The decay constant for beta_decay lambda_b = 1.26e-004 /sec
// The decay constant for alpha_decay lambda_a = 6.49e-005 /sec 
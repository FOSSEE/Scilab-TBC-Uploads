// Scilab code Exa7.5.4: To estimate the true count rate of G.M. counter :P.no. 312 (2011)
 n = 30000; // Count per minute 
 n_o = n/60; // Observed count rate, count/s
 t = 2e-04; // Dead time, s 
 n_t = round(n_o/(1-n_o*t)); // The true count rate, count/s
 printf("\n The true count rate : %d counts/s", n_t)
// Result
 //   The true count rate : 556 counts/s  
 











































































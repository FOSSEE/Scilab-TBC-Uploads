// Scilab Code Ex7.2:  Page-7.24 (2004)
clc;clear;
er = 4.94;   //Electric permittivity
n = sqrt(2.69); //  Index of refration, unitless
a = (n^2-1)/(n^2+2);    //  Variable 1
b = (er-1)/(er+2);  // Variable 2 
alpha = (b/a)-1;    // Ratio between ionic and electrical polarization
alp = 1/alpha;      //Ratio between electrical and ionic  polarization

printf("\nRatio between ionic and electrical polarization = %3.3f ", alpha);
printf("\nRatio between electrical and ionic  polarization = %3.3f ", alp);

// Result
//  Ratio between ionic and electrical polarization = 0.576 
//  Ratio between electrical and ionic  polarization = 1.738  

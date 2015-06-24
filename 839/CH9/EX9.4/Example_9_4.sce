//clear//
clear;
clc;

//Example 9.4
//Given
Dt = 6; //[ft]
Da = 2; //[ft]
n = 80/60; //[rps]
T = 70; //[F]
rho = 62.3; //[lb/ft^3], From Appendix 14
mu = 6.6*10^-4; // [lb/ft-s], From Appendix 14

Nre = Da^2*n*rho/mu; 
//From Fig. 9.15
ntT = 36;
tT = ntT/1.333 //[s]

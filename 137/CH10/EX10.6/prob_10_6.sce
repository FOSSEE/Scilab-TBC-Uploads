// page no 441
// prob no 10.6
// This problem is based on Bernoulli Trials formula which is P( k successes in n trials ) = n!*p^k *(1-p)^(n-k)/k!*(n-k)!22
// hence the probability of finding 2 digits wrong in a sequence of 8 digits is
clc;
k= input ("no. of successes =");
p= input ("probability of success =");
n=input  (" no. of trials =");
A=gamma (n+1)* (p^k)*((1-p)^(n-k))/(gamma(k)*gamma(n+1-k));
disp(A,"probability =");
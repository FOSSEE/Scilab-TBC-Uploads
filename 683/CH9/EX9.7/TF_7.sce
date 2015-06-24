// sum 9-7
// The sum sequence is numbered incorrectly in the book, from this sum ownwards.
clc;
clear;
p=2;
d=16;
dt=d-(0.938*p);
At=%pi*dt^2/4;
r=60*sqrt(2);
Td=1/(4*At);
Ta=120;
T=8.722*10^-3;
P=Ta/T*10^-3;

  // printing data in scilab o/p window
  printf("P is %0.3f kN      ",P);
  
  //Value upto hundredth place is considered in the book for value of permissible load, 'P'
clc;
//Example 25.5
//Page No 1022



//solution:

B=10*10^6;
N=276*10^-16;
K=1.38*10^-23;

disp("Substituting into equation 25-12, we have");

N0=(N/B);

disp('W/Hz',N0,"N0 = ");

n0=10*log10(N0);

disp('dBW/Hz',n0,"N0 = ");

disp("Rearranging equation 25-12 and solving we get, ");

Te=(N0/K);

disp('K/cycle',Te,"Te = ");

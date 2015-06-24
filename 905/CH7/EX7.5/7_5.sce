clear;
clc;

// Illustration 7.5
// Page: 444

printf('Illustration 7.5 -  Page: 444\n\n');

// solution
//*****Data*****//
// C-nicotine    A-water    B-kerosene
// F-feed    R-raffinate    S-solvent
F = 1000; // [feed rate, kg/h]
xAF = 0.99; // [fraction of water in feed]
// Because the solutions are dilute therefore
xCF = 0.01; // [fraction of nicotene in feed, kg nicotene/kg water]
xCR = 0.001; // [fraction of nicotene in raffinate, kg nicotene/kg water ]
m = 0.926; // [kg water/kg kerosene]
//*****//

printf('Illustration 7.5(a) -  Page: 444\n\n');
// Solution(a)

yCS = 0; // [kg nicotene/kg water]

// Because, in this case, both the equilibrium and operating lines are       // straight,if the minimum solvent flow rate Bmin is used, the concentration // of the exiting extract, yCmax, will be in equilibrium with xCF. Therefore
yCmax = m*xCF; // [kg nicotene/kg kerosene]

A = F*xAF; // [kg water/h]
// From equation 7.17
Bmin = A*(xCF-xCR)/(yCmax-yCS); // [kg kerosene/h]
printf("The minimum amount of solvent which can be used is %f kg kerosene/h.\n\n",Bmin);

printf('Illustration 7.5(b) -  Page: 444\n\n');
// Solution(b)

B = 1.2*Bmin; // [kg kerosene/h]
EF = m*B/A;
Nt = log((xCF-yCS/m)/(xCR-yCS/m)*(1-1/EF)+1/EF)/log(EF);

printf("The number of theoretical stages if the solvent rate used is 20 percent above the minimum is %f .\n\n",Nt);

printf('Illustration 7.5(c) -  Page: 444\n');
// Solution(c)

Eme = 0.6; // [Murphree stage efficiency]
// from equation 7.20
Eo = log(1+Eme*(EF-1))/log(EF); // [overall efficiency]
Nr = Nt/Eo; // [number of real stages]
disp(Nr);
// The nearest integer to number of real stages is 11
// Therefore
Nr = 11;
printf("The number of real stages required is %f.\n\n",Nr);
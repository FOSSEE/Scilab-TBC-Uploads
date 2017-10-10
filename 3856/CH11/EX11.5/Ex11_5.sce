//Describe how you would prepare a phosphate buffer with a pH of seven point four

//Example 11.5 

clc;

clear;

Ka1=7.5*10^-3; //Equilibrium consatnt for H3PO4= H+ +H2PO4-

pKa1=-log10(Ka1); //minus logerithm of Ka1

Ka2=6.2*10^-8; //Equilibrium consatnt for H2PO4-= H+ +HPO4--

pKa2=-log10(Ka2); //minus logerithm of Ka2

Ka3=4.8*10^-13; //Equilibrium consatnt for HPO4-- = H+ +PO3---

pKa3=-log10(Ka3); //minus logerithm of Ka3

pH=7.40; //pH of the required buffer solution

C1=10^(pH-pKa2); //Concentratin of required solution to prepare buffer solution of  pH of 7.40

C=C1/1.0; //Ratio  of the required solution to prepare buffer solution of  pH of 7.40 

printf("Ratio of the required solution = %.2f The buffer is dissolve to disodium hydrogen phosphate and sodium dihydrogen phosphate in a mole ratio of 1.5:1.0 ",C);


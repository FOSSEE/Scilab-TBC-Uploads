clear;
clc;

// Stoichiometry
// Chapter 4
// Material Balances involving Chemical Reaction


// Example 4.18
// Page 149
printf("Example 4.18, Page 149 \n \n");

// solution

// given

// (.1*M*R1)/(.415M+1.775a) + (.1125a*P)/(.415M + 1.775a) + 1 = .1M    
// R1*(.315M-1.225a)/(.415M + 1.775a) = .9M-4a
// M = 100 + R1 + (2.25a*p)/(.415M + 1.775a)
// .1M*P/(.415M + 1.775a) - (.1125a*P)/(.415M1.775a)

//solving them
M = 457.011 // kmol/s
R1 = 350.771 // kmol/s
P = 10.368 // kmol/s
a = 96.608 // kmol/s
R2 = 2.25*96.608*10.369/(.415*457.011 + 1.775*96.608) // kmol/s
F = M -R1 - R2
printf("Mixed feed rate = "+string(M)+" kmol/s \nRecycle stream = "+string(R1)+" kmol/s \nRecovered H2 stream = "+string(R2)+" kmol/s \nFresh feed rate = "+string(F)+" kmol/s \nRecycle ratio = "+string((R1+R2)/F)+" kmol/kmol of fresh feed.")

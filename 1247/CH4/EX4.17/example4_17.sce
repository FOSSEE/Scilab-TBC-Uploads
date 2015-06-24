clear;
clc;

// Stoichiometry
// Chapter 4
// Material Balances involving Chemical Reaction


// Example 4.17
// Page 146
printf("Example 4.17, Page 146 \n \n");

// solution

//M = mix feed rate, F = fresh feed rate , R = recycle stream
// using fig 4.3
// N2 balance
// a = 24.75M/(.25M+7.5M)    (i)
// P = (4.15M + 17.75a)/M     (ii)
// .585M -1.775a +(4.15M+17.75a)/M = 100  (iii)
//solving (i,) (ii), (iii)
M = 438.589 //[kmol/s]  
a = (24.75*M)/((.25*M)+7.5) //kmol/s
P = (4.15*438.589+17.75*92.662)/M //kmol/s
R = M-100 // kmol/s
r = R/100 // recycle ratio
NH3 = (.585*M-2.275*a)*17.0305 //kg/s
printf("(a) \n \n recycle feed rate = "+string(R)+" kmol/s \n \n \n(b) \n \n purge gas rate = "+string(P)+" kmol/s \n \n \n(c) \n \n mass rate of NH3 = "+string(NH3)+" kg/s")

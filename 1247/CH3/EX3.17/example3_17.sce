clear;
clc;

// Stoichiometry
// Chapter 3
// Material Balances Without Chemical Reaction


// Example 3.17
// Page 79
printf("Example 3.17, Page 79 \n \n");

// solution

printf("(a) \n \n")
F = 5000 //[kmol/h] feed (basis)
m1 = F*.47 //[kmol/h] CO in F
m2 = F-m1 //[kmol/h] H2 in F
m3 = m1*.932 // CO in product stream
n2 = m3/.98 //[kmol/h] 
printf("Flow rate of product stream is "+string(n2)+" kmol/h. \n \n \n(b) \n \n")
n2 = n2-m3 //[kmol/h] H2 in CO stream
printf("    Product H2 stream : \n  H2 = "+string(m2-n2)+" kmol/h \n  CO = "+string(m1-m3)+" kmol/h \n \n \n(c) \n \n")
nH2 = 2697.39 //[kmol/h]
nCO = 3000-nH2 // [kmol/h]
n4 = m2+nH2
n5 = m1+nCO
n6 = n4+n5

printf("    Composition of Mixed feed : \n  H2 = "+string(n4*100/n6)+" \n  CO = "+string(n5*100/n6)+"")

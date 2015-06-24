clear;
clc;

// Stoichiometry
// Chapter 5
// Energy Balances


// Example 5.50
// Page 302
printf("Example 5.50, Page 302 \n \n");

// solution
// from fig 5.18
Ta = 379.5 // K
dH = -274-(-106.5) // kJ/kg sol
Cm = 2.05  // kJ/kg K
dHc = Cm*(Ta-298.15)
// basis 100 kg of 93 % acid
// acid balance 
x = poly(0, 'x')
p = .93*100+x*.15-(100+x)*.77
y = roots(p)
//from fig
y1 = 25.3
printf(" (a) \n \n Resultant T of 77 percent sol = "+string(Ta)+" K. \n \n \n (b) \n \n Heat to be removed to cool it to 298.15 K = "+string(dH)+" kJ/kg sol \n \n \n (c) \n \n By mean heat capacity method : "+string(dHc)+" kJ/kg sol \n \n \n (d) \n \n Quantity of 15 percent acid to be mixed = "+string(y)+" kg. \n \n \n (e) \n \n from fig : "+string(y1)+" kg.")

clear;
clc;

// Stoichiometry
// Chapter 4
// Material Balances involving Chemical Reaction


// Example 4.3
// Page 118
printf("Example 4.3, Page 118 \n \n");

// solution

printf("(a) \n \n")
m = 100 //kg chlorobenzene (basis)
m1 = 106.5*.655 //kg HNO3 
m2 = 108*.936 // kg H2SO4
m3 = 106.5*.345 +108*.064 //kg water
M = m1+m2+m3
printf(" Analysis of charge: \n Component           mass percent \n Chlorobenzene         "+string(m*100/M)+"\n HNO3                  "+string(m1*100/M)+" \n H2SO4                 "+string(m2*100/M)+" \n H2O                   "+string(m3*100/M)+" \n \n \n(b) \n \n")
// (b)
// total charge mass is constant
m4 = 314.5*.02 //[kg] unreacted CB in the product
m5 = 100-m4 // [kg] CB that reacted
c = m5*100/100 // conversion of CB
printf("Percent conversion of Chloro benzene is "+string(c)+" \n \n \n(c) \n \n")
// (c)
m6 = 63*c/112.5 //[kg] HNO3 consumed
m7 = m1-m6 // unreacted HNO3
m7 = 157.5*c/112.5 // [kg] total NCB produced
m8 = m7*.66 //[kg] p-NCB
m9 = m7*.34 //[kg] o-NCB
m10 = 18*c/112.5 //[kg] water produced
m11 = m10+m3 // total water in product
m12 = m4+m8+m9+m7+m2+m11
printf(" Composition of product stream : \n Component           mass percent \n CB                    "+string(m4*100/m12)+" \n p-NCB                 "+string(m8*100/m12)+" \n o-NCB                 "+string(m9*100/m12)+" \n HNO3                  "+string(m7*100/m12)+" \n H2SO4                 "+string(m2*100/m12)+" \n H2O                   "+string(m11*100/m12)+"")





clear;
clc;

// Stoichiometry
// Chapter 4
// Material Balances involving Chemical Reaction


// Example 4.2
// Page 117
printf("Example 4.2, Page 117 \n \n");

// solution

m = 700 //[kg] ONT charged to reactor (basis)
m1 = 505*.99 // [kg] OT produced
m2 = (4*137*500)/(4*107)  //[kg] ONT required
m3 = m*.98 // [kg] ONT reacted
n1 = m1*100/m3 // yield of OT
m4 = (9*56*m)/(4*137) // [kg] theoretical iron reqiurement
m5 = 800*.9 //[kg] iron charged
E = (m5-m4)*100/m4 // excess iron
printf("(a) \n \nYield of OT = "+string(n1)+" \n \n \n(b) \n \nExcess quantity of iron powder = "+string(E)+".")

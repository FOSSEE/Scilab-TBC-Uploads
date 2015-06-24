clear;
clc;

// Example: 5.3
// Page: 151

printf("Example: 5.3 - Page: 151\n\n");

// Solution

//*****Data*****//
Th = 650 + 273;// [K]
Tl = 30 + 273;// [K]
Qh = 585;// [kJ/cycle]
//*************//

// Solution (a)
// From Eqn. (5.9)
eta = (Th - Tl)/Th;
printf("(a) The efficiency of the Carnot engine is %.1f %%\n",eta*100);

// Soluton (b)
// From the knowledge of the ratio of heat and temperature between the two regions:
Ql = Qh*Tl/Th;// [kJ]
printf("(b) Heat released to cold reservoir is %d kJ\n",Ql);
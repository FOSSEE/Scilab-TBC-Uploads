clear;
clc;

// Example: 12.20
// Page: 505

printf("Example: 12.20 - Page: 505\n\n");

// Solution

//Reactions:
// CO + (1/2)O2 ------------> CO2 ......................................(1)
// C + O2 ------------------> CO2 ......................................(2)
// H2 + (1/2)O2 ------------> H2O ......................................(3)
// C + 2H2 -----------------> CH4 ......................................(4)

// Elimination of C:
// Combining Eqn. (2) with (1):
// CO + (1/2)O2 ------------> CO2 ......................................(5)
// Combining Eqn. (2) with (4):
// CH4 + O2 ----------------> 2H2 + CO2 ................................(6)

// Elimination of O2:
// Combining Eqn. (3) with (4):
// CO2 + H2 ----------------> CO + H2O .................................(7)
// Combining Eqn. (3) with (6):
// CH4 + 2H2O -------------> CO2 + 4H2 .................................(8)

// Equations 7 & 8 are independent sets. Hence
r = 2;// [No. of independent rkn.]
C = 5;// [No. of component]
P = 1;// [No. of phases]
s = 0;// [No special constraint]
// Applying Eqn. 12.81
F = C - P + 2 - r - s;// [Degree of freedom]
printf("No. of independent reaction that occur is %d\n",r);
printf("No. of Degree of freedom is %d",F);
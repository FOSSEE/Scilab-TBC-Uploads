clear;
clc;

// Example: 12.21
// Page: 506

printf("Example: 12.21 - Page: 506\n\n");

// Solution

// Reaction: CaCO3 -----------> CaO + CO2
r = 1;// [No. of independent rkn.]
C = 3;// [No. of component]
P = 3;// [No. of phases, solid CaO, solid CaCO3, gaseous CO2]
s = 0;// [No special constraint]
// Applying Eqn. 12.81
F = C - P + 2 - r - s;// [Degree of freedom]
printf("No. of Degree of freedom is %d",F);
clear;
//clc();

// Example 15.2
// Page: 401
printf("Example-15.2  Page no.-401\n\n");

//***Data***//
// The system contains four species
printf(" In this system, there are four identifiable chemical species,which are C,O2,CO2 and CO.\n The balanced equations we can write among them are\n");

printf("    C + 0.5O2 = CO\n");
printf("    C + O2 = CO2\n");
printf("    CO + 0.5O2 = CO2\n");
printf("    CO2 + C = 2CO\n");

// Let we call these equations A, B, C and D respectively
// These relations are not independent.
// If we add A and C and cancel like terms, we obtain B.
// So, If we want independent chemical equilibria we must remove equation C

// Now, if we reverse the direction of B and add it to A, we see that D is also not independent.
// Thus, there are only two independent relations among these four species and 
printf(" There are only two independent relations among these four species and\n");

// V = C + 2 - P
// and we have
V = 2;// No of the variable
P = 2;// No of the phases
// So
C = V + P - 2;
printf("    C = V + P - 2\n");
printf("    C = 4 - 2 = 2\n");
printf(" Thus, this is a two-component system");

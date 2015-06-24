clear;
//clc();

// Example 15.3
// Page: 402
printf("Example-15.3  Page no.-402\n\n");

//***Data***//
// This contains three species.
printf(" The three species in this system are H2, N2 and NH3\n");
N = 3;
printf(" There is only one balanced chemical reaction among these species\n");
Q = 1

// 2NH3 = N2 + 3H2
C = N - Q;
printf("    C = N - Q = %0.0f\n\n",C);
// Now let us we made the system by starting with pure ammonia.
// Assuming that all the species are in the gas phase, ammonia dissociates in H2 and N2 in the ratio of 3:1.
printf(" Let we start with pure ammonia in the system, then ammonia will dissociate in H2 and N2 in the ratio of 3:1.\n");

// We can write an equation among their mole fractions, viz;
// y_H2 = 3*y_N2
printf(" And the relation between their mole fraction is\n    y_H2 = 3*y_N2\n\n");

// We might modify the phase rule to put in another symbol for stoichiometric restrictions, but the common usage is to write that 
// Components = species - (independent reactions) - (stoichiometric restriction)
// and stoichiometric restriction SR is 
SR = 1;
// so
c = N-Q-SR;
printf(" We have the modified phase rule as\n    Components = species - (independent reactions) - (stoichiometric restriction)\n")
printf("    C = N - Q - SR = %0.0f",c);

clear;
//clc();

// Example 15.8
// Page: 405
printf("Example-15.8  Page no.-405\n\n");

//***Data***//
// The species, we are given are CaCO3, CaO and CO2
// First we write the reaction for the formation of the above species from their elemental part.
// So, we have 
// Ca + C + 1.5O2 = CaCO3
// Ca + 0.5O2 = CaO
// C + O2 = CO2

// We must eliminate Ca, C and O2 from these equations because they do not appear in the species list.

// Now, solving the 3rd equation for C and substituting in the first equation, we have 
// Ca + CO2 - O2 + 1.5O2 = CaCO3
// Now, this equation to the equation second, we have 
// CO2 = -CaO + CaCO3
// or
// CaCO3 = CO2 + CaO 

printf(" There is only one balanced chemical reaction between the species on the species list, viz.\n");
printf("    CaCO3 = CO2 + CaO ");
clear;
clc;

// Stoichiometry
// Chapter 5
// Energy Balances


// Example 5.45
// Page 297
printf("Example 5.45, Page 297 \n \n");

// solution

// (a)
Hf = -982.8
Hfcryst = -1053.904
Hdis = Hfcryst-Hf
// (b)
Hfcr = -3077.75
Hsol = Hfcryst+7*(-285.83)-(-3077.75)
printf(" (a) \n \n Hdissolulition = "+string(Hdis)+" kJ/mol ZnSO4. \n \n \n (b) \n \n Hsolution = "+string(Hsol)+" kJ/kmol.")

clear;
//clc();

// Example 15.6
// Page: 404
printf("Example-15.6  Page no.-404\n\n");

//***Data***//
// The system consists of five species.
printf(" The five species present in the system are H2O, HCl, H+, OH- and Cl-. \n");
// So
N = 5;// Number of the species 
printf(" Here we have two chemical relations:\n");
printf("    H2O = H+  +  OH- \n");
printf("    HCl = H+  +  Cl- \n");

// so
Q = 2;// No of the reactions

// In addition we have electroneutrality, which says that at equilibrium the total no of positive ions in the solution must be the same as the total no of nagative ions,or
// [H+] = [OH-] + [Cl-]
// To maintain electroneutrality number of positive and negative ion should be same.
// Here [H+] stands for the molality of hydrogen ion. This is convertible to a relation among the 'mu's'; hence,
// it is an additional restriction, so
SR = 1; 
// So
// The number of components is
C = N - Q - SR;

printf(" Number of the components present in the system are \n    C = N - Q - SR = %0.0f",C);


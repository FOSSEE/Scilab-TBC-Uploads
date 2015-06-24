clear;
//clc();

// Example 15.7
// Page: 405
printf("Example-15.7  Page no.-405\n\n");

//***Data***//
printf(" Our system consists of Au and H2O.\n");
// So
N = 2;// Number of the species
// If there is no chemical reaction, then 
Q = 0;

//So 
C = N - Q;// Number of the components 
printf(" If no compound is formed, then number of the components in the system are \n    C = N - Q = 2 - 0 = %0.0f\n\n",C);

// However, if there is also a chemical reaction 
// Au + H2O = AuH2O
// so
n = 3;// Number of the species
q = 1;// Number of the reactions 

// Thus, we have 
c = n - q;// Number of the components

printf(" If there is also a chemical reaction, viz.\n    Au + H2O = AuH2O \n");
printf(" the number of the components in the system are\n    C = N - Q = %0.0f\n\n",c);
printf(" The number of the components is independent of the existence or nonexistence of such compounds of questionable existence. ");

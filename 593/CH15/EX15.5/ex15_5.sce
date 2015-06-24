clear;
//clc();

// Example 15.5
// Page: 403
printf("Example-15.5  Page no.-403\n\n");

//***Data***//
// We have been given the reaction 
// CaCO3(s) = CaO(s) + CO2(g)
// The CaCO3 and CaO form separate solid phases, so we have three phases, two solid and one gas. 
// So
P = 3;
// This is a two component system, so
C = 2;

// From the phase rule
V = C + 2 - P;

// If there is only one degree of freedom, then the system should have a unique P-T curve.
// Reference [ 2, page 214 ] as reported in the book, shows the data to draw such a curve, which can be well represented by
// log(p/torr) = 23.6193 - 19827/T

printf(" The no. of phases present in the system are %0.0f \n",P);
printf(" Total no of degrees of freedom is %0.0f \n",V);
printf(" Since, there is only one degree of freedom, so the system has a unique P-T curve,\n");
printf(" which can be well represented by \n    log(p/torr) = 23.6193 - 19827/T");

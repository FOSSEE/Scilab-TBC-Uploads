// Example 5_5
clc;funcprot(0);
// Given data
D=1;// Diameter of hose at inlet in inch
d=2;// Diameter of hose at outlet in inch
// From example 5.4,F_e=rho*Q*V_out
F_e=176.8;// The force in N

// Calculation
// F_c=rho*Q*V_out*[1/2*((A_in/A_out)+(A_out/A_in)-1];
// A_in=4*A_out
F_c=F_e*((1/2)*(4+(1/4))-1);// The force exerted on the nozzle by the coupling in N
printf("\n The force exerted on the nozzle by the coupling,F_c=%3.1f N",F_c);

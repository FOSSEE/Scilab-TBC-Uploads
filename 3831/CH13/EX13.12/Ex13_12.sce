// Example 13_12
clc;funcprot(0);
// Given data
p_4s=0.210;// MPa
p_1=p_4s;// MPa
p_3=0.190;// MPa
p_2s=p_3;// MPa
k=1.4;// The specific heat ratio

// Calculation
// (a)
PR=p_4s/p_3;// The isentropic pressure ratio of a Brayton cycle engine
// (b)
CR=(PR)^(1/k);// The isentropic compression ratio of a Brayton cycle engine
// (c)
n_T_B=(1-((PR)^((1-k)/k)))*100;// The Brayton cold ASC thermal efficiency
printf("\n(a)The isentropic pressure ratio,PR=%1.2f \n(b)The isentropic compression ratio,CR=%1.2f \n(c)The Brayton cold ASC thermal efficiency,n_T=%1.2f percentage",PR,CR,n_T_B);
// The answer vary due to round off error

// Example 2_1
clc;funcprot(0);
// Given data
p_0=1.0133*10^5;// The sea level pressure in Pa
alpha=1.2*10^-4;// m^-1

// Calculation
z=0;// km
minusdelp=alpha*p_0*exp(-alpha*z);// The pressure force per unit volume in N/m^3
printf("\nAt z=0,The pressure force per unit volume -delp=(%0.2f N/m^3)i_z",minusdelp);
z=5;// km
minusdelp=alpha*p_0*exp(-alpha*z*10^3);// The pressure force per unit volume in N/m^3
printf("\nAt z=5,The pressure force per unit volume -delp=(%0.3f N/m^3)i_z",minusdelp);

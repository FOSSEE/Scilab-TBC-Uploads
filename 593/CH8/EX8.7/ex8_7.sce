clear;
//clc();

// Example 8.7
// Page: 179
printf("Example-8.7  Page no.-179\n\n");

//***Data***//

P = 1;//[atm] Total pressure in the vapor phase

// Since the two liquids are not soluble in each other so Raoult's law will apply separately for these two phases.
// From Raoult's law we have 
// (y_i*P) = (x_i*p_i)
// Here two phases are in pure stages so x_i=1 for both phases
// So
// y_i = (p_i/P)
// Writing this equation for each species, adding the equations, and solving for P, we find
// P = summation( y_i*P ) = summation( p_i/P*P ) = summation(p_i)

// The total pressure is the sum of the individual pure species vapor pressure
// To find the boiling point temperature we perform a trial and error
// Let us assume the boiling point temperature
T = 89;//[C]
// Antoine equation constants for water is given by
A_w = 7.94917;
B_w = 1657.462;
C_w = 227.02;

// and that for n-butanol are
A_b = 7.838;
B_b = 1558.190;
C_b = 196.881;

// Antoine equation is given by
// log10(p) = A - B/(T+C)
// Thus vapor pressure of water and n-butanol are respectively
p_water = (1/760)*10^(A_w - B_w/(T+C_w));
p_butanol = (1/760)*10^(A_b - B_b/(T+C_b));

// Now, vapor phase composition are 
y_water = p_water/P;
y_butanol = p_butanol/P;
// summing these, we get 
y = y_water + y_butanol;

// Value of y is nearly equal to one so our assumption of the temperature is correct
// So the boiling point of the mixture is 'T'

printf(" Boiling point of the two phase system is %0.0f deg C\n",T);
printf(" In vapor phase, mole fraction of the water is %0.2f",y_water);

clear;
//clc();

// Example 8.9
// Page: 189
printf("Example-8.9  Page no.-189\n\n");

//***Data***//

// Here we will denote ethanol as species 'a' and water as the species 'b'
x_a = 0.1238;
x_b = (1-x_a);
T = 85.3;//[C] Given boiling temperature

// We have
// x_a + x_b = 1   and   y_a + y_b = 1

// The Antoine equation constants for ethanol from the table A.2(page 418) given in the book, are 
A_a = 8.04494;
B_a = 1554.3;
C_a = 222.65;

// and that for water 
A_b = 7.96681;
B_b = 1668.21;
C_b = 228.0;

// Thus vapor pressure of ethanol and water are respectively
p_a = (1/760)*10^(A_a - B_a/(T+C_a));
p_b = (1/760)*10^(A_b - B_b/(T+C_b));

// Also the activity coefficients are given by
// Y_a = 10^((B^(2)*A*x_b^(2))/(A*x_a+B*x_b)^(2))     and
// Y_b = 10^((A^(2)*B*x_b^(2))/(A*x_a+B*x_b)^(2))
// here A and B are Van Laar coefficients and their values for ethanol-water system is reported in the book at page 186 (last two lines), so
A = 0.7292;
B = 0.4104;

// hence
Y_a = 10^((B^(2)*A*x_b^(2))/(A*x_a+B*x_b)^(2));
Y_b = 10^((A^(2)*B*x_a^(2))/(A*x_a+B*x_b)^(2));

// Now taking into account of nonideality of the gaseous phase, the modified Raoult's law gives
// (y_a/x_a) = (Y_a*p_a)/P    and    (y_b/x_b) = (Y_b*p_b)/P 

// we will take a simple method 
// solving the above two equation for y_a and y_b and adding them, we get
P = (Y_a*p_a*x_a)+(Y_b*p_b*x_b);//[atm]

// So,
y_a = (Y_a*p_a*x_a)/P;
// and
y_b = (Y_b*p_b*x_b)/P;

printf(" Boiling pressure of the liquid at 85.3 deg C is %0.4f atm\n",P);
printf(" Mole fraction of ethanaol in vapor phase is     %0.4f\n",y_a);
printf(" Mole fraction of water in the vapor phase is    %0.4f",y_b);

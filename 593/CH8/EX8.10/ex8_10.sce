clear;
//clc();

// Example 8.10
// Page: 191
printf("Example-8.10  Page no.-191\n\n");

//***Data***//

// This problem is similar to the example 8.9 except that, we are provided pressure instead of temperature and different liquid composition
// Here again, we will denote ethanol as species 'a' and water as the species 'b'
x_a = 0.2608;
x_b = (1-x_a);
P = 1.00;//[atm] Given boiling pressure

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
// p_a = (1/760)*10^(A_a - B_a/(T+C_a))
// p_b = (1/760)*10^(A_b - B_b/(T+C_b))
// Adding these two equation, we get 
// ( p_a + p_b ) = (1/760)*10^(A_a - B_a/(T+C_a)) + (1/760)*10^(A_b - B_b/(T+C_b))......................................(1)

// Also the activity coefficients are given by
// Y_a = 10^((B^(2)*A*x_b^(2))/(A*x_a+B*x_b)^(2))     and
// Y_b = 10^((A^(2)*B*x_b^(2))/(A*x_a+B*x_b)^(2))
// here A and B are Van Laar coefficients and their values for ethanol-water system is reported in the book at page 186 (last two lines), so
A = 0.7292;
B = 0.4104;

// hence
Y_a = 10^((B^(2)*A*x_b^(2))/(A*x_a+B*x_b)^(2));
Y_b = 10^((A^(2)*B*x_a^(2))/(A*x_a+B*x_b)^(2));

// Now we will solve for T running the loop 
// Let us assume the startup temperature
T = 80;
err = 1;

while err > 10^(-3)
    P_a = (10^(8.04494 - 1554.3/(222.65 + T)))/760;
    P_b = (10^(7.96681 - 1668.21/(228 + T)))/760;
    y_a = Y_a*P_a*x_a/P;
    y_b = Y_b*P_b*x_b/P;
    err = abs((y_a + y_b) - 1);
    T = T + 0.01;
end

printf(" Boiling temperature of the liquid at 1 atm pressure is %0.4f atm\n",T);
printf(" Mole fraction of ethanaol in vapor phase is     \t%0.4f\n",y_a);
printf(" Mole fraction of water in the vapor phase is    \t%0.4f",y_b);

clear;
//clc();

// Example 8.12
// Page: 193
printf("Example-8.12  Page no.-193\n\n");

//***Data***//

// This problem is similar to the example 8.10 except that, we are provided vapour phase composition
// Here again, we will denote ethanol as species 'a' and water as the species 'b'
y_a = 0.1700;
y_b = (1-y_a);
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

// Also the activity coefficients are given by
// Y_a = 10^((B^(2)*A*x_b^(2))/(A*x_a+B*x_b)^(2))     and
// Y_b = 10^((A^(2)*B*x_b^(2))/(A*x_a+B*x_b)^(2))
// here A and B are Van Laar coefficients and their values for ethanol-water system is reported in the book at page 186 (last two lines), so
A = 0.7292;
B = 0.4104;

// Now taking into account of nonideality of the gaseous phase, the modified Raoult's law gives
// (y_a/x_a) = (Y_a*p_a)/P    and    (y_b/x_b) = (Y_b*p_b)/P 

// Now we can take the help of trial and error method to solve the above equations
// In this method, we will assume the different values of T and will calculate the values of x_a and x_b from the above two equations, till their sum    comes to unity

x_a = 0.0100;// Initial assumption of liquid phase composition of ethanol
x_b = 0.9;// Initial assumption of liquid phase composition water
T = 80;//[C] Initial guess of the temperature
err = 1;

while err >  1/16*10^(-2)
    P_a = (10^(8.04494 - 1554.3/(222.65 + T)))/760;
    P_b = (10^(7.96681 - 1668.21/(228 + T)))/760;
    
    Y_a = 10^((B^(2)*A*x_b^(2))/(A*x_a+B*x_b)^(2));
    Y_b = 10^((A^(2)*B*x_a^(2))/(A*x_a+B*x_b)^(2));
    
    x_a = y_a*P/(Y_a*P_a);
    x_b = y_b*P/(Y_b*P_b);

    err = abs((x_a + x_b) - 1);
    T = T + 0.01;

end


printf(" Equilibrium Temperature of the system at pressure 1 atm  is %0.4f atm\n",T);
printf(" Mole fraction of ethanaol in liquid phase is     %0.4f\n",x_a);
printf(" Mole fraction of water in the liquid phase is    %0.4f",x_b);

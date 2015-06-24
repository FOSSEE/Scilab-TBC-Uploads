clear;
//clc();

// Example 8.3
// Page: 167
printf("Example-8.3  Page no.-167\n\n");

//***Data***//

x_a = 0.05;// mole fraction of acetone in liquid phase
x_w = (1-x_a);// mole fraction of the water in the liquid phase
P = 1.00;//[atm] Total pressure in vapor phase

// Let us assume that the solution is ideal 
// We will take the help of trial and error methad and find a temperature at which sum of the computed ideal solution vapor phase mole fraction is 1.00
// For our first try let the temperatute is 
T_1 = 80;//[C]
// Now from Table A.2( page 418), the Antoine equation constant for acetone are
A_a = 7.02447;
B_a = 1161;
C_a = 224;
// and that for water 
A_w = 7.94917;
B_w = 1657.462;
C_w = 227.02;

// Now from Antoine equation 
// log10(p) = A - B/(T+C)
// So, vapor pressure for pure acetone at 80 C (in atm)is
p_a_1 = (1/760)*10^(A_a - B_a/(T_1+C_a));//[atm]
// and that of water is
p_w_1 = (1/760)*10^(A_w - B_w/(T_1+C_w));//[atm]

// Now from Raoult's law 
// y_i*P = x_i*p_i
// so, vapor phase composition at this temperature is
y_a_1 = (x_a*p_a_1)/P;
y_w_1 = (x_w*p_w_1)/P;

// Sum of these two compostion is
y_1 = (y_a_1 + y_w_1);
// Since, y_1 is not equal to 1.00, so assumed temperature is wrong

// Now we will assume our temperature as 
T_2 = 96.4060;//[C]

// Again, from Antoine equation 
// log10(p) = A - B/(T+C)
// So, vapor pressure for pure acetone at 80 C (in atm)is
p_a_2 = (1/760)*10^(A_a - B_a/(T_2+C_a));//[atm]
// and that of water is
p_w_2 = (1/760)*10^(A_w - B_w/(T_2+C_w));//[atm]

// Now from Raoult's law 
// y_i*P = x_i*p_i
// so, vapor phase composition at this temperature is
y_a_2 = (x_a*p_a_2)/P;
y_w_2 = (x_w*p_w_2)/P;

// Sum of these two compostion is
y_2 = (y_a_2 + y_w_2);
// Value of y_2 is equal to 1.00, so our assumption is right
// These are the values when the solution would behave as ideal, but this is not the actual scene
// The experimental values of the boiling point and vapor phase composition are listed in the table 8.1(page 162) given in book, which are
T_e = 74.8;//[C] Boiling temperature
y_a_e = 0.6381;// vapor phase composition of acetone

printf(" Comparison of experimental values to those computed by the ideal solution assumption, x_acetone = 0.05 and P = 1.00 atm\n\n");
printf(" \t\t\t Experimental Values from Table 8.1 \t\t\t\tValues calculated assuming idea solution\n\n");
printf(" Equilibrium(boiling) \t\t%0.1f \t\t\t\t\t\t\t\t\t %0.1f \n temperature T deg C\n\n",T_e,T_2);
printf(" Mole fraction acetone \t\t%f \t\t\t\t\t\t\t\t %f \n in the vapor phase (y_a)",y_a_e,y_a_2);

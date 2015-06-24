clear;
//clc();

// Example 3.3
// Page: 52
printf("Example-3.3  Page no.-56\n\n");


//***Data***//

P = 1.0;//[atm]
p_w = 0.023;//[atm] Vapor pressure of pure water
H_o = 40100;//[atm] Vapor pressure of pure oxygen
H_n = 80400;//[atm] Vapor pressure of pure nitrogen
// From Raoult's law, we have
// ( y_i*P ) = ( x_i*p_i )
// So 
//For water
// ( y_w*P ) = ( x_w*p_i )
// For oxygen
//( y_o*P ) = ( x_o*p_i )
// And for nitrogen
//( y_n*P ) = ( x_n*p_i )

// Also
// ( y_w + y_o + y_n ) = 1
// ( x_w + x_o + x_n ) = 1

// In air, the mole fraction of nitrogen and oxygen are 0.79 and 0.21 respectively. So,
// y_o/y_n = 0.21/0.79

// We will take the help of matrix method to solve these six equations for six unknowns
A = [0.023 0 0 -1 0 0;0 40100 0 0 -1 0;0 0 80400 0 0 -1;0 0 0 1 1 1;1 1 1 0 0 0;0 0 0 0 0.79 -0.21];
B = [0;0;0;1;1;0];
X = A^(-1)*B;

printf(" The composition in liquid and vapor phase are summarized in the following table:\n\n");
printf("    y_water       \t %f\n",X(4));
printf("    y_oxygen      \t %f\n",X(5));
printf("    y_nitrogen    \t %f\n",X(6));
printf("    x_water       \t %f\n",X(1));
printf("    x_oxygen      \t %e\n",X(2));
printf("    x_nitrogen    \t %e",X(3));

clear;
clc;

// A Textbook on HEAT TRANSFER by S P SUKHATME
// Chapter 3
// Thermal Radiation

// Example 3.15
// Page 151
printf("Example 3.15, Page 151 \n\n")

// From example 3.10
F12 = 0.0363;
F11 = 0;
F13 = 1-F11-F12;
// Similarly
F21 = 0.0363;
F22 = 0;
F23 = 0.9637;

// Now, F31 = A1/A3*F13
F31 = 2/24*F13;
// Therefore
F32 = F31;
F33 = 1-F31-F32;

// Substituting into equation 3.11.6, 3.11.7, 3.11.8, we have f(1),f(2),f(3)

function[f]=flux(B)
    f(1)= B(1) - 0.4*0.0363*B(2) - 0.4*0.9637*B(3) - 0.6*(473^4)*(5.670*10^-8);
    f(2)= -0.4*0.0363*B(1) + B(2) - 0.4*0.9637*B(3) - 0.6*(5.670*10^-8)*(373^4);
    f(3)= 0.0803*B(1) + 0.0803*B(2) - 0.1606*B(3);
    funcprot(0);
endfunction

B = [0 0 0];
y = fsolve(B,flux);
printf("\n B1 = %.1f W/m^2",y(1));
printf("\n B2 = %.1f W/m^2",y(2));
printf("\n B3 = %.1f W/m^2 \n",y(3));

// Therefore
H1 = 0.0363*y(2) + 0.9637*y(3) ; // [W/m^2]
// and
q1 = 2*(y(1) - H1) ; // [W]

printf("Net radiative heat transfer = %f W",q1);

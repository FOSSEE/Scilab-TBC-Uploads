// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 8: AC DYNAMO TORQUE RELATIONS - SYNCHRONOUS MOTORS
// Example 8-15

clear; clc; close; // Clear the work space and console.

// Given data
P_o = 2275 ; // Original kVA 
Q_o = 1410 ; // Original kvar 
S_f_conjugate = 3333.3 ; // final kVA of the load
S_o_conjugate = P_o + %i*Q_o ; // Load of the alternator in kVA
S_o_conjugate_m = abs(S_o_conjugate);//S_o_conjugate_m = magnitude of S_o_conjugate in kVA
S_o_conjugate_a = atan(imag(S_o_conjugate) /real(S_o_conjugate))*180/%pi;
//S_o_conjugate_a=phase angle of S_o_conjugate in degrees

disp("Example 8-15");
printf(" \n  Power tabulation grid : \n ");
printf(" \n  \t\t P \t\t ±jQ \t\t S* ");
printf(" \n  \t\t(kW) \t\t(kvar) \t\t(kVA) \t\t cosӨ ");
printf(" \n  ________________________________________________________________________");
printf(" \n  Original : \t%d \t\t j%.f \t\t %.1f \t%.2f lag",real(S_o_conjugate) ,imag(S_o_conjugate) ,S_o_conjugate_m,cosd(S_o_conjugate_a));
printf(" \n  Added : \t0.8x \t\t j0.6x \t\t x \t\t0.80 lag" );
printf(" \n  Final :    (%d + 0.8x) \tj(%.f + 0.6x)   %.1f \t0.841 lag\n",real(S_o_conjugate) ,imag(S_o_conjugate),S_f_conjugate );

// Calculations
// case a
// Assume x is the additional kVA load. Then real and quadrature powers are 0.8x and j0.6x
// respectively,as shown. Adding each column vertically and using the Pythagorean theorem,
// we may write (2275 + 0.8x)^2 + (1410 + 0.6x)^2 = (3333.3)^2, and solving this eqution yields
// the quadratic x^2 + 5352x -3947163 = 0. Applying the quadratic yields the added kVA load:
x = poly(0,'x'); // Defining a polynomial with variable 'x' with  root at 0
p = -3947163 + 5352*x + x^2 
a = 1 ; // coefficient of x^2
b = 5332 ; // coefficient of x
c = -3947163 ; // constant

// Roots of p
x1 = ( -b + sqrt (b^2 -4*a*c ) ) /(2* a);
x2=( -b - sqrt (b^2 -4*a*c ) ) /(2* a);

// case b
P_a = 0.8*x1 ; // Added active power of the additional load in kW
Q_a = 0.6*x1 ; // Added reactive power of the additional load in kvar

// case c
P_f = P_o + P_a ; // Final active power of the additional load in kW
Q_f = Q_o + Q_a ; // Final reactive power of the additional load in kvar 

// case d
PF = P_f / S_f_conjugate ; // Final power factor
// Validity check
S_conjugate_f = P_f + %i*Q_f ; // Final kVA of the load 
S_conjugate_f_m = abs(S_conjugate_f);//S_conjugate_f_m = magnitude of S_conjugate_f in kVA
S_conjugate_f_a = atan(imag(S_conjugate_f) /real(S_conjugate_f))*180/%pi;
//S_conjugate_f_a=phase angle of S_conjugate_f in degrees

// Display the results

disp(" Solution : ")

printf(" \n a: The given data is shown in the above power tabulation grid.Assume");
printf(" \n    x is the additional kVA load. Then real and quadrature powers are");
printf(" \n    0.8x and j0.6x respectively,as shown.Adding each column vertically");
printf(" \n    and using the Pythagorean theorem, we may write");
printf(" \n    (2275 + 0.8x)^2 + (1410 + 0.6x)^2 = (3333.3)^2, and solving this");
printf(" \n    equation yields the quadratic as follows : \n");
printf(" \n    x^2 + 5332x -3947163 = 0. \n ")
printf(" \n    Applying the quadratic yields the added kVA load:");
printf(" \n    Roots of quadratic Eqn p are \n ");
printf(" \n    x1 = %.2f \n    x2 = %.2f ", x1, x2 );
printf(" \n    Consider +ve value of x for added kVA so");
printf(" \n    x = S*a = %.2f kVA \n ", x1 );

printf(" \n b: P_a = %.1f kW \n ", P_a );
printf(" \n    Q_a in kvar = \n");disp(%i*Q_a);

printf(" \n c: P_f = %.1f kW \n ", P_f );
printf(" \n    Q_f in kvar = \n");disp(%i*Q_f);

printf(" \n d: PF = cosθ_f = %.3f lagging \n ", PF );
printf(" \n    Validity check\n    S*f = ");disp(S_conjugate_f);
printf(" \n    S*f = %.1f <%.2f kVA \n",S_conjugate_f_m,S_conjugate_f_a);
printf(" \n    PF = cos(%.1f) = %.3f lagging",S_conjugate_f_a ,cosd(S_conjugate_f_a));

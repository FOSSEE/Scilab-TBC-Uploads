// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 8: AC DYNAMO TORQUE RELATIONS - SYNCHRONOUS MOTORS
// Example 8-5

clear; clc; close; // Clear the work space and console.

// Given data
// Y-connected synchronous dynamo
P = 2 ; // No. of poles
hp = 1000 ; // power rating of the synchronous motor in hp
V_L = 6000 ; // Line voltage in volt
f = 60 ; // Frequency in Hz
R_a = 0.52 ; // Effective armature resistance in ohm
X_s = 4.2 ; // Synchronous reactance in ohm
P_t = 811 ; // Input power in kW
PF = 0.8 ; // Power factor leading

// Calculated values
E_gp = 3687 ; // Generated voltage/phase in volt 
V_p = V_L / sqrt(3); // Phase voltage in volt
E_r = 412.8 ; // Resultant EMF across armature/phase in volt
deba = 119.81 ; // Difference angle at 0.8 leading PF in degrees
theta = 36.87 ; // Power factor angle in degrees
IaXs = 409.7 ; // Voltage drop across synchronous reactance in volt
IaRa = 50.74 ; // Voltage drop across armature resistance in volt

// Calculations

// Torque angle alpha in degrees calculated by different Eqns
// case a
alpha1 = acosd( ( E_gp^2 + V_p^2 - E_r^2 ) / ( 2*E_gp*V_p ) ); // Eq.8-12

// case b
alpha2 = asind( ( E_r * sind(deba) ) / ( E_gp ) ); // Eq.8-13

// case c
alpha3 = theta - atand( (V_p*sind(theta) + IaXs) / (V_p*cosd(theta) - IaRa) );// Eq.8-14

// Display the results
disp("Example 8-5 Solution : ");
printf(" \n a: Using Eq.(8-12) \n    alpha = %.2f degrees \n ", alpha1 );

printf(" \n b: Using Eq.(8-13) \n    alpha = %.2f degrees \n ", alpha2 );

printf(" \n c: Using Eq.(8-14) \n    alpha = %.2f degrees \n ", alpha3 );
printf(" \n    Slight variation in case c alpha is due to tan inverse value ");
printf(" \n    which was calulated to be 42.445604 degrees, instead of 42.44 degrees(textbook).")

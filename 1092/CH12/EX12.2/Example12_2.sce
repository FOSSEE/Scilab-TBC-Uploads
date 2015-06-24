// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 12: POWER,ENERGY,AND EFFICIENCY RELATIONS OF DC AND AC DYNAMOS
// Example 12-2

clear; clc; close; // Clear the work space and console.

// Given data
// data from Ex.12-1
P = 10000 ; // Power rating of the shunt generator in W
V = 230 ;// Voltage rating of the shunt generator in volt
S = 1750 ; // Speed in rpm of the shunt generator

// ( Solutions from Example 12-1 )
Rotational_losses = 489.2 // Rotational losses at full load in W
armature_loss = 396 ; // Full-load armature loss in W
field_loss = 230 ; // Full-load field loss in W

// case a
x1 = (1/4); // Fraction of full-load
// Subscript a for eta indicates case a
eta_a = (P*x1) / ( (P*x1) + Rotational_losses + (armature_loss*(x1^2)+field_loss) ) * 100 ; 

// case b
x2 = (1/2); // Fraction of full-load
// Subscript b for eta indicates case b
eta_b = (P*x2) / ( (P*x2) + Rotational_losses + (armature_loss*(x2^2)+field_loss) ) * 100 ; 

// case c
x3 = (3/4); // Fraction of full-load
// Subscript c for eta indicates case c
eta_c = (P*x3) / ( (P*x3) + Rotational_losses + (armature_loss*(x3^2)+field_loss) ) * 100 ; 

// case d
x4 = (5/4); // Fraction of full-load
// Subscript d for eta indicates case d
eta_d = (P*x4) / ( (P*x4) + Rotational_losses + (armature_loss*(x4^2)+field_loss) ) * 100 ; 

// Display the results
disp("Example 12-2 Solution : ");

printf(" \n    If x is the fraction of full-load, then \n ");
printf(" \n a: Efficiency of generator when x = %.2f ",x1 );
printf(" \n    η = %.1f percent \n ",eta_a);

printf(" \n b: Efficiency of generator when x = %.2f ",x2 );
printf(" \n    η = %.1f percent \n ",eta_b);

printf(" \n c: Efficiency of generator when x = %.2f ",x3 );
printf(" \n    η = %.1f percent \n ",eta_c);

printf(" \n d: Efficiency of generator when x = %.2f ",x4 );
printf(" \n    η = %.1f percent \n ",eta_d);

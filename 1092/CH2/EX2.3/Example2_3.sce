// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 2: Dynamo Construction and Windings
// Example 2-3

clear; clc; close; // Clear the work space and console.

// Given data
slots = 72; // No. of slots
P = 4; // No. of poles
coils_spanned = 14; // 14 slots are spanned while winding the coils

// Calculations
Pole_span = slots / P; // Pole span
p_not = coils_spanned / Pole_span * 180; // Span of the coil in
// electrical degrees
funcprot(0) ; // Use  to avoid this message "Warning : redefining function: beta "
beta = (180 - p_not);
k_p1 = cosd( beta / 2 ); // Pitch factor using eq(2-7)
k_p2 = sind( p_not / 2 ); // Pitch factor using eq(2-8)

// Display the results
disp("Example 2-3 Solution : ")
printf(" \n a: Full-pitch coil span = %d slots/pole ", Pole_span );
printf(" \n b: p = %d degrees ", p_not );
printf(" \n c: kp = %.2f \t\t eq(2-7)", k_p1 );
printf(" \n d: kp = %.2f \t\t eq(2-8)", k_p2 );


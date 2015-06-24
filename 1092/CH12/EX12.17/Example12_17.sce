// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 12: POWER,ENERGY,AND EFFICIENCY RELATIONS OF DC AND AC DYNAMOS
// Example 12-17

clear; clc; close; // Clear the work space and console.

// Given data
// code letter = J of SCIM (Ex.12-16)

// Calculations
// case a
// From Appendix A-3,Table 430-7(b),the starting kVA/hp (with rotor locked) is 
// less than 7.99,which, when substituted in the following equation, yields a
// maximum starting current of :

// subscript u for I_s indicates upper limit of starting current
I_s_u = (7.99*(7.5*1000))/(sqrt(3)*220) ;

// case b
// The lower limit,code letter J,is 7.1 kVA/hp. Thus :

// subscript l for I_s indicates lower limit of starting current
I_s_l = (7.1*(7.5*1000))/(sqrt(3)*220) ;

// Display the results
disp("Example 12-17 Solution : ");

printf(" \n a: From Appendix A-3,Table 430-7(b),the starting kVA/hp ");
printf(" \n    (with rotor locked) is less than 7.99,which, when substituted ");
printf(" \n    in the following equation, yields a maximum starting current of :");
printf(" \n    I_s = %.1f A \n",I_s_u);

printf(" \n b: The lower limit,code letter J,is 7.1 kVA/hp.\n    Thus :");
printf(" \n    I_s = %.1f A ",I_s_l );

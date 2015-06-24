// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 14: TRANSFORMERS
// Example 14-9

clear; clc; close; // Clear the work space and console.

// Given data
kVA = 1 ; // kVA rating of the transformer
V_1 = 220 ; // Primary voltage in volt
V_2 = 110 ; // Secondary voltage in volt
f_o = 400 ; // Frequency in Hz(original frequency)
f_f = 60 ; // Frequency in Hz for which the transformer is to be used

// Calculations
alpha = V_1 / V_2 ; // Transformation ratio
// case a
E_h = V_1 * (f_f / f_o); // Maximum rms voltage in volt applied to HV side
E_1 = E_h ; 
E_l = E_1 / alpha ; // Maximum rms voltage in volt applied to HV side

// case b
V_h = V_1 ; // High voltage in volt
I_h = kVA * 1000 / V_h ;
Vh = E_h ;
kVA_new = Vh * I_h ;

// Display the results
disp("Example 14-9 Solution : ");

printf(" \n a: To maintain the same permissible flux density in Eqs.(14-15)");
printf(" \n    and (14-16),both voltages of the high and low sides must change ");
printf(" \n    in the same proportion as the frequency :  ");
printf(" \n    E_h = %d V \n    and,\n    E_l = %.1f V\n",E_h , E_l );

printf(" \n b: The original current rating of the transformer is unchanged since");
printf(" \n    the conductors still have the same current carrying capacity.");
printf(" \n    Thus,\n    I_h = %.3f A\n    and the new kVA rating is",I_h );
printf(" \n    V_h*I_h = V_1*I_1 = %d VA = %.2f kVA",kVA_new , kVA_new/1000);

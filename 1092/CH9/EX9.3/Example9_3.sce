// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 9: POLYPHASE INDUCTION (ASYNCHRONOUS) DYNAMOS
// Example 9-3

clear; clc; close; // Clear the work space and console.

// Given data
P = 4 ; // Number of poles in Induction motor
f = 60 ; // Frequency in Hz 
s_f = 5*(1/100) ; // Full-load rotor slip

// Calculations

// case a
// slip, s = (S -S_r)/S ; 
// where S = Speed in rpm of the rotating magnetic field and 
//       S_r = Speed in rpm of the rotor
s = 1 ; // Slip = 1, at the instant of starting, since S_r is zero
f_r_a = s * f ; // Rotor frequency in Hz at the instant of starting

// case b
f_r_b = s_f * f ;// Full-load rotor frequency in Hz

// Display the results
disp("Example 9-3 Solution : ");

printf(" \n a: At the instant of starting, slip s = (S -S_r)/S ; ");
printf(" \n    where S_r is the rotor speed. Since the rotor speed at the ");
printf(" \n    instant of starting is zero, s = (S - 0)/S = 1 , or unity slip.");
printf(" \n\n    The rotor frequency is \n    f_r  = %d Hz \n\n ", f_r_a);

printf(" \n b: At full-load,the slip is 5 percent(as given), and therefore");
printf(" \n    s = %.2f \n    f_r = %d Hz " , s_f , f_r_b);

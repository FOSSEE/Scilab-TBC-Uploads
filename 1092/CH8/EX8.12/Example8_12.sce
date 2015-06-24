// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 8: AC DYNAMO TORQUE RELATIONS - SYNCHRONOUS MOTORS
// Example 8-12

clear; clc; close; // Clear the work space and console.

// Given data
S_conjugate = 1000 ; // Apparent complex power in kVA
cos_theta_f = 0.8 ; // lagging PF
sin_theta_f = sqrt( 1 - (cos_theta_f)^2 );

// Calculated values from Ex.8-11
P_o = 600 ; // Active power dissipated by the load in kW
Q_o = 800 ; // Inductive reactive quadrature power - 
// - drawn from and returned to the supply 

// Calculations :
 
// case a
P_f = S_conjugate * cos_theta_f ; // Active power dissipated by the load in kW

// case b
Q_f = S_conjugate * sin_theta_f ; // Reactive quadrature power drawn from -
//  - and returned to the supply

// case c
P_a = P_f - P_o ; // Additional active power in kW that may be supplied to -
// - new customers

// case d
jQ_a = %i * ( Q_f ) - %i * ( Q_o ); // Correction kvar required to raise PF -
// -from 0.6 to o.8 lagging

// case e
S_c_conjugate = 0 - jQ_a ; // Rating of correction capacitors needed for case d

// Display the results

disp("Example 8-12 Solution : ");
printf(" \n a: P_f = %d kW \n ", P_f );
printf(" \n b: +jQ_f in kvar = ");disp(%i*Q_f);
printf(" \n c: P_a = %d kW \n ", P_a );
printf(" \n d: jQ_a in kvar =   ");disp(jQ_a)
printf(" \n e: S_c_conjugate = %d kVA \n ", abs(S_c_conjugate) );
printf(" \n f: The power tabulation grid is shown in Fig.8-26b.");

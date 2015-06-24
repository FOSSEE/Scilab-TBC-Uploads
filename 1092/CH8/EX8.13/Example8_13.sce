// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 8: AC DYNAMO TORQUE RELATIONS - SYNCHRONOUS MOTORS
// Example 8-13

clear; clc; close; // Clear the work space and console.

// Ex.8-12 PF
cos_theta = 0.6 ; // PF lagging

// Given data
S_conjugate = 1000 ; // Apparent complex power in kVA
cos_theta_f = 1.0 ; // unity PF
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
Q_a = -abs(jQ_a); // 

// case e
S_c_conjugate = 0 - jQ_a ; // Rating of correction capacitors needed for case d

// Display the results

disp("Example 8-13 Solution : ");
printf(" \n a: P_f = %d kW \n ", P_f );
printf(" \n b: +jQ_f in kvar = ");disp(%i*Q_f);
printf(" \n c: P_a = %d kW \n ", P_a );
printf(" \n d: jQ_a in kvar =   ");disp(jQ_a)
printf(" \n e: S_c_conjugate = %d kVA \n ", abs(S_c_conjugate) );
printf(" \n f: The power tabulation grid is shown below.\n");
printf(" \n    \t\t P \t ±jQ \t S* ");
printf(" \n    \t\t(kW) \t(kvar) \t(kVA) \t cosӨ ");
printf(" \n    ___________________________________________");
printf(" \n    Original : \t %d \t +j%d \t %d \t %.1f ",P_o ,Q_o ,S_conjugate,cos_theta);
printf(" \n    Added : \t %d \t %dj \t __ \t __",P_a ,Q_a );
printf(" \n    Final : \t %d \t +j%d \t %d \t %.1f",P_f ,Q_f ,S_conjugate,cos_theta_f);

// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 8: AC DYNAMO TORQUE RELATIONS - SYNCHRONOUS MOTORS
// Example 8-14

clear; clc; close; // Clear the work space and console.

// Given data
P_o = 2000 ; // load in kW drawn by a factory
cos_theta_o = 0.6 ; // PF lagging
sin_theta_o = sqrt( 1-  (cos_theta_o)^2 );
cos_theta_f = 0.85 ; // final PF lagging required
sin_theta_f = sqrt( 1-  (cos_theta_f)^2 );
P_a = 275 ; // Losses in the synchronous capacitor in kW

// Calculations
// case a
S_o_conjugate = P_o / cos_theta_o ; // Original kVA drawn from the utility 

// case b
Q_o = S_o_conjugate * sin_theta_o ; // Original lagging kvar

// case c
P_f = P_o + P_a ; // Final system active power consumed from the utility in kW

// case d
S_f_conjugate = P_f / cos_theta_f ; // Final kVA drawn from the utility 
S_f_conjugate_a = acosd(cos_theta_f); // Phase angle of S_f_conjugate in degrees 

// case e
jQ_f = S_f_conjugate * sin_theta_f ; // Final lagging kvar
jQ_a = %i*(jQ_f) - %i*(Q_o); // Correction kvar produced by the synchronous capacitor
Q_a = abs(jQ_a); // Magnitude of jQ_a in kvar 

// case f
P = P_a ;
S_a_conjugate = P -%i*(abs(jQ_a)); // kVA rating of the synchronous capacitor
S_a_conjugate_m = abs(S_a_conjugate);//S_a_conjugate_m = magnitude of S_a_conjugate in kVA
S_a_conjugate_a = atan(imag(S_a_conjugate) /real(S_a_conjugate))*180/%pi;
//S_a_conjugate_a=phase angle of S_a_conjugate in degrees
PF_f = cosd(S_a_conjugate_a); // PF

// Display the results
disp("Example 8-14 Solution : ");
printf(" \n a: S*o = %.1f kVA \n",S_o_conjugate );

printf(" \n b: Q*o in kvar = " );disp(%i*Q_o);

printf(" \n c: P*f = %.f kW \n",P_f );

printf(" \n d: S*f = %.1f <%.1f kVA\n ",S_f_conjugate,S_f_conjugate_a );

printf(" \n e: jQ_f in kvar = ");disp(%i*jQ_f);
printf(" \n    -jQ_a in kvar = ");disp(jQ_a);

printf(" \n f: S*a = %.f <%.2f kVA ", S_a_conjugate_m , S_a_conjugate_a );
printf(" \n    (cos(%.2f) = %.3f leading)\n",S_a_conjugate_a,PF_f);

printf(" \n g: Power tabulation grid : \n ");
printf(" \n    \t\t P \t ±jQ \t S* ");
printf(" \n    \t\t(kW) \t(kvar) \t(kVA) \t cosӨ ");
printf(" \n    ___________________________________________");
printf(" \n    Original : \t %d \t +j%.f  %.1f  %.1f lag",P_o ,Q_o ,S_o_conjugate,cos_theta_o);
printf(" \n    Added    : \t %d \t -%.fj  %.f \t %.3f lead",P_a ,Q_a,S_a_conjugate_m,cosd(S_a_conjugate_a) );
printf(" \n    Final    : \t %d \t +j%.f  %.1f  %.2f lag",P_f ,jQ_f ,S_f_conjugate,cos_theta_f);


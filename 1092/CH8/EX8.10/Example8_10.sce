// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 8: AC DYNAMO TORQUE RELATIONS - SYNCHRONOUS MOTORS
// Example 8-10

clear; clc; close; // Clear the work space and console.

// Given data
kVA = 10000 ; // kVA rating of a system
cos_theta = 0.65 ; // power factor of the system
sin_theta = sqrt( 1 - (cos_theta)^2 );
cos_theta_b = 0.85 ; // Raised PF
sin_theta_b = sqrt( 1 - (cos_theta_b)^2 );
cost = 60 ; // cost of the synchronous capacitor to improve the PF in dollars/kVA
// neglect the losses in the synchronous capacitor

// Calculations
// case a : For unity PF
// at the original load
kW_a = kVA * cos_theta ; //
theta = acosd(cos_theta) ; // Power factor angle of the system in degrees
kvar = kVA * sind(theta) ; // Reactive power in kvar
kVA_a = kvar ;
cost_cap_a = kvar * cost ; // Cost of raising the PF to unity PF in dollars

// case b
theta_b = acosd(cos_theta_b) ; // Power factor angle of the system in degrees
kVA_b = kW_a / cos_theta_b ; // kVA value reduction
kvar_b = kVA_b * sind(theta_b) ; // final kvar value reduced
kvar_add = kvar - kvar_b ; // kvar of correction added

cost_cap_b = kvar_add * cost ; // Cost of raising the PF to 0.85 PF in dollars

// Display the results

disp("Example 8-10 Solution : ");
printf(" \n    Note : Slight variations in the kvar and cost values are due to  ");
printf(" \n    non-approximation of theta values while calculating in scilab.\n");
printf(" \n a: At the original load,\n");
printf(" \n    kW = %d kW at theta = %.1f degrees \n", kW_a , theta );
printf(" \n    kvar = %.3f kvar\n\n    For unity PF,",kvar);
printf(" \n    kVA of synchronous capacitor = %.3f kVA (neglecting losses)\n",kVA_a);
printf(" \n    Cost of synchronous capacitor = $%.f \n\n",cost_cap_a );

printf(" \n b: For %.2f, PF = cos(%.1f), the total power,",cos_theta_b, theta_b);
printf(" \n    %.f kW,remains the same. Therefore,\n ",kW_a);
printf(" \n    kVA of final system reduced to = %.f kVA \n",kVA_b);
printf(" \n    kvar of final system reduced to = %.f kvar \n    Therefore,",kvar_b);

printf(" \n    kvar of correction added = %.3f kvar\n ",kvar_add);
printf(" \n    kVA of synchronous capacitor = %.3f kVA (neglecting losses)\n",kvar_add);
printf(" \n    Cost of synchronous capacitor = $%.f",cost_cap_b );
printf(" \n    or less than half the cost in part(a)");

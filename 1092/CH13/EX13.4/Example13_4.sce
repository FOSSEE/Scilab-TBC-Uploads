// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 13: RATINGS,SELECTION,AND MAINTENANCE OF ELECTRIC MACHINERY
// Example 13-4

clear; clc; close; // Clear the work space and console.

// Given data
P_o = 25 ; // Rated power of SCIM in hp
// class B insulation
T_ambient = 40 ; // Standard ambient temperature recorded by the embedded hot-spot detectors in degree celsius
T_hottest = 115 ; // Hottest-spot winding temperature recorded by the embedded hot-spot detectors in degree celsius

// Calculations
// case a
// from table 13-1 allowable temperature rise in 90 degree celsius

// case b
T_rise = T_hottest - T_ambient ; // Actual temperature rise for the insulation type used in degree celsius

// case c
P_f = P_o * (90/T_rise); // Approximate power to the motor that can be delivered at T_rise

// case d
// same as P_f

// case e
// answer from case a

// Display the results
disp("Example 13-4 Solution : ");
printf(" \n a: The allowable temperature rise for the ");
printf(" \n    insulation type used = 90 degree celsius(from table 13-1)\n");

printf(" \n b: The actual temperature rise for the insulation type used = %d degree celsius\n",T_rise);

printf(" \n c: The approximate power to the motor that can be delivered at T_rise");
printf(" \n    P_f = %d hp\n",P_f);

printf(" \n d: Power rating that may be stamped on the nameplate = %d hp(subject to test at this load) \n ",P_f);

printf(" \n e: The temperature rise that must be stamped on the nameplate = 90 degree celsius");

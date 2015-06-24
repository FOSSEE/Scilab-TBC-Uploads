// To find Average voltage Range of error
// Modern Electronic Instrumentation And Measurement Techniques
// By Albert D. Helfrick, William D. Cooper
// First Edition Second Impression, 2009
// Dorling Kindersly Pvt. Ltd. India
// Example 1-1 in Page 3


clear; clc; close;

// Given data
E_1 = 117.02; // Voltage observed by 1st observer is 117.02V
E_2 = 117.11; // Voltage observed by 2nd observer is 117.11V
E_3 = 117.08; // Voltage observed by 3rd observer is 117.08V
E_4 = 117.03; // Voltage observed by 4th observer is 117.03V

//Calculations
E_av = (E_1+E_2+E_3+E_4)/4;
printf("(a)  The average voltage, E_av = %0.2f V\n ",E_av);

E_max = max (E_1,E_2,E_3,E_4); // Maximum value among the 4 nos
E_min = min (E_1,E_2,E_3,E_4); // Minimum value among the 4 nos

range_1 = E_max - E_av; // Range calculated using two different formulae
range_2 = E_av - E_min; // Range calculated using two different formulae

avg_range = (range_1+range_2)/2
printf("(b)  The average range of error = +/- %0.2f V",avg_range);

//Result
// (a)  The average voltage, E_av = 117.06 V
// (b)  The average range of error = +/- 0.05 V 









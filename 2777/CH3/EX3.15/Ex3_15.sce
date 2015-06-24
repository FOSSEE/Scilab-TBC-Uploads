
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD

// CHAPTER : 3 : TRANSFORMERS 

// EXAMPLE : 3.15

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA
// Refer figure 3.17 page no. 101

S = 500 * 10 ^ 6;                   // Rating of power transformer in VA
V1 = 400 * 10^3;                    // HV side rating of the power transformer in Volts
V2 = 131 * 10^3;                    // LV side rating of the power transformer in Volts
pcu = 5;                            // Rated Copper loss in Percentage
pi = 1;                             // Rated Core loss in Percentage


// CALCULATIONS

Pcu = S*(pcu/100);                              // Rated Copper loss in Watts
Pi = S*(pi/100);                                // Rated Core loss in Watts
kt = 0.25*3 + 0.75*3 + 1*3 + 0.5*3 + 1.0*3 + 0.25*6 + 1.0*3;            // From graph figure 3.17 page no. 101
out = S*kt;                                     // Output energy in kilo-watt-hour
kt2 = 0.54375;                                   // From graph figure 3.17 page no. 101
eloss = 24*Pi + S*kt2;                          // Energy required in losses in kilo-watt-hour { Energy required in losses = 24*Pi + sigma(copper loss * duration)}
eta = 100*(out/(out+eloss));                    // All day efficiency


// DISPLAY RESULTS

disp("EXAMPLE : 3.15: SOLUTION :-");
printf("\n (a) All day efficiency = %.2f percent \n",eta)


// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD

// CHAPTER : 3 : TRANSFORMERS 

// EXAMPLE : 3.17

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA

S = 500;                            // Rating of the 3-Phase transformer in kVA
V1 = 11 * 10 ^ 3;                   // Votage rating of the 3-Phase transformer on HV side in Volts
V2 = 400;                           // Votage rating of the 3-Phase transformer on LV side in Volts
f = 60;                             // Frequencyin Hertz
eta = 98;                           // Maximum Efficency of the Transformer in Percentage Operating at 80% full load and Unity Power factor 
K = 0.8;                            // Beacuse 80% Full load
x = 1.0;                            // Unity Power factor
Ex = 4.5;                           // Percentage impedance 


// CALCULATIONS

Out = S * K * x;                      // Output in KiloWatts at 80% full load and Unity Power factor 
Inp = Out/(eta/100);                  // Input in KiloWatts at full load and Unity Power factor 
Total_loss = Inp - Out;               // Total loss at full load  in KiloWatts
Cu_loss = Total_loss/2;               // Copper loss in KiloWatts at 80% full load and Unity Power factor 
Pcu = Cu_loss/(K ^2 );                // Full load Copper loss in KiloWatts
Er = Pcu/S;                           // Per unit Resistance
theta = atand((Ex/100)/Er);           // Power factor angle at secondary terminal voltage is minimum in Degrees
Pf = cosd(theta);                     // Load power factor for minimum volatge of the secondary terminal


// DISPLAY RESULTS

disp("EXAMPLE : 3.17 : SOLUTION :-") ;
printf("\n (a) Load power factor for minimum volatge of the secondary terminal , cos(theta) = %.4f lagging \n ",Pf);

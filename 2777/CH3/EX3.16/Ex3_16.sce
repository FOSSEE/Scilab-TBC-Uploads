
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD

// CHAPTER : 3 : TRANSFORMERS 

// EXAMPLE : 3.16

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA

S = 20 * 10 ^ 3;                    // Rating of the Step-down Transformer in VA
f = 50;                             // Frequency in Hertz
V = 200;                            // Normally supplied Voltage of Step-down Transformer in Volts
Vsc = 100;                          // Potential difference when Secondary being Short- Circuited in Volts
Isc = 10;                           // Primary Current when Secondary being Short- Circuited in Amphere
Cos_theta_sc = 0.28;                // Power factor when Secondary being Short- Circuited


// CALCULATIONS

I = S/V;                                    // Rated primary current in Amphere
Wsc = Vsc * Isc * Cos_theta_sc;             // Power loss when Secondary being Short- Circuited in Watts
R = Wsc/(Isc ^ 2);                          // Resistance of Transformer referred to primary side in Ohms
Z = Vsc/Isc;                                // Referred Impedence in Ohms
X = sqrt((Z^2)-(R^2));                      // Leakage Reactance referred to primary side in Ohms
Er = (I*R)/V;                               // Per unit Resistance in Ohms
Ex = (I*X)/V;                               // Per unit Reactance in Ohms
Cos_theta1 = 1.0;                           // Unity Power factor
Cos_theta2 = 0.6;                           // 0.6 Power factor Lagging
Cos_theta3 = 0.6;                           // 0.6 Power factor Leading
Sin_theta1 = 0.0;                           // Unity Power factor
Sin_theta2 = 0.8;                           // 0.6 Power factor Lagging
Sin_theta3 = 0.8;                           // 0.6 Power factor Leading
E1 = (Er*Cos_theta1)+(Ex*Sin_theta1);       // pu Regulation at Unity Power factor
E2 = (Er*Cos_theta2)+(Ex*Sin_theta2);       // pu Regulation at 0.6 Power factor Lagging
E3 = (Er*Cos_theta3)-(Ex*Sin_theta3);       // pu Regulation at 0.6 Power factor Leading


// DISPLAY RESULTS

disp("EXAMPLE : 3.16 : SOLUTION :-") ;
printf("\n (a) pu Regulation at Unity Power factor , E = %.1f \n ",E1);
printf("\n (b) pu Regulation at 0.6 Power factor Lagging , E= % .2f \n",E2);
printf("\n (c) pu Regulation at 0.6 Power factor Leading , E= % .2f \n",E3);




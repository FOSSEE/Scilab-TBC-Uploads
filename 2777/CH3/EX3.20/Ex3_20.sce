
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD

// CHAPTER : 3 : TRANSFORMERS 

// EXAMPLE : 3.20

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA

V1 = 110;               // Primary voltage of the Two Transformers the two primaries are connected in parallel in Volts
I1 = 2.0;               // Primary Current in Amphere
P1 = 40;                // Primary power intake in Watts
V2 = 28;                // secondary voltage of the Two Transformers the two secondary are connected in phase opposition in Volts
I2 = 6.8;               // secondary Current in Amphere
P2 = 180;               // secondary power intake in Watts
a = 110/220;            // Turn ratio of the Transformer


// CALCULATIONS

theta_o = acosd((a*P1)/(a*I1*V1));                      // Primary Power factor angle in Degrees
Io = 1.0 * (cosd(theta_o)-sind(theta_o)* %i);                   // No-load current in individual transformer in Amphere
theta_sc = acosd((a*P2)/(a*I2*V2));                    // Secondary Power factor angle in Degrees
i_sc = I2 * ( cosd(theta_sc)-sind(theta_sc)* %i);      // Secondary current in Amphere
I_sc = (1/a)*i_sc;                                     // referred Secondary current in each of the primary side in Amphere
It1 = Io + I_sc;                                       // LT winding current in the 1st Transformer in Amphere
It2 = Io - I_sc;                                       // LT winding current in the 2nd Transformer in Amphere
In1 = It1 + It2;                                       // The current flowing on paralel connected LT winding (This is same as total no-load current in the two Transforemer) in Amphere


// DISPLAY RESULTS

disp("EXAMPLE : 3.20 : SOLUTION :-") ;
printf("\n (a) LT ( Primary ) winding current in the 1st Transformer , It1 = %.3f+j(%.4f) A \n ",real(It1),imag(It1));
printf("\n (b) LT ( Primary ) winding current in the 2nd Transformer , It2= %.3f+j%.5f A \n",real(It2),imag(It2));
printf("\n (c) LT winding are connected in parallel, the current flowing on paralel connected LT winding, In1 = %.3f+j(%.5f) A \n",real(In1),imag(In1));

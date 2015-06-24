
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD 

// CHAPTER : 3 : TRANSFORMERS 

// EXAMPLE : 3.2

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA

E1 = 6.6 * 10 ^ 3;              // Primary voltage in Volts
E2 = 220;                       // Secondary Voltage in volts 
f = 50;                         // Frequency in Hertz
phi_m = 0.06;                   // Flux in Weber
S = 50 * 10^6;                  // Rating of the single-phase transformer in VA

// CALCULATIONS

N1 = E1/(4.44*f*phi_m);         // Number of turns in Primary
vpn1 = E1/N1;                    // Voltage per turns in Primary in Volts/turn
N2 = E2/(4.44*f*phi_m);         // Number of turns in Secondary
vpn2 = E2/N2;                    // Voltage per turns in Secondary in Volts/turn


// DISPLAY RESULTS

disp("EXAMPLE : 3.2 : SOLUTION :-") ;
printf("\n (a.1) Number of turns in Primary , N1 = %.1f Turns nearly 496 Turns \n ",N1);
printf("\n (a.2) Number of turns in Secondary , N2 = %.1f Turns nearly 16 Turns \n",N2);
printf("\n (b.1) Voltage per turns in Primary , vpn1 = %.1f Volts/turns \n ",vpn1);
printf("\n (b.2) Voltage per turns in Secondary , vpn2 = %.2f Volts/turns \n ",vpn2);


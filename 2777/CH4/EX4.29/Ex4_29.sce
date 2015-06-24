
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD 

// CHAPTER : 4 : DIRECT CURRENT MACHINES 

// EXAMPLE : 4.29

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA

V = 220;                    // Shunt Motor operating Line Volatge in Volts
Ra = 0.2;                   // Armature Resistance in Ohms
Iam = 72;                   // Motor Armature current in Amphere
I = 12;                     // Line Current in Amphere
Ifm = 1;                    // Motor field Current in Amphere
Ifg = 1.5;                  // Generator field Current in Amphere


// CALCULATIONS

Iag = Iam - I;                           // Geneartor Armature current in Amphere
Pfm = V * Ifm;                           // Loss in Motor Field winding in Watts
Pfg = V * Ifg;                           // Loss in Geneartor Field winding in Watts
loss_ma = Iam ^ 2 * Ra;                  // Loss in Motor Armature circuit in Watts
loss_ga = Iag ^ 2 * Ra;                  // Loss in Generator Armature circuit in Watts
Em = V - Iam * Ra;                       // Motor EMF in Volts
Eg = V + Iag * Ra;                       // Generator EMF in Volts
T_loss = (V*I) - (Ra*Iam^2 + Ra*Iag^2);  // Total Iron and Rotational Loss in Watts
Pim = (V*Iam)+(V*Ifm);                   // Motor input in Watts
Wc = 0.5 * T_loss;                       // Total Iron and Rotational Loss in each Machine in Watts
Wm = Wc+(Ra*Iam^2)+V*Ifm;                // Motor losses in Watts
Pom = Pim - Wm;                          // Motor output in Watts
eta_m = (1-(Wm/Pom))*100;                // Motor Efficiency in Percentage
Pog = V*Iag;                             // Generator output in Watts
Wg = Wc+(Ra*Iag^2)+V*Ifg;                // Generator losses in Watts
Pin = Pog + Wg;                          // Generator input power in Watts
eta_g = (1-(Wg/Pin))*100;                // Generator Efficiency in Percentage


// DISPLAY RESULTS

disp("EXAMPLE : 4.29 : SOLUTION :-") ;
printf("\n (a) Motor Efficiency , eta = %.2f Percentage \n ",eta_m);
printf("\n (b) Generator Efficiency , eta = %.2f Percantage \n ",eta_g);
printf("\n\n    [ TEXT BOOK SOLUTION IS PRINTED WRONGLY ( I verified by manual calculation )]\n" );
printf("\n      WRONGLY PRINTED ANSWERS ARE :- (a) Total Iron and Rotational Loss = 720 W instead of %.1f W \n ",T_loss);
printf("\n                                     (b) Pim = 15912 W instead of %.f W \n ",Pim);
printf("\n                                     (c) Wm = 1371.4 Winstead of %.1f W \n ",Wm);
printf("\n                                     (d) Pom = 14540.6 W instead of %.1f W \n ",Pom);
printf("\n                                     (e) eta_m = 90.54 Percentage  instead of %.2f Percentage \n ",eta_m);
printf("\n                                     (f) eta_g = 93.22 Percentage  instead of %.2f Percentage \n ",eta_g);
printf("\n From Calculation of the Total Iron and Rotational Loss in each Machine (Wc), rest all the Calculated values in the TEXT BOOK is WRONG because of the Total Iron and Rotational Loss in each Machine (Wc) value is WRONGLY calculated and the same used for the further Calculation part \n")







// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD

// CHAPTER : 3 : TRANSFORMERS 

// EXAMPLE : 3.1

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA

Z = (0.05 + 0.05 * %i) * 100;          // Transmission line parameters (impedance) in Ohms (multiplied by 100 because distance of the Transmission line is 100km)
R = 0.05 * 100;                        // Transmission line Resistance in Ohms (multiplied by 100 because distance of the Transmission line is 100km)
V1 = 220;                             // Terminal voltage in Volts
V2 = 1 * 10 ^ 3;                      // Terminal volatge from Generator side in Volts
P = 20 * 10 ^ 3;                      // Power in Watts


// CACULATIONS

I1 = P/V1;                          // Line current for 220V in Amphere
I2 = P/V2;                          // Line current for 1kV in Amphere
I1Z = Z*I1;                         // Voltage drop due to I1 in Volts 
I2Z = Z*I2;                         // Voltage drop due to I2 in Volts
Loss1 = (I1 ^ 2) * R * 10 ^ -3;     // Line loss for I1 in kW
Loss2 = (I2 ^ 2) * R * 10 ^ -3;     // Line loss for I2 in kW
Vg1 = V1 + I1Z;                     // Input Voltages on Generator Terminal in Volts
Vg2 = V2 + I2Z;                     // Input Voltages on Generator Terminal in Volts


// DISPLAY RESULTS

disp("EXAMPLE : 3.1 : SOLUTION :-") ;
printf("\n (a.1) Voltage drop due to I1 , I1Z = % .2f+j%.2f  V \n ",real(I1Z),imag(I1Z));
printf("\n (a.2) Voltage drop due to I2 , I2Z = % .f+j%.f  V \n",real(I2Z),imag(I2Z));
printf("\n (b.1) Line loss for I1 , Loss1 = %.2f kW \n ",Loss1);
printf("\n (b.2) Line loss for I2 , Loss2 = % .2f kW \n",Loss2);
printf("\n (c.1) Input Voltages on Generator Terminal from a load terminal , Vg1 = %.2f+j%.2f = %.2f V \n ",real(Vg1),imag(Vg1),abs(Vg1));
printf("\n (c.2) Input Voltages on Generator Terminal from a Generating Station , Vg2 = % .f+j%.f = %.2f V \n",real(Vg2),imag(Vg2),abs(Vg2));
printf("\n\n    [ TEXT BOOK SOLUTION IS PRINTED WRONGLY ( I verified by manual calculation )]\n" );
printf("\n      WRONGLY PRINTED ANSWERS ARE :- (a) I1Z = (450.45)+j(450.45)V instead of (454.55)+j(454.55) V\n" );
printf("\n                                     (b) Vg1 = (670.45)+j(450.45) = 807.72 V  instead of % .2f+j%.2f = %.2f V \n",real(Vg1),imag(Vg1),abs(Vg1) );

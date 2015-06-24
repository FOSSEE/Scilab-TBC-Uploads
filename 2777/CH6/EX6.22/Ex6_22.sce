
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD
// CHAPTER : 6 : SYNCHRONOUS MACHINES

// EXAMPLE : 6.22

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA

E1 = 1100 + (%i*0);                         // EMFs of two identicel synchronous Generators in Volts per phase 
E2 = 1100*(cosd(5)-(%i*sind(5)));           // EMF in Volts per phase 
Zl = 1.0 + (%i*1.0);                        // Load impedance in Ohms per phase
Zs1 = 0.15 + (%i*2.1);                      // Synchronous impedance in Ohms per phase
Zs2 = 0.2 + (%i*3.3);                       // Synchronous impedance in Ohms per phase
f = 50;                                     // Frequency in Hertz


// CALCULATONS

Ys1 = 1/Zs1;                                        // Synchronous Admittance in Ohms per phase
Ys2 = 1/Zs2;                                        // Synchronous Admittance in Ohms per ohase
Yl = 1/Zl;                                          // Load Admittance in Ohms per ohase
V = ((E1*Ys1)+(E2*Ys2))/(Yl+Ys2+Ys1);               // Terminal Voltage in Volts per phase (From Millman's Theorem)
I1 = (E1-V)/Zs1;                                    // Individual current in Amphere per phase
I2 = (E2-V)/Zs2;                                    // Individual current in Amphere per phase
P1 = abs(V)*abs(I1)*cosd(atand(imag(V),real(V))-atand(imag(I1),real(I1)));                                  // Per phase actice power in Watts
P2 = abs(V)*abs(I2)*cosd(atand(imag(V),real(V))-atand(imag(I2),real(I2)));                                  // Per phase actice power in Watts
Ic = (E2-E1)/(Zs1+Zs2);                             // No-load circulating current in Amphere per phase


// DISPLAY RESULTS

disp("EXAMPLE : 6.22 : SOLUTION :-");
printf("\n (a) Terminal Voltage per phase, V = %.2f < %.1f V \n",abs(V),atand(imag(V),real(V)))
printf("\n (b) Individual currents per phase, I1 = %.f < %.1f A \n\n     I2 = %.1f < %.1f A \n",abs(I1),atand(imag(I1),real(I1)),abs(I2),atand(imag(I2),real(I2)))
printf("\n (c) Per phase Active Power , P1 = %.f W \n\n     P2 = %.1f W \n ",P1,P2)
printf("\n (d) No-load current per phase, Ic = %.2f < %.2f A \n",abs(Ic),atand(imag(Ic),real(Ic)))

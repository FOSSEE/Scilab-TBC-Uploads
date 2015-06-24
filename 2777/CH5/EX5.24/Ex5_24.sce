
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD

// CHAPTER : 5 : INDUCTION MACHINES

// EXAMPLE : 5.24

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA

m = 3;                          // Total Number of phase in Induction Motor
f = 50;                         // Frequency in Hertz
V = 440;                        // Operating voltage of the Induction Motor in Volts
R1 = 0.2;                      // Circuit Parameter in Ohms
R2 = 0.4;                      // Circuit Parameter in Ohms
X1 = 1.0;                      // Circuit Parameter in Ohms
X2 = 1.5;                      // Circuit Parameter in Ohms
Rc = 150;                      // Circuit Parameter in Ohms
Xm = 30;                       // Circuit Parameter in Ohms


// CALCULATIONS

V1 = V/sqrt(3);                                     // Rated Voltage in Volts
Zdol = (R1+%i*X1)+(Rc*%i*Xm*(R2+%i*X2))/(Rc*%i*Xm+Rc*(R2+%i*X2)+(%i*Xm)*(R2+%i*X2));                                           // Equivalent impedance per phase in DOL starter in Ohms
I = V1/Zdol;                                        // Starting Current in DOL starter in Amphere

// For Case(a) A per Phase resistance of 0.5 Ohms is added in Series with the stator circuit

Zsr =  (0.5+R1+%i*X1)+((Rc*%i*Xm*(R2+%i*X2))/((Rc*%i*Xm+Rc*(R2+%i*X2)+(%i*Xm)*(R2+%i*X2))));                                     // Total impedance seen from the terminals in Ohms
Isr = V1/Zsr;                                         // Starting Current in DOL starter in Amphere

// For Case(b) A per Phase resistance of 0.5 Ohms is added in Series with the rotor circuit here assumed that stator to rotor turn ratio is 1.0

Zrr =  (R1+%i*X1)+((Rc*%i*Xm*(0.5+R2+%i*X2))/(Rc*%i*Xm+Rc*(0.5+R2+%i*X2)+(%i*Xm)*(0.5+R2+%i*X2)));                            // Total impedance seen from the terminals in Ohms
Irr = V1/Zrr;                                      // Starting Current in DOL starter in Amphere

// For Case(c) When applied Voltage reduced to 50%

I_c = (0.5*V1)/Zdol;                                // Starting Current in DOL starter in Amphere

// For Case(d) When Motor is supplied by reduced Voltage of 44V ( Voltage is reduced by 10%) and the reduced frequency is 5Hz

f_n = 5;                                          // Reduced Frequency in Hertz
X1_n = (f_n/f)*X1;                                // Changed Circuit Parameter in Ohms
X2_n = (f_n/f)*X2;                                // Changed Circuit Parameter in Ohms
Xm_n = (f_n/f)*Xm;                                // Changed Circuit Parameter in Ohms
Zdol_n = (R1+%i*X1_n)+((Rc*%i*Xm_n*(R2+%i*X2_n))/(Rc*%i*Xm_n+Rc*(R2+%i*X2_n)+(%i*Xm_n)*(R2+%i*X2_n)));                         // Equivalent impedance per phase in DOL starter in Ohms
I_n = (V1*0.1)/Zdol_n;                            // Starting Current in DOL starter in Amphere
Ratio = abs(I_n)/abs(I);                          // Ratio of the Starting Current witha the rated Voltage and frequency to the reduced Voltage and frequency


// DISPLAY RESULTS

disp("EXAMPLE : 5.24 : SOLUTION :-");
printf("\n Normal Initial Starting Current in DOL starter, I = %.1f <%.1f A \n",abs(I),atand(imag(I),real(I)))
printf("\n For Case(a) A per Phase resistance of 0.5 Ohms is added in Series with the stator circuit \n")
printf("\n              Initial Starting Current in DOL starter, I = %.1f <%.2f A \n",abs(Isr),atand(imag(Isr),real(Isr)))
printf("\n  For Case(b) A per Phase resistance of 0.5 Ohms is added in Series with the rotor circuit \n")
printf("\n              Initial Starting Current in DOL starter, I = %.2f <%.1f A \n",abs(Irr),atand(imag(Irr),real(Irr)))
printf("\n  For Case(c) When applied Voltage reduced to 50 percentage \n")
printf("\n              Initial Starting Current in DOL starter, I = %.2f <%.1f A \n",abs(I_c),atand(imag(I_c),real(I_c)))
printf("\n  For Case(d) When Motor is supplied by reduced Voltage of 44V ( Voltage is reduced by 10 percenatge ) and the reduced frequency is 5Hz \n")
printf("\n              Initial Starting Current in DOL starter, I = %.1f <%.1f A \n",abs(I_n),atand(imag(I_n),real(I_n)))
printf("\n By reducing volatge as well as the frequency, the peak starting current at the instant os starting is reduced by a fector of %.4f of the starting current with the reted volatge and frequency \n",Ratio)
printf("\n\n    [ TEXT BOOK SOLUTION IS PRINTED WRONGLY ( I verified by manual calculation )]\n" );
printf("\n      WRONGLY PRINTED ANSWERS ARE :- For Case(d) When Motor is supplied by reduced Voltage of 44V ( Voltage is reduced by 10 percenatge ) and the reduced frequency is 5Hz,  I = 24.1 < 25.6 A instead of %.1f < (%.2f) A \n ",abs(I_n),atand(imag(I_n),real(I_n)));
printf("\n  Ratio of the Starting Current with the rated Voltage and frequency to the reduced Voltage and frequency, Ratio = 0.2518 instead of %.4f \n ",Ratio);


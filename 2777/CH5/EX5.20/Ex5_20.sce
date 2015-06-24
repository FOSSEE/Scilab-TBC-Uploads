
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD

// CHAPTER : 5 : INDUCTION MACHINES

// EXAMPLE : 5.20

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA

m = 3;                         // Total Number of phase in Induction Motor
p = 6;                         // Total number of Poles of Induction Motor
f = 50;                        // Frequency in Hertz
V = 440;                       // Operating Voltage of the Inductuon Motor
R1 = 0.25;                     // Circuit Parameter in Ohms
R2 = 0.25;                     // Circuit Parameter in Ohms
X1 = 0.75;                     // Circuit Parameter in Ohms
X2 = 0.75;                     // Circuit Parameter in Ohms
Xm = 1000;                     // Circuit Parameters in Ohms
Rc = 100;                      // Circuit Parameters in Watts
s = 0.025;                     // Slip
Pr = 450;                      // Rotational Loss in Watts
Psc = 800;                     // Stator core loss in Watts


// CALCULATIONS

Vph = V/sqrt(3);                                    // Per phase Voltage in Volts
I_2 = Vph/(R1+(R2/s)+(%i*(X1+X2)));                 // Current in Amphere
Ic = Vph/Rc;                                    // Core loss current in Amphere
I_m = Vph/(%i * Xm);                            // Magnetizing Current in Amphere
I_o = Ic + I_m;                                 // No-load current in Amphere
I1 = I_o + I_2;                                 // Input Current in Amphere
Pf = cosd(atand(imag(I1)/real(I1)));            // Power factor 
Ns = (120*f)/p;                                 // Synronous Speed in RPM
Pg = 3*(abs(I_2)^2*R2)/s;                       // 3-phase air gap power or Rotor intake Power in Watts
Pm = Pg*(1-s);                                  // Output Power in Watts
Ws = 2*%pi*Ns*(1/60);                           // Angular Roatation in Radians per Seconds
T = Pg/Ws;                                      // Torque in Newton-Meter
Po = Pm-Pr;                                     // Output Power in Watts
Po_HP = Po/746;                                 // Output Power in Horse-Power
eta = (Po/(Po+Psc+Pr))*100;                     // Efficiency in Percentage


// DISPLAY RESULTS

disp("EXAMPLE : 5.20 : SOLUTION :-");
printf("\n   (a)  Input line current, I1 = %.f < %.2f A \n",abs(I1),atand(imag(I1),real(I1)))
printf("\n   (b)  Power Factor, Pf = %.4f Lagging \n",Pf)
printf("\n   (c)  Output Power, P0 = %.2f HP \n",Po_HP)
printf("\n   (d)  Torque, T = %.1f Nm \n",T)
printf("\n   (e)  Efficiency, eta = %.1f Percenatge \n",eta)
printf("\n\n    [ TEXT BOOK SOLUTION IS PRINTED WRONGLY ( I verified by manual calculation )]\n" );
printf("\n      WRONGLY PRINTED ANSWERS ARE :- (a) I1 = 26.8-j3.584 {27<-7.62} A in instead of (%.1f)+(j%.3f) {%.f<%.2f} A \n ",real(I1),imag(I1),abs(I1),atand(imag(I1),real(I1)));
printf("\n                                     (b) pf = 0.9885 Lagging instead of %.4f Lagging \n ",Pf);

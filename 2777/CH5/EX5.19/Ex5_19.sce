
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD

// CHAPTER : 5 : INDUCTION MACHINES

// EXAMPLE : 5.19

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA

s = 0.05;                       // Slip
m = 3;                          // Total Number of phase in Induction Motor
p = 4;                          // Total number of Poles of Induction Motor
f = 50;                         // Frequency in Hertz
V = 440;                        // Operrating Voltage of the Inductuon Motor
R1 = 0.10;                      // Circuit Parameter in Ohms
R2 = 0.11;                      // Circuit Parameter in Ohms
X1 = 0.35;                      // Circuit Parameter in Ohms
X2 = 0.40;                      // Circuit Parameter in Ohms
pf = 0.2;                       // Power factor (Lagging)
Pr = 900;                       // Rotational Loss in Watts
Psc = 1000;                     // Stator core loss in Watts
I = 15;                         // Line current draws by the motor in Amphere


// CALCULATIONS

Vph = V/sqrt(3);                                    // Per phase Voltage in Volts
I_2 = Vph/(R1+(R2/s)+(%i*(X1+X2)));                 // Current in Amphere
Io = I * exp(-( %i * acosd(pf) * %pi/180));         // No-load current in Amphere
I1 = Io + I_2;                                      // Input line Current in Amphere
PF = cosd(atand(imag(I1)/real(I1)));                // Power factor
Ws = 2*%pi*((120*f/p)*(1/60));                      // Angular Roatation in Radians per Seconds
Pg = (3*(abs(I1)^2*R2))/s;                          // 3-phase air gap power or Rotor intake Power in Watts
T = Pg/Ws;                                          // Torque in Newton-Meter
Po = Pg*(1-s)-Pr;                                   // Output Power in Watts
Po_HP = Po/746;                                     // Output Power in Horse-Power
eta = (Po/(Po+Psc+Pr))*100;                         // Efficiency in Percentage


// DISPLAY RESULTS

disp("EXAMPLE : 5.19 : SOLUTION :-");
printf("\n   (a)  Input line current, I1 = %.1f < %.2f A \n",abs(I1),atand(imag(I1),real(I1)))
printf("\n   (b)  Power Factor, Pf = %.4f Lagging \n",PF)
printf("\n   (c)  Output Power, P0 = %.1f HP \n",Po_HP)
printf("\n   (d)  Torque, T = %.2f Nm \n",T)
printf("\n   (e)  Efficiency, eta = %.1f Percenatge \n",eta)
printf("\n\n    [ TEXT BOOK SOLUTION IS PRINTED WRONGLY ( I verified by manual calculation )]\n" );
printf("\n      WRONGLY PRINTED ANSWERS ARE :- (a) I1 = 114.2<-24.68 A instead of %.1f<%.2f A \n ",abs(I1),atand(imag(I1),real(I1)));
printf("\n                                     (b) T = 548.24 Nm instead of %.2f Nm \n ",T);
printf("\n                                     (c) Po = 108.4 HP instead of %.1f HP \n ",Po_HP);


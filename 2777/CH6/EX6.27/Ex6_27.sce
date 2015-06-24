
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD
// CHAPTER : 6 : SYNCHRONOUS MACHINES

// EXAMPLE : 6.27

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA

v = 440;                       // Operating voltage of the Synchronous generator in Volts
f = 50;                        // Operating Frequency of the Synchronous generator in Hertz
m = 3;                         // Total number of Phase
xs = 5;                        // Synchronous reactances in Ohms
Eo = 500;                      // Indduced Voltage in Volts per phase
R1 = 0.1;                      // Circuit Parameter in Ohms
R2 = 0.1;                      // Circuit Parameter in Ohms
X1 = 1.55;                     // Circuit Parameter in Ohms
X2 = 1.55;                     // Circuit Parameter in Ohms
s = 0.03;                      // Slip
P = 30*10^3;                   // Total Power developed by the motor in Watts


// CALCULATIONS

V = v/sqrt(3);                                  // Phase voltage in Volts
Ii = V/sqrt((R1+R2/s)^2 + (X1+X2)^2);           // Per phase induction motor current in Amphere
thetal = atand((X1+X2)/(R1+R2/s));              // Power factor angle of the induction motor in degree
pf = cosd(thetal);                              // Power factor of the induction motor lagging
// Let us assume thetam is leading Power factor angle in degree and Im is the synchronous Motor current now, from phasor diagram figure 6.70 page no. 469
delta = asind((xs*P)/(3*V*Eo));                 // Power angle in degree
// From phasor diagram figure 6.70 page no. 469 we have, Im*xs*cos(thetam) = Eo*sin(delta), Im*cos(delta) = ((500*sind(23.18))/5 = 39.37 and Eo*cosd(delta) = V+Im*xs*sind(thetam), Im*sind(thetam) = ((500*cosd(23.18))-254.03)/5 = 41.12 by sloving these two equations we get Im = sqrt(39.37^2 + 41.12^2) = 56.93 A and thetam = atand(41.12/39.37) = 46.25 degree
Im = sqrt(39.37^2 + 41.12^2);                           // Motor current in Amphere
thetam = atand(41.12/39.37);                            // Power factor angle in degree
kVA = (sqrt(3)*V*Im*sind(thetam))/1000;                 // Rective kVA of the motor in kVAR
II = Ii * exp( %i * (-thetal) * %pi/180);               // Induction Motor current in Amphere
Im = Im * exp( %i * thetam * %pi/180);                  // Synchronous Motor current in Amphere
It = II + Im;                                           // Total per phase current in Amphere
ovpf = cosd(atand(imag(It),real(It)));                  // Overall Power factor leading


// DISPLAY RESULTS

disp("EXAMPLE : 6.27: SOLUTION :-");
printf("\n (a) Reactive kVA of the motor = %.3f kVAR \n",kVA)
printf("\n (b) Individual currents:- \n     Induction Motor current, II = %.2f + i(%.2f) A \n\n     Synchronous Motor current, Im = %.2f + i(%.2f) A \n",real(II),imag(II),real(Im),imag(Im))
printf("\n (c) Resultant (overall) current = %.2f < %.2f A \n",abs(It),atand(imag(It),real(It)))
printf("\n (d) Overall Power factor = %.4f leading \n",ovpf)

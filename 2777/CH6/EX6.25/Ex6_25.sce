
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD

// CHAPTER : 6 : SYNCHRONOUS MACHINES

// EXAMPLE : 6.25

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA

v = 440;                       // Operating voltage of the Synchronous generator in Volts
f = 50;                        // Operating Frequency of the Synchronous generator in Hertz
m = 3;                         // Total number of Phase
pf = 0.8;                      // Power factor lagging
Il = 100;                      // Motor drawing current in Amphere 
xs = 2;                        // Synchronous reactances in Ohms
delta = 20;                    // Power angle in degree
P = 50*10^3;                   // Total Power developed by the motor in Watts
Ppp = (50*10^3)/3;             // Power developed by the motor per phase in Watts


// CALCULATIONS

V = v/sqrt(3);                                  // Phase voltage in Volts
Eo = (Ppp*xs)/(3*V*sind(delta));                // Per phase Induced voltage in Volts
// Let us assume thetam is Power factor angle in degree and Im is the Motor current now, from phasor diagram figure 6.67 page no. 465 we get, Eo*cosd(delta) = V+Im*xs*sind(thetam), Im*sind(thetam) = ((383.84*cosd(20))-254.03)/2 = 53.35 and Im*xs*cosd(thetam) = Eo*sin(delta), Im*cosd(theta) = ((383.84*sind(20))/2 = 65.60 by sloving these two equations we get Im = sqrt(65.60^2 + 53.35^2) = 84.56 A and thetam = atand(53.35/65.60) = 39.13 degree
Im = sqrt(65.60^2 + 53.35^2);                           // Motor current in Amphere
thetam = atand(53.35/65.60);                            // Power factor angle in degree
kVA = (sqrt(3)*V*Im*sind(thetam))/1000;                 // Rective kVA of the motor in kVAR
thetal = acosd(pf);                                     // Load power factor angle in degree
thetaR = atand((Im*sind(thetam)-Il*sind(thetal))/(Im*cosd(thetam)+Il*cosd(thetal)));                                               // Resultant Power factor angle in degree
ovpf = cosd(thetaR);                                    // Overall Power factor lagging
IR = sqrt((Im*sind(thetam)-Il*sind(thetal))^2 + (Im*cosd(thetam)+Il*cosd(thetal))^2);                                              // Resultant (magnitude) current in Amphere refer phasor diagram figure 6.69 page no. 467


// DISPLAY RESULTS

disp("EXAMPLE : 6.25: SOLUTION :-");
printf("\n (a) Rective kVA of the motor = %.3f kVAR \n",kVA)
printf("\n (b) Overall Power factor of the load and motor = %.4f lagging and \n",ovpf)
printf("\n     Resultant (magnitude) current = %.2f A \n",IR)

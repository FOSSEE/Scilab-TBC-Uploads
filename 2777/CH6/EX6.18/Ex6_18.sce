
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD
// CHAPTER : 6 : SYNCHRONOUS MACHINES

// EXAMPLE : 6.18

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA


v = 1100;                       // Operating voltage of the Synchronous Motor in Volts
p = 4;                         // Total number of Poles
m = 3;                         // number of phase
xs = 5.0;                      // Synchrouons reactances in Ohms
f = 50;                        // Frequency in Hertz
delta = 9;                     // Power angle in degree
p_hp = 150;                    // Motor delivering power in HP
eta = 89/100;                  // Efficiency of motor


// CALCULATIONS

V = v/sqrt(3);                                  // Phase voltage in Volts
ws = (4*%pi*f)/p;                               // Synchronous speed in Radians per second
// We have (746*150)/0.89) = 125730.34 W = sqrt(3)*1100*I*cos(theta) refer page no. 440, thus we get I*cos(theta) = 12530.34/(1100*sqrt(3)) = 65.99 and E*sin(delta) = I*xs*cos(theta)
E = (xs*65.99)/sind(delta);                     // Exitation EMF per phase in Volts
// since E*cos(delta) > V, therefore the machine is over excited and power factor is leading, thus we get V = E*cos(delta) + I*xs*sin(theta), I*sin(theta) = (635.1-2109.2*cos(9)/5 = -289.586 and we have I*cos(theta) = 65.99 thus by solving these two equations we get theta = atand(-286.586/65.99) = 77.16 degre
theta = 77.16;                                 // Power factor angle in degree
I = 65.99/cosd(theta);                         // Current in Amphere
pf = cosd(theta);                              // Power factor leading
P = (3*V*E*sind(delta))/(xs*1000);             // Power in kilo-Watts
T = (P*1000)/ws;                               // torque in Newton-meter


// DISPLAY RESULTS

disp("EXAMPLE : 6.18: SOLUTION :-");
printf("\n (a) Excitation EMF, E = %.1f V \n",E)
printf("\n (b) Line current, I = %.2f A \n",I)
printf("\n (c) Power factor = %.3f leading \n",pf)
printf("\n (d) Power , P = %.4f kW \n",P)
printf("\n (e) Torque , T = %.2f N-m \n",T)
printf("\n\n    [ TEXT BOOK SOLUTION IS PRINTED WRONGLY ( I verified by manual calculation )]\n" );
printf("\n      WRONGLY PRINTED ANSWERS ARE :- \n (a) Power , P = 13.0667 kW instaed of %.4f kW \n",P)
printf("\n (b) Torque , T = 83.22 N-m instaed of %.2f N-m \n",T)
printf("\n From Calculation of the Power(P), rest all the Calculated values in the TEXT BOOK is WRONG because of the Power(P) value is WRONGLY calculated and the same used for the further Calculation part \n")

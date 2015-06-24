
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD

// CHAPTER : 6 : SYNCHRONOUS MACHINES

// EXAMPLE : 6.12

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA


printf("\n EXAMPLE : 6.12 : \n\n          Given Data \n");
printf("\n Voc(V)   175     250      280      300        330       350      370       380 \n");
printf("\n If(A)     10       17       20       23         30       38       50        60 \n");
printf("\n Vzpf(V)      -        -       -       0         130     210      265      280 \n\n");
V = 433;                       // Operating voltage of the Alternator in Volts
N = 3000;                      // speed of the Alternator in RPM
VA = 20*10^3;                  // VA rating of the Alternator in Volts-Amphere
f = 50;                        // Operating Frequency of the Alternator in Hertz
pf = 0.8;                      // Power factor (lagging)


// CALCULATIONS
// Some of the data obtained from OCC and SCC test Graph or Pottier triangle in Figure6.35 & Page no:-420

Vt = V/sqrt(3);                                     // Rated per phase Voltage in Volts
Ia = VA/(sqrt(3)*V);                                // Rated Armature Current in Amphere
pfa = acosd(pf);                                    // Power factor angle in degree
O = 298;                                            // Open circuit Voltage in Volts obtained from OCC and SCC test Graph or Pottier triangle Figure6.30 & Page no:-413
Xs = O/(sqrt(3)*Ia);                                // Synchronous reactance per phase in Ohms
BC = 70;                                            // Open circuit Voltage in Volts obtained from OCC and SCC test Graph or Pottier triangle Figure6.30 & Page no:-413
Xl = BC/(sqrt(3)*Ia );                              // Per phase leakage reactance in Ohms
E = Vt+Ia*(cosd(pfa)-%i*sind(pfa))*(%i*Xs);         // Induced EMF in Volts using EMF Method
c = 380-60;                                         // The open Voltage voltage is 694.50V (line-line) its Obatained by extrapolation
y = 694.50;                                         // The open Voltage voltage is 694.50V (line-line) its Obatained by extrapolation
// Extrapolation Equation is y = (x*(380-370)/(60-50))*c
x = y - c;                                          // The required field current in Amphere


// DISPLAY RESULTS

disp(" SOLUTION :-");
printf("\n (a) Leakage Reactance, Xl = %.2f Ohms \n",Xl)
printf("\n (b) Synchronous Reactance, Xs = %.2f Ohms \n",Xs)
printf("\n (c) Field Current required for maintaing the rated terminal voltage for rated kVA rating at %.2f Lagging Power factor , F = %.2f A \n",pf,x)

 

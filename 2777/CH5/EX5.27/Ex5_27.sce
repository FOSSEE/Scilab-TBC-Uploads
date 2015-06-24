
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD

// CHAPTER : 5 : INDUCTION MACHINES

// EXAMPLE : 5.27

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA

m = 3;                          // Total Number of phase in Induction Motor
p = 2;                          // Total number of Poles of Induction Motor
f = 50;                         // Frequency in Hertz
V = 440;                        // Operating Voltage of the Inductuon Motor
R1 = 0.25;                      // Circuit Parameter in Ohms
R2 = 0.25;                      // Circuit Parameter in Ohms
X1 = 0.75;                      // Circuit Parameter in Ohms
X2 = 0.75;                      // Circuit Parameter in Ohms
out_hp = 50;                    // Output of the induction motor in HP


// CALCULATIONS

V1 = V/sqrt(3);                                              // Phase Voltage in Volts
I = (out_hp*746)/(V*sqrt(3));                                // Rated Current in Amphere
sm = R2/(sqrt(R1^2+(X1+X2)^2));                              // Slip at Maximum torque both its in Positive and negative sign
Ws = 2*%pi*((120*f/p)*(1/60));                               // Angular Roatation in Radians per Seconds
Tm = (3*V1^2)/((2*Ws)*(R1+sqrt((R1^2)+(X1+X2)^2)));          // Maximum torque during motoring in Newton-Meter
Tg = -(3*V1^2)/((2*Ws)*(-R1+sqrt((R1^2)+(X1+X2)^2)));        // Maximum torque during generating in Newton-Meter

// For Case (a) slip = 0.05

s_a = 0.05;                                                  // Slip
T_a = (2*Tm)/((s_a/sm)+(sm/s_a));                            // Torque in Newton-Meter

// For Case (b) slip = -0.05

s_b = -0.05;                                                  // Slip
T_b = (2*Tg)/((s_b/sm)+(sm/s_b));                             // Torque in Newton-Meter


// DISPLAY RESULTS

disp("EXAMPLE : 5.27 : SOLUTION :-");
printf("\n Maximim Torque during Motoring, Tm = %.f N-m \n",Tm)
printf("\n Maximim Torque during Generating, Tm = %.2f N-m \n",Tg)
printf("\n For Case (a) slip = 0.05 \n ")
printf("\n (a.1) Torque, T = %.2f Nm \n",T_a)
printf("\n For Case (b) slip = -0.05 \n ")
printf("\n (b.1) Torque, T = %.2f Nm \n",T_b)


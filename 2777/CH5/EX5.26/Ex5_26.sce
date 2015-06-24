
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD

// CHAPTER : 5 : INDUCTION MACHINES

// EXAMPLE : 5.26

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA

m = 3;                          // Total Number of phase in Induction Motor
p = 4;                          // Total number of Poles of Induction Motor
f = 50;                         // Frequency in Hertz
V = 440;                        // Operating Voltage of the Inductuon Motor
R1 = 0.25;                      // Circuit Parameter in Ohms
R2 = 0.5;                       // Circuit Parameter in Ohms
X1 = 1.5;                       // Circuit Parameter in Ohms
X2 = 1.5;                       // Circuit Parameter in Ohms


// CALCULATIONS

Vph = V/sqrt(3);                                    // Per phase Voltage in Volts
Ns = (120*f)/p;                                     // Synchoronous Speed in RPM
Ws = (2*%pi*Ns)/60;                                 // Roatation Speed in Radians per Seconds

// For Case (a) Machine running at, N = 1400 RPM

N_a = 1400;                                         // Machine running in RPM
s_a = (Ns-N_a)/Ns;                                  // Slip
I_2_a = Vph/(R1+(R2/s_a)+(%i*(X1+X2)));             // Rotor per phase Current referred to the stator side in Amphere
Pg_a = 3*(abs(I_2_a)^2*R2)/s_a;                     // 3-phase air gap power or Rotor intake Power in Watts
T_a = Pg_a/Ws;                                      // Torque in Newton-Meter

// For Case (b) Machine running at, N = 1600 RPM

N_b = 1600;                                         // Machine running in RPM
s_b = (Ns-N_b)/Ns;                                  // Slip
I_2_b = Vph/(R1+(R2/s_b)+(%i*(X1+X2)));             // Rotor per phase Current referred to the stator side in Amphere
Pg_b = 3*(abs(I_2_b)^2*R2)/s_b;                     // 3-phase air gap power or Rotor intake Power in Watts
T_b = Pg_b/Ws;                                      // Torque in Newton-Meter

// For Case (b) Machine running at, N = -100 RPM

N_c = -100;                                         // Machine running in RPM
s_c = (Ns-N_c)/Ns;                                  // Slip
I_2_c = Vph/(R1+(R2/s_c)+(%i*(X1+X2)));             // Rotor per phase Current referred to the stator side in Amphere
Pg_c = 3*(abs(I_2_c)^2*R2)/s_c;                     // 3-phase air gap power or Rotor intake Power in Watts
T_c = -Pg_c/Ws;                                      // Torque in Newton-Meter (minus sign because its counter opposing torque)

// DISPLAY RESULTS

disp("EXAMPLE : 5.26 : SOLUTION :-");
printf("\n For Case (a) Machine running at, N = 1400 RPM \n ")
printf("\n (a.1) Rotor per phase Current referred to the stator side, I2 = %.2f < %.2f A \n",abs(I_2_a),atand(imag(I_2_a),real(I_2_a)))
printf("\n (a.2) Developed Torque, T = %.2f Nm \n",T_a)
printf("\n For Case (b) Machine running at, N = 1600 RPM \n ")
printf("\n (a.1) Rotor per phase Current referred to the stator side, I2 = %.2f < %.2f A \n",abs(I_2_b),atand(imag(I_2_b),real(I_2_b)))
disp("   ( angle -157.52 + 180 = 22.48 ) ")
 printf("\n (a.2) Developed Torque, T = %.2f Nm \n",T_b)
printf("\n For Case (c) Machine running at, N = -100 RPM \n ")
printf("\n (c.1) Rotor per phase Current referred to the stator side, I2 = %.2f < %.2f A \n",abs(I_2_c),atand(imag(I_2_c),real(I_2_c)))
printf("\n (c.2) Developed Torque, T = %.2f Nm \n",T_c)

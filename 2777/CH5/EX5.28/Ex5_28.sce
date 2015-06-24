
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD

// CHAPTER : 5 : INDUCTION MACHINES

// EXAMPLE : 5.28

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA

m = 3;                          // Total Number of phase in Induction Motor
p = 2;                          // Total number of Poles of Induction Motor
f = 50;                         // Frequency in Hertz
V = 440;                        // Operating Voltage of the Inductuon Motor in Volts
R0 = 0.5;                       // Circuit Parameter in Ohms
Ri = 0.05;                      // Circuit Parameter in Ohms
X0 = 0.2;                       // Circuit Parameter in Ohms
Xi = 0.9;                       // Circuit Parameter in Ohms
s = 0.07;                       // Slip


// CALCULATIONS

Ws = 2*%pi*f;                                               // Synchronous speed in Radins per second
v = V/sqrt(3);                                              // Phase Voltage in Volts
Io = v/(R0+%i*X0);                                          // Starting Current in the outer cage in Amphere
Ii = v/(Ri+%i*Xi);                                          // Starting Current in the inner cage in Amphere
Tst = ((3*abs(Io)^2*R0)/Ws)+((3*abs(Ii)^2*Ri)/Ws);          // Starting torque i.e at standstill, s=1
Ios = v/((R0/s)+(%i*X0));                                   // Current in the outer cage at slip = 0.07
Iis = v/((Ri/s)+(%i*Xi));                                   // Current in the outer cage at slip = 0.07
T = ((3*abs(Ios)^2*R0)/(s*Ws))+((3*abs(Iis)^2*Ri)/(s*Ws));          // Starting torque at s=0.07 in Newton-Meter


// DISPLAY RESULTS

disp("EXAMPLE : 5.28 : SOLUTION :-");
printf("\n (a) Starting torque, Tst = %.2f Nm \n",Tst)
printf("\n (b) Running torque at slip = 0.07, T = %.2f Nm \n",T)

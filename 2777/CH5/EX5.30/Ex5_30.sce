
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD

// CHAPTER : 5 : INDUCTION MACHINES

// EXAMPLE : 5.30

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA

m = 1;                          // Total Number of phase in Induction Motor
p = 2;                          // Total number of Poles of Induction Motor
f = 50;                         // Frequency in Hertz
V = 220;                        // Operating Voltage of the Inductuon Motor in Volts
R1 = 10;                        // Circuit Parameter in Ohms
R2 = 11;                        // Circuit Parameter in Ohms
X1 = 12;                        // Circuit Parameter in Ohms
X2 = 12;                        // Circuit Parameter in Ohms
Xm = 125;                       // Circuit Parameter in Ohms
s = 0.03;                       // Slip


// CALCULATIONS

Zf = ((%i*Xm/2)*((R2/(2*s))+(%i*X2/2)))/((%i*Xm/2)+(R2/(2*s))+(%i*X2/2));               // Impedance offered by the forward field in Ohms
Zb = ((%i*Xm/2)*((R2/(2*(2-s)))+(%i*X2/2)))/((%i*Xm/2)+(R2/(2*(2-s)))+(%i*X2/2));       // Impedance offered by the backward field in Ohms 
Z = (R1+%i*X1)+Zf+Zb;                               // Total Impedance in Ohms
I = V/Z;                                            // Total input current in Amphere
pf = cosd(atand(imag(I),real(I)));                  // Power Factor (lagging)
Vf = I*Zf;                                          // Forward Volatge at slip 0.03 in Volts
Vb = I*Zb;                                          // Backward Volatge at slip 0.03 in Volts
If = Vf/(0.5*R2/s);                                 // Forward Current in Amphere
Ib = Vb/(0.5*R2/(2-s));                             // Forward Current in Amphere
Ws = 2*%pi*f;                                       // Synchronous Speed in radians per second
T =  ((0.5*If^2*R2)/(s*Ws))-((0.5*Ib^2*R2)/((2-s)*Ws));          // Starting torque


// DISPLAY RESULTS

disp("EXAMPLE : 5.30 : SOLUTION :-");
printf("\n (a) Input Current, I = %.2f < %.f A \n",abs(I),atand(imag(I),real(I)))
printf("\n (b) Power factor, pf = %.2f Lagging \n",pf)
printf("\n (c) Developed Torque, T = %.3f Nm \n",T)



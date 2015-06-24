
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD 

// CHAPTER : 3 : TRANSFORMERS 

// EXAMPLE : 3.5

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA

Ai = 2.3 * 10 ^ -3;                 // Cross-Sectional area of the core in Meter-Square
mue_0 = 4*%pi*10^ -7;               // Permeability of the air in Henry/Meter
Fe_loss = 2.6;                      // Iron loss at the working Flux density Watts/kg
Fe_den = 7.8 * 10 ^ 3;              // Density of the Iron in kg/Meter-Cube
N1 = 800;                           // Number of Turns of the Primary winding
L = 2.5;                            // Length of the Flux path in Meter
mue_r = 1000;                       // Relative Permeability
E = 400;                            // Primary Volatge of the Transformer in Volts
f = 50;                             // Frequency in Hertz


// CALCULATIONS

Bm = E/(4.44*f*Ai*800);             // Flux Density in Weber/Meter-Square
phi_m = (Bm*Ai)*10^3;               // Maximum Flux in the core in milli-Weber
F = (L*Bm)/(mue_r*mue_0);           // Magnetizing MMF in Amphere-turns
Im = F/(N1*sqrt(2));                // Magnetizing Current in Amphere
Vol = L*Ai;                         // Volume of the Core in Meter-Cube
W = Vol * Fe_den;                   // Weight of the Core in kg
Total_Fe_loss = Fe_loss * W;        // Total Iron loss in Watt
Ic = Total_Fe_loss/E;               // Loss component of Current in Amphere
Io= sqrt((Ic ^ 2)+(Im ^ 2));        // No load Current in Amphere
pf_angle = atand(Io/Ic);            // No load Power factor angle in degree
pf = cosd(pf_angle);                // No load Power factor 


// DISPLAY RESULTS

disp("EXAMPLE : 3.5 : SOLUTION :-") ;
printf("\n (a) Maximum Flux in the core , phi_m = %.6f mWb \n ",phi_m);
printf("\n (b) No load Current , I0 = %.3f A \n",Io);
printf("\n (c) No load Power factor angle  =  %.3f degree \n ",pf_angle);
printf("\n (d) No load Power factor =  %.4f \n ",pf);


// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD 

// CHAPTER : 2 : FORCES IN AN ELECTROMAGNETIC SYSTEMS

// EXAMPLE : 2.4

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA
// Refer figure 2.7:- Page no. 41

a = 0.0001;                // Cross Sectional Area of the Core in Meter-Square
Li = 0.158;                // Total length of the Path abcdef in Meter (4.0*4.0 - 0.2 = 15.8cm = 0.158m)
Lg = 0.002;                // Length of the air gap in Meter
mue_0 = 4*%pi*10^-7;       // Permeability of the air in Henry/Meter
mue_r = 10000;             // Permeability of the core
N = 10;                    // Number of Turns
I = 1.0;                   // Current in the Coil in Amphere
v = 50;                    // hall effect sensor generates volatge produces in milli volt per 1 Telsa
Li_new = 0.16;              // Length of the Flux path in Absence of the Air gap in Meter


// CALCUALTIONS

F = N*I;                         // MMF of the Coil in Amphere-turn
Ri = Li/(mue_0*mue_r*a);         // Relucatnce of the Iron Coil in MKS unit
Rg = Lg/(mue_0*a);               // Relucatnce of air gap in MKS unit
R = Ri+Rg;                       // Total Reluctance in MKS unit
phi = F/R;                       // Flux in the Core in Weber
B = phi/a;                       // FLux density in the core(Presence of the Air gap) in Weber/Meter-Square
HEV = B*50;                      // Output of the Hall effect Sensor device in Milli-Volt
R_new = Li_new/(mue_0*mue_r*a)   // Relucatance of the Magnetic Circuit in Absence of the Air gap
phi_new = F/R_new;               // New Flux in the Core in Weber
B_new = phi_new/a;               // New FLux density in the core in Weber/Meter-Square
Ratio = B_new/B;                 // Ratio of the Flux Density in Absence of the Air gap and in the presence of the Air gap 


// DISPLAY RESULTS

disp("EXAMPLE : 2.4 : SOLUTION :-") ;
printf("\n (a) Flux density in the core(Presence of the Air gap) , B = %.8f Wb/Meter-Square \n ",B);
printf("\n (b) Output of the Hall effect Sensor device , HEV = %.7f mV \n",HEV);
printf("\n (c) Ratio of the Flux Density in Absence of the Air gap and in the presence of the Air gap , Ratio = %.2f \n ",Ratio);

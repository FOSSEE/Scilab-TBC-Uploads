
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD 

// CHAPTER : 4 : DIRECT CURRENT MACHINES 

// EXAMPLE : 4.17

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA

I = 30;                     // Initial starting Current in Amphere
ns = 5;                     // Number of Steps of the starter
V = 500;                    // Operating Voltage of the DC Shunt Motor in Volts
I1 = 50;                    // Peak(Upper) Current limit in Amphere
Ra = 1.0;                   // Armature Circuit resistance in Ohms


// CALCULATIONS

R1 = V / I;                         // Initial Resistance in Ohms
gama = ( Ra/R1) ^ (1/(ns-1));       // Current Ratio 
I2 = gama * I1;                     // Lower Current limit in Amphere
r1 = R1 * (1-gama);                 // Graded Resistances in Ohms
r2 = gama * r1;                     // Graded Resistances in Ohms
r3 = gama * r2;                     // Graded Resistances in Ohms
r4 = gama * r3;                     // Graded Resistances in Ohms


// DISPLAY RESULTS

disp("EXAMPLE : 4.17 : SOLUTION :-") ;
printf("\n (a)Graded Resistances are %.2f Ohms, %.4f Ohms, %.4f Ohms and %.4f Ohms \n",r1,r2,r3,r4);


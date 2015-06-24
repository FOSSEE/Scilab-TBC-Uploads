
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD 

// CHAPTER : 4 : DIRECT CURRENT MACHINES 

// EXAMPLE : 4.20

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA

N = 1500;                   // Speed of the separately excited DC Motor in RPM
Out_hp = 100;               // Output of the DC Motor in HP
V = 500;                    // Motor operating Volatge in Volts
VL = 440;                   // 3-phase Line-line Voltage in Volts
f = 50;                     // Frequency in Hertz
Ra = 0.0835;                // Armature Resistance in Ohms
La = 5.7 * 10 ^ -3;         // Armature Inductance in Henry
eta = 89/100;               // Operating Efficiency of the Motor 
E_cons = 0.35;              // EMF constant in Volts per RPM


// CALCULATIONS
// For case (a)

Out = Out_hp * 746;                 // Output of the DC Motor in Watts
Ia = Out/(V*eta);                   // Rated Current in Amphere
Vph = VL/sqrt(3);                   // Phase Voltage in Volts
a = (3*Vph*sqrt(6)) / %pi;          // Constant
E = N * E_cons;                     // Back EMF at Rated speed
V = E + (Ia * Ra);                  // Terminal Volatge in Volts
alpa = acosd(V/a);                  // Firing Angle

// For case (b)
// Assumed that No load current is about 12% of full load current

Io = ( 0.12 * Ia );                     // No load current in Amphere
V_b1 = a * cosd(0);                     // Terminal Voltage at Firing Angle 0 deg
E_b1 = V_b1 + (Io * Ra);                // Back EMF at Firing Angle 0 deg
N_b1 = E_b1/E_cons;                     // No load speed at Firing Angle 0 deg
V_b2 = a * cosd(30);                    // Terminal Voltage at Firing Angle 30 deg
E_b2 = V_b2 + (Io * Ra);                // Back EMF at Firing Angle 30 deg
N_b2 = E_b2/E_cons;                     // No load speed at Firing Angle 30 deg


// DISPLAY RESULTS

disp("EXAMPLE : 4.20 : SOLUTION :-") ;
printf("\n  (a)  Firing Angle at Rated speed and Rated Motor Current , alpa = %.2f deg \n",alpa);
printf("\n (b.1) No load speed at Firing Angle 0 deg, N = %.1f RPM \n",N_b1);
printf("\n (b.2) No load speed at Firing Angle 30 deg, N = %.1f RPM \n",N_b2);





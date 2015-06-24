
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD 

// CHAPTER : 4 : DIRECT CURRENT MACHINES 

// EXAMPLE : 4.21

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA
// Given that Back EMF is Zero Because Motor is at Standstill

V = 250;                        // DC supply Voltage to separately excited DC Motor in Volts
Ra = 1.0;                       // Armature Resistance in Ohms
La = 30 * 10 ^ -3;              // Armature Inductance in Henry
E_cons = 0.19;                  // Motor (EMF) Constant in Volts per RPM
Ia = 25;                        // Average Armature Current in Amphere


// CALCULATIONS

V1 = Ia * Ra;                   // Minimum Terminal Volatge in Volts
alpa_mini = Ia/V;               // Minimum Duty Cycle
alpa_max = 1.0;                 // Maximum Duty Cycle
V2 = V;                         // Maximum Terminal Volatge in Volts when Duty cycle (alpa) is 1.0
E2 = V2 - (V1 * alpa_max);      // Back EMF at Maximum Duty cycle ( i.e alpa = 1.0) in Volts
N = E2/E_cons;                  // Speed of the Motor 


// DISPLAY RESULTS

disp("EXAMPLE : 4.21 : SOLUTION :-") ;
printf("\n (a) Range of the Speed is from 0 RPM to %.2f RPM and Range of the Duty Cycle is %.1f to %.1f \n",N,alpa_mini,alpa_max);

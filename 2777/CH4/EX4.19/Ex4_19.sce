
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD 

// CHAPTER : 4 : DIRECT CURRENT MACHINES 

// EXAMPLE : 4.19

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA

Vac = 250;                  // Operating AC Voltage in Volts
V = 220;                    // Operating Voltage of the separately excited DC motor in Volts
fa = 30;                    // Firing Angle in Degree
Out_hp = 20;                // DC Motor Output in HP
La = 20 * 10 ^ -3;          // Armature Inducatnce in Henry
Ra = 0.15;                  // Armature Resistance in Ohms
E_cons = 0.2;               // EMF Constant in Volts/RPM
eta = 90/100;               // Motor Operating Efficiency
N = 1000;                   // Rotational Speed of the Motor in RPM


// CALCULATIONS

out = 20 * 746;                         // DC Motor Output in Watt
Vt = ((Vac*2*sqrt(2))/%pi)*cosd(fa);    // Average Terminal volatge in Volts
Ia = out/(V*eta);                       // Rated Current in Amphere
E = Vt - ( Ia * Ra );                   // Back EMF in Volts
n = E/E_cons;                           // Speed of the Motor in RPM
e_cons = (E_cons*60)/ ( 2 * %pi);       // EMF Constant in Volts-Second per radians
T = e_cons * Ia;                        // Devolped Torque in Newton-Meter
pi = (E*Ia)+(Ia^2*Ra);                  // Power intake in Watts
pi_v = Vt * Ia;                         // Power intake in Watts (Verification)


// DISPLAY RESULTS

disp("EXAMPLE : 4.19 : SOLUTION :-") ;
printf("\n (a) Speed of the Motor, N = %.2f RPM \n",n);
printf("\n (b) Devolped Torque, T = %.2f N-m \n",T);
printf("\n (b) Power intake at Rated current and Firing angle of %.f deg, VI = %.1f W \n",fa,pi);
printf("\n\n    [ TEXT BOOK SOLUTION IS PRINTED WRONGLY ( I verified by manual calculation )]\n" );
printf("\n      WRONGLY PRINTED ANSWERS IS :- (a) T = 114.07 N-m instead of 143.91 N-m \n" );






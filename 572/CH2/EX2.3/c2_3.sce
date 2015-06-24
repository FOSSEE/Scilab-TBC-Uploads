//(2.3) Air is contained in a vertical piston–cylinder assembly fitted with an electrical resistor. The atmosphere exerts a pressure of 1 bar on the top of the piston, which has a mass of 45 kg and a face area of .09 m2. Electric current passes through the resistor, and the volume of the air slowly increases by .045 m3 while its pressure remains constant. The mass of the air is .27 kg, and its specific internal energy increases by 42 kJ/kg. The air and piston are at rest initially and finally. The piston–cylinder material is a ceramic composite and thus a good insulator. Friction between the piston and cylinder wall canbe ignored, and the local acceleration of gravity is g = 9.81 m/s2. Determine the heat transfer from the resistor to the air, in kJ, for a system consisting of (a) the air alone, (b) the air and the piston.

//solution

// variable initialization
patm = 10^5          // atmospheric pressure in pascal.
mp = 45                // mass of piston in Kg
A = .09                // face area of piston in m2
deltaV = .045          // increment of the volume of air in m3
m = .27                // mass of air in kg
deltau = 42            // specific internal energy increase of air in kJ/kg
g = 9.81               // local acceleration of gravity


//part (a) i.e. air is system

p = (mp*g)/A + patm ;           //constant pressure of air obtained from equilibrium of piston
w = (p*deltaV)/1000;           //work done in KJ
deltaU = m*deltau;             // internal energy change of air in KJ
Q = w + deltaU;                // applying first with air as system

printf('the answer given in book is incorrect.They have miscalculated deltaU.The correct heat transfer from resistor to air in KJ for air alone as system is:\n\n\tQ=%f',Q);

// the answer given in book is incorrect. deltaU is incorrect in book. 

//part(b) i.e.  (air+piston) is system

wd = (patm*deltaV)/1000;              // work done in KJ
deltaz = (deltaV)/A;                  // change in elevation of piston
deltaPE = (mp*g*deltaz)/1000;                // change in potential energy of piston in KJ
Qt = wd + deltaPE + deltaU;            // applying first law with air plus piston as system 

printf('\n\nthe answer given in book is incorrect.They have miscalculated deltaU.The correct heat transfer from resistor to air in KJ for air + piston as system is:\n\n\tQt=%f',Qt);
 













clc
T1 = 300  // Inlet temperature of air in K
T2 = 330  // Exit temperature of first air stream in K
T3 = 270 // Exit temperature of second air stream in K
P1 = 4  // Pressure of inlet air stream in bar
P2 =1   // Pressure of first exit air stream in bar
P3 =1  // Pressure of second exit air stream in bar
cp = 1.0005  // Specific heat capacity of air in kJ/kgK
R = 0.287 // Gas constant

printf("\n Example 7.9")
S21 = cp*log(T2/T1)-R*log(P2/P1)  // Entropy generation
S31 = cp*log(T3/T1)-R*log(P3/P1) // Entropy generation
Sgen = 1*S21 + 1*S31 // Total entropy generation
printf("\n The entropy generated during the process is %f kW/K",Sgen)
//The answers vary due to round off error

printf("\n As the entropy generated is positive so such device is possible")


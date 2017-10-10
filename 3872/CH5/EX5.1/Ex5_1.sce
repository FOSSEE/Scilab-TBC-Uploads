// Book - Power System: Analysis & Design 5th Edition
// Authors - J. Duncan Glover, Mulukutla S. Sharma, Thomas J. Overbye
// Chapter - 5 : Example 5.1
// Scilab Version 6.0.0 : OS - Windows

clc;
clear;

f = 60;                                                    // Frequency in Hz
N = 2;                                                     // Number of Conductors
V = 345;                                                   // Voltage in kV
L = 200;                                                   // Line length
S = 795000;                                                // Size of the conductor
z = 0.032+(%i*0.35);                                       // Impedance in Ohm/km
y = (%i)*(4.2*10^-6);                                      // Admitance in S/km
Pr = 700;                                                  // Full load Power in MW
pf = 0.99;                                                 // Power factor
v = 95/100;                                                // rated voltage 

Z = z*L;                                                   // Total series impedance 
Y = y*L;                                                   // Total shunt Admitance 
A = 1 + ((Y*Z)/2);                                         // Line Paramater A in per unit
D = A;                                                     // Line Paramater D in per unit
B = Z;                                                     // Line Paramater B in Ohm
C = Y*(1+(Y*Z)/4);                                         // Line Paramater C in Siemens

VrLL = V*v;                                                // Receiving end Line to Line Voltage in kVLL
VrLN = VrLL/sqrt(3);                                       // Receiving end Line to Neutral Voltage in kVLN
theta = acos(pf);
Ir = (((Pr)*exp(%i*theta))/(sqrt(3)*(v*V)*(pf)));          // Receiving end current in kA
VsLN = ((A*VrLN)+(B*Ir));                                  // Sending end Line to Neutral Voltage in kVLN
VsLL = abs(VsLN)*sqrt(3);                                  // sending end Line to Line Voltage in kVLL
Is = ((C*VrLN)+(D*Ir));                                    // sending end current in kA
[r theta1] = polar(VsLN); 
[r theta2] = polar(Is);
Ps = sqrt(3)*abs(VsLL)*abs(Is)*cos(theta1-theta2);         // Power delivered to the sending end in MW

VrNL = abs(VsLL)/abs(A);                                   // No load receiving end voltage in kVLL
PercentVR = ((abs(VrNL)-abs(VrLL))/abs(VrLL))*100;         // Full load voltage in percent

J = N*0.9;                                                 // Approximate Current carrying capacity of 2 ACSR conductors in kA taken From table A.4
P = Ps-Pr;                                                 // Full load line losses in MW
PercentEFF = (Pr/Ps)*100;                                  // Full load transmission efficiency in percent

printf('The magnitude of Transmission line parameter A in per unit is %0.4f and its angle is %0.3f degree', abs(A), atand(imag(A), real(A)));
printf('\nThe magnitude of Transmission line parameter B in Ohm is %0.2f and its angle is %0.2f degree', abs(B), atand(imag(B), real(B)));
printf('\nThe magnitude of Transmission line parameter C in Siemens is %0.2e and its angle is %0.2f degree', abs(C), atand(imag(C), real(C)));
printf('\nThe magnitude of Transmission line parameter D in per unit is %0.4f and its angle is %0.3f degree', abs(D), atand(imag(D), real(D)));

printf('\n\nSending end Line to Neutral Voltage in kVLN is : %0.1f and its angle is : %0.2f degree', abs(VsLN), atand(imag(VsLN), real(VsLN)));
printf('\nSending end Line to Line Voltage is  (VsLL) = %0.1f  kV', abs(VsLL));
printf('\nThe magnitude of sending end current in kA is  (Is) : %0.3f and its angle is : %0.2f degree', abs(Is), atand(imag(Is), real(Is)));
printf('\nPower delivered to the sending end is  (Ps) = %0.1f  MW', Ps);

printf('\n\nNo load receiving end voltage is  (VrNL) = %0.1f  kVLL', VrNL);
printf('\nFull load voltage is  (Percent VR) = %0.1f  Percent', PercentVR);

printf('\n\nApproximate Current carrying capacity of 2 ACSR conductors is  (J) = %0.1f  kA', J);
printf('\nFull load line losses is  (P) = %0.1f  MW', P);
printf('\nFull load transmission efficiency is  (Percent EFF) = %0.1f  Percent', PercentEFF);

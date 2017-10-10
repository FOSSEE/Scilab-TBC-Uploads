// Book - Power System: Analysis & Design 5th Edition
// Authors - J. Duncan Glover, Mulukutla S. Sharma, Thomas J. Overbye
// Chapter - 5 : Example 5.9
// Scilab Version 6.0.0 : OS - Windows

clc;
clear;

l = 300;                                 // line lenght in km
If = 1.90;                               // Full load current in kA
pf = 1;                                  // Power Factor
VF = 730;                                // Voltage in kV
V = 730/sqrt(3);                         // Line voltage in kV

Irfl = 1.9*exp(%i*0*%pi/180);            // Full load receiving end current in kA
Vrfl = V*exp(%i*0*%pi/180);              // Full load receiving end voltage in kV
A = 0.9313*exp(%i*0.209*%pi/180);        // Line parameter value in per unit ; taken from Ex 5.2
B = 97.0*exp(%i*87.20*%pi/180);          // Line parameter value in Ohm ; taken from Ex 5.2
VsLN = (A*Vrfl)+(B*Irfl);
VsLL = abs(VsLN)*sqrt(3);                // Sending end voltage in kVLN
Vrnl = VsLL/abs(A);                      // No load Receiving end Voltage in kVLL
PercentVR1 = ((Vrnl - VF)/VF)*100;       // Percent voltage regulation for the uncompensated line in Percent

Y = 2*(3.7*10^-7+%i*7.094*10^-4);        // Shunt admitance of a Eqivalent pi circuit in Siemens ; taken from Ex 5.3
Yeq = real(Y)+%i*imag(Y)*(1-(75/100));   // Equivalent shunt admitance in Siemens
Zeq = B;                                 // Eqivalent series impedance in Ohm

Aeq = 1+((Yeq*Zeq)/2);                   // The eqivalent A parameter for the compensated line in per unit
VRNL = VsLL/abs(Aeq);                    // No load Receiving end Voltage in kVLL
PercentVR2 = ((VRNL - VF)/VF)*100;       // Percent voltage regulation for the uncompensated line in Percent


printf('Percent voltage regulation for the uncompensated line is  (PercentVR1) = %0.2f  Percent', PercentVR1)
printf('\nEquivalent shunt admitance in Siemens is  (Yeq) : %0.3e and its angle is : %0.2f  degree', abs(Yeq), atand(imag(Yeq), real(Yeq)));
printf('\nEqivalent series impedance in Ohm is  (Zeq) : %0.1f and its angle is : %0.1f  degree', abs(Zeq), atand(imag(Zeq), real(Zeq)));
printf('\nPercent voltage regulation for the uncompensated line is  (PercentVR2) = %0.2f  Percent', PercentVR2)

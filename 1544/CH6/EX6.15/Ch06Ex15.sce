// Scilab code Ex6.15: Pg 222 (2008)
clc; clear;

// Part (a)
omega = 628;    // Angular frequency of voltage, rad per sec
f = omega/(2*%pi);  // Frequency of the waveforms, Hz
Vm1 = 10;   // Peak value of first phasor, V
Vm2 = 8;   // Peak value of second phasor, V
Vm3 = 12;   // Peak value of third phasor, V
phi1 = -%pi/6*180/%pi;      // Phase angle for first voltage, degrees
phi2 = %pi/3*180/%pi;      // Phase angle for second voltage, degrees
phi3 = %pi/4*180/%pi;      // Phase angle for third voltage, degrees
printf("\nThe frequency of all three waveforms = %3d Hz", f);
printf("\nThe phase angle and frequency of first voltage : %2d degrees, %2d V", phi1, Vm1);
printf("\nThe phase angle and frequency of second voltage : %2d degrees, %2d V", phi2, Vm2);
printf("\nThe phase angle and frequency of third voltage : %2d degrees, %2d V", phi3, Vm3);

// Part (b)
H_C = Vm1*cosd(phi1)+Vm2*cosd(phi2)+Vm3*cosd(phi3); // Horizontal component of phasor sum, V
V_C = Vm1*sind(phi1)+Vm2*sind(phi2)+Vm3*sind(phi3); // Horizontal component of phasor sum, V
Vm = sqrt(H_C^2+V_C^2); // Peak value of phasor sum, V
phi = atan(V_C/H_C);   // Phase angle, rad
printf("\nv = %5.2fsin(%3dt + %5.3f) volt", Vm, omega, phi);

// Result
// The frequency of all three waveforms =  99 Hz
// The phase angle and frequency of first voltage : -29 degrees, 10 V
// The phase angle and frequency of second voltage : 59 degrees,  8 V
// The phase angle and frequency of third voltage : 45 degrees, 12 V
// v = 23.57sin(628t + 0.458) volt 

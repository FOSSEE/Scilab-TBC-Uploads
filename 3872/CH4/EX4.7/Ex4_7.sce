// Book - Power System: Analysis & Design 5th Edition
// Authors - J. Duncan Glover, Mulukutla S. Sharma, Thomas J. Overbye
// Chapter - 4 : Example 4.7
// Scilab Version 6.0.0 : OS - Windows


clc;
clear;

V = 345;                                               // Line Voltage in kV
T = 795000;                                            // Size of the Conductor in cmil
D = 1.108;                                             // Diameter of the conductor in inch
f= 60;                                                 // Frequency in Hz
e = 8.854*10^-12;

r = (D/2)*0.0254;                                      // Radius of the copper conductor in metre
Dsc = sqrt((r)*(0.40));                                // Equivalent radius of the two onductor bundle
Deq = nthroot([10*10*20], 3);                          // Eqivalent GMR of a onductor in metres from Ex 4.5
Can = (2*%pi)*(e)/(log(12.6/0.0750))*(1000)*(200);     // Deviation of the capacitance in Farad
w = (2*%pi*f);                                         // Angular Velocity in rad/sec
Yan = (%i*w*Can);                                      // Shunt admitance-to-neutral in Siemens
e = (V/sqrt(3));
Ichg = (abs(Yan)*e);                                   // Charging Current of Phase A
Qc3fi = (abs(Yan)*(345)^2);                            // Total reactive power supplied by the three-phase line in MVAR

printf('Charging Current of Phase A is  (Ichg) = %0.3f  kA/phase', Ichg);
printf('\n Total reactive power supplied by the three-phase line is  (Qc3fi)= %0.2f  MVAR', Qc3fi);

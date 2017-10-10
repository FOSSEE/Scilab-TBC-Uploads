// Book - Power System: Analysis & Design 5th Edition
// Authors - J. Duncan Glover, Mulukutla S. Sharma, Thomas J. Overbye
// Chapter - 4 : Example 4.6
// Scilab Version 6.0.0 : OS - Windows


clc;
clear;

V = 20;                                                      // Line Voltage in kV
D = 0.552;                                                   // Diameter of a 4/0 12 strand copper conductor From Table A.3
f = 60;                                                      // Frequency Hz


r = (D/2)*(1/12);                                            // The radius of a 4/0 12 strand copper conductor From Table A.3
e = 8.854*10^-12;
C = (%pi*e)/log(5/r);
Cxy = C*1609*20;                                             // Capacitance between Conductors in F/m
w = (2*%pi*f);                                               // Angular Velocity in rad/sec
Yxy = (%i)*(w)*(Cxy);                                        // Shunt Admitance Siemens
Qc = abs(Yxy)*(20*10^3)^2*(1/1000);                          // Reactive Power Delivered by the linw to line capacitance in kVAR


printf('Capacitance between Conductors is  (Cxy) = %0.2e  F', Cxy);
printf('\nReactive Power Delivered by the line to line capacitance is  (Qc) = %0.1f  kVAR', Qc);

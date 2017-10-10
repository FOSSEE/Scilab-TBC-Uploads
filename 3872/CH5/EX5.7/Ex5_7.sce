// Book - Power System: Analysis & Design 5th Edition
// Authors - J. Duncan Glover, Mulukutla S. Sharma, Thomas J. Overbye
// Chapter - 5 : Example 5.7
// Scilab Version 6.0.0 : OS - Windows

clc;
clear;

p = 9000;                                                 // Power in MW
l = 500;                                                  // Load center distance from the plant in km
f = 60;                                                   // Frequency in Hz
Vs = 1.0;                                                 // Sending end voltage in per unit
Vr = 0.95;                                                // Receiving end voltage in per unit
delta = 35*(%pi/180);                                     // Phase angle in degree
lamdba = 5000;                                            // Wavelength in km

v1 = 345;                                                 // 1st line voltage in kV
Zc1 = 297;                                                // Characteristic impedance of 1st line in Ohm
SIL1 = (v1^2)/Zc1;                                        // Surge Impedance Load for line 1 in MW
P1 = (Vs*Vr*SIL1*sin(delta))/(sin((2*%pi*l)/lamdba));     // Real power delivered for line 1 without losses in MW/line
line1 = ceil((p/P1)+1);                                         // Lines required to transmit 9000 MW power with 345 kV line out of service

v2 = 500;                                                 // 2nd line voltage in kV
Zc2 = 277;                                                // Characteristic impedance of 2nd line in Ohm
SIL2 = (v2^2)/Zc2;                                        // Surge Impedance Load for line 2 in MW
P2 = (Vs*Vr*SIL2*sin(delta))/(sin((2*%pi*l)/lamdba));     // Real power delivered for line 2 without losses in MW/line
line2 = ceil((p/P2)+1);                                         // Lines required to transmit 9000 MW power with 500 kV line out of service

v3 = 765;                                                 // 3rd line voltage in kV
Zc3 = 266;                                                // Characteristic impedance of 3rd line in Ohm
SIL3 = (v3^2)/Zc3;                                        // Surge Impedance Load for line 3 in MW
P3 = (Vs*Vr*SIL3*sin(delta))/(sin((2*%pi*l)/lamdba));     // Real power delivered for line 3 without losses in MW/line
line3 = ceil((p/P3)+1);                                         // Lines required to transmit 9000 MW power with 765 kV line out of service

printf('\n Surge Impedance Load for line 1 is = %0.0f  MW', SIL1);
printf('\nReal power delivered for line 1 without losses is = %0.0f  MW/line', P1);
printf('\nLines required to transmit 9000 MW power with 345 kV line out of service is = %0.0f', line1);

printf('\n\nSurge Impedance Load for line 2 is = %0.0f  MW', SIL2);
printf('\nReal power delivered for line 2 without losses is = %0.0f  MW/line', P2);
printf('\nLines required to transmit 9000 MW power with 500 kV line out of service is = %0.0f', line2);

printf('\n\n Surge Impedance Load for line 3 is = %0.0f  MW', SIL3);
printf('\nReal power delivered for line 3 without losses is = %0.0f  MW/line', P3);
printf('\nLines required to transmit 9000 MW power with 765 kV line out of service is = %0.0f', line3);

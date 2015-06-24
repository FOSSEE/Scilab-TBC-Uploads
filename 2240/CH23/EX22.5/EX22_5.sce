// Grob's Basic Electronics 11e
// Chapter No. 22
// Example No. 22_5
clc; clear;
// With a dc voltage of 300 V applied, how much is the voltage across C in Example 22–4 after 0.01 s of charging? After 0.05 s? After 2 hours? After 2 days?

// Given data

C = 0.01*10^-6;     // Capacitor=0.01 uFarad
R = 1*10^6;         // Resistor=1 MOhms
V = 300;            // Applied DC=300 Volts

T = C*R;
disp (T,'The Time Constant in Seconds')

disp ('Since 0.01 sec is one time constant, the voltage across C then is 63% of 300 V,')

T1 = 0.63*V;
disp (T1,'The Capacitor voltage at 0.01 Sec in Volts')

T2 = V
disp (V,'After 5 time constants or 0.05 Sec Capacitor voltage in volts ')

disp ('After 2 hours or 2 days the C will be still charged to 300 V if the supply is still connected')

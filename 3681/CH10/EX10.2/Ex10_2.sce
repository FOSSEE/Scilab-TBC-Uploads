// Calculating the main dimentions of squirrel cage induction motor
clc;
disp('Example 10.2, Page No. = 10.14')
// Given Data
P = 15;// Power rating (in kW)
V = 400;// Voltage rating (in Volts)
rpm = 2810;// r.p.m.
f = 50;// Frequency (in Hz)
e = 0.88;// Efficiency
pf = 0.9;// Full load power factor
ac = 25000;// Specific electrical loading (in A per meter)
Bav = 0.5;// Specific magnetic loading (in Wb per meter square)
Kw = 0.955;
// the rotor peripheral speed is approximately 20 meter per second at synchronous speed
// Calculation of the main dimentions of squirrel cage induction motor
Q = P/(e*pf);// kVA input
Co = 11*Kw*Bav*ac*10^(-3);// Output co-efficient
ns = 3000/60;// Synchronous speed corresponding to 50 Hz (in r.p.s.)
D2L = Q/(Co*ns);// Product of D^(2)*L
D = 20/(%pi*ns);// Since the rotor diameter in an induction motor is almost equal to stator bore
L = D2L/(D*D);
disp('Main dimentions of squirrel cage induction motor')
disp(D,'D (meter)=');
disp(L,'L (meter)=');
//in book answers are 0.1257 meter and 0.177 meter respectively.  The answers vary due to round off error

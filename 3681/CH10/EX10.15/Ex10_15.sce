// Calculating the number of stator turns per phase
clc;
disp('Example 10.15, Page No. = 10.44')
// Given Data
// 3 phase star connected induction motor
P = 75;// Power rating (in kw)
V = 3000;// Voltage rating
f = 50;// Frequency (in Hz)
p = 8;// Number of poles
AT60 = 500;// mmf required for flux density at 30 degree from pole axis
Kws = 0.95;// Winding factor
e = 0.94;// Full load efficiency
pf = 0.86;// Full load power factor
// Calculation of the number of stator turns per phase
I = P*10^(3)/(3^(1/2)*V*e*pf);// Full load current (in ampere)
Im = 0.35*I;// Magnetizing current (in Ampere).  Since magnetizing current is 35% of full load current
Ts = 0.427*p*AT60/(Kws*Im);// Stator turns per phase
disp(Ts,'Stator turns per phase =');
//in book answer is 288.  The answers vary due to round off error

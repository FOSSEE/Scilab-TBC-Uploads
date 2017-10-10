// Calculating the specific iron loss
clc;
disp('Example 3.12, Page No. = 3.35')
// Given Data
Bm = 1.0;// Maximum flux density in Wb per meter square
f = 100;// Frequency in Hz
t = 0.3*10^(-3);// Thickness of sheet in mm
p = .5*10^(-6);// Resistivity of alloy steel in ohm*meter
D = 7650;// Density in kg per meter cube
pi_quoted = 1.2;// Quoted iron loss in W per Kg
// Calculation of total iron loss
S1 = 2*12;// Sides of hysteresis loop in A/m
S2 = 2*1;// Sides of hysteresis loop in Wb per meter square
A = S1*S2;// Area of hysteresis loop in W-s per meter cube
ph_each = A;// Hysteresis loss in each cycle in Joule per meter cube
ph = ph_each*f/D;// Hysterseis loss in W per Kg
pe = %pi*%pi*f*f*Bm*Bm*t*t/(6*p*D);// Eddy current loss in W per Kg
pi = pe+ph;// Total iron loss in W per Kg
disp(pi,'Specific iron loss(W per Kg)=');
disp('The calculated iron loss is smaller than the quoted.')
//in book answer is 1.014 W per Kg.  The answers vary due to round off error

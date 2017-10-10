// Calculating the length and width of strip
clc;
disp('Example 4.4, Page No. = 4.5')
// Given Data
e = 0.9;// Emissivity
Radiating_efficiency = 0.75;// Radiating efficiency
v = 250;// Voltage in volts
P = 1000;// Power in Watts
t = 0.2;// Thickness of nickel chrome strip
T1 = 273+(300+30);// Temperature of strip in degree kelvin
T0 = 273+30;// Temperature of ambient medium in degree kelvin
p = 1*10^(-6);// Resistivity of nickel chrome
// Calculation of length and width of strip
e = e*Radiating_efficiency;// Effective co-efficient of emissivity
q_rad = 5.7*10^(-8)*e*(T1^(4)-T0^(4));// Heat dissipated by radiation in Watt per meter square
R = v*v/P;// Resistance of strip in ohm
l_by_w = R*t*10^(-3)/p;// This is equal to l/w
lw = 1000/(q_rad*2);// This is equal to l*w
l = sqrt(lw*l_by_w);// Length of strip in meter
w = (lw/l)*10^(3);// Width of strip in mm
disp(l,'Length of strip (meter)=');
disp(w,'Width of strip (mm)=');
//in book Length is 36.2 meter and width is 2.9 mm.  The answers vary due to round off error

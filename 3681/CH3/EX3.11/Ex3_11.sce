// Calculating the specific iron loss
clc;
disp('Example 3.11, Page No. = 3.34')
// Given Data
Bm = 3.2;// Maximum flux density in Wb per meter square
f = 50;// Frequency in Hz
t = 0.5*10^(-3);// Thickness of sheet in mm
p = .3*10^(-6);// Resistivity of alloy steel in ohm*meter
D = 7.8*10^(3);// Density in kg per meter cube
ph_each = 400;// Hysteresis loss in each cycle in Joule per meter cube
// Calculation of total iron loss
pe = %pi*%pi*f*f*Bm*Bm*t*t/(6*p*D);// Eddy current loss in W per Kg
ph = ph_each*f/D;// Hysterseis loss in W per Kg
Pi = pe+ph;// Total iron loss in W per Kg
disp(Pi,'Specific iron loss(W per Kg)=');
//in book answer is 3.2 W per Kg.  The provided in the textbook is wrong

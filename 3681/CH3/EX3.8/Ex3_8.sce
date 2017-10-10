// Calculating the apparent flux density
clc;
disp('Example 3.8, Page No. = 3.23')
// Given Data
Ws = 10;// Slot width in mm
ys = 28;// Slot pitch in mm
L = .35;// Grass core Length in meter
nd = 4;// Number of ventilating ducts
Wd = 10;// Width of each ventilating Duct in mm
Breal = 2.15;// Real flux density in Wb per meter square
at = 55000;// mmf per meter corresponding to real flux density and permeability
Ki = 0.9;// Stacking Factor
// Calculation of apparent flux density
Li = Ki*(L-nd*Wd*10^(-3));// Net iron length
Wt = ys-Ws;// Tooth width in mm
Ks = L*ys/(Li*Wt);
Bapp = Breal+4*%pi*10^(-7)*at*(Ks-1);
disp(Bapp,'Apparent flux density(Wb per meter square)=');
//in book answer is 2.2156 Wb per meter square.  The answers vary due to round off error

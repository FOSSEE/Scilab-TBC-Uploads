// Calculating the apparent flux density
clc;
disp('Example 3.7, Page No. = 3.22')
// Given Data
Ws = 10;// Slot width in mm
Wt = 12;// Tooth width in mm
L = .32;// Grass core Length in meter
nd = 4;// Number of ventilating ducts
Wd = 10;// Width of each ventilating Duct in mm
Breal = 2.2;// Real flux density in Wb per meter square
p = 31.4*10^(-6);// Permeability of teeth corresponding to real flux density in henry per meter
Ki = 0.9;// Stacking Factor
// Calculation of apparent flux density
at = Breal/p;// mmf per meter corresponding to real flux density and permeability
Li = Ki*(L-nd*Wd*10^(-3));// Net iron length
ys = Wt+Ws;// Slot pitch
Ks = L*ys/(Li*Wt);
Bapp = Breal+4*%pi*10^(-7)*at*(Ks-1);
disp(Bapp,'Apparent flux density(Wb per meter square)=');
//in book answer is 2.317 Wb per meter square.  The answers vary due to round off error

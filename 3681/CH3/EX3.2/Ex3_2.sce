// Calculating the mmf required for the air gap of a machine
clc;
disp('Example 3.2, Page No. = 3.12')
// Given Data
L = 0.32;// Core length in meter
nd = 4;// Number of ducts
Wd = 10;// Duct width in mm
Pa = 0.19;// Pole arc in meter
ys=65.4;//Slot Pitch in mm
lg = 5;// Length of air gap in mm
Wo = 5;// Slot opening in mm
Fpp = 52;// Flux per pole in mWb
Kcs = 0.18;//Carter's co-efficient for slots
Kcd = 0.28;//Carter's co-efficient for ducts
// Calculation of mmf required for the air gap
Kgs=ys/(ys-(Kcs*Wo));//Gap contraction for slots
Kgd=L/(L-(Kcd*nd*Wd*10^(-3)));//Gap contraction for ducts
Kg=Kgs*Kgd;//Total gap contracion factor
Bg=Fpp*10^(-3)/(Pa*L);//Flux density at the centre of pole in Wb per meter square
ATg=800000*Kg*Bg*lg*10^(-3);//mmf required for air gap in A
disp(ATg,'mmf required for air gap(A)=');
//in book answer is 3587 A.  The answers vary due to round off error

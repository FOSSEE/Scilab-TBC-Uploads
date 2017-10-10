// Estimating the effective air gap area per pole
clc;
disp('Example 3.3, Page No. = 3.13')
// Given Data
P = 10;// Number of pole
Sb = 0.65;// Stator bore in meter
L = 0.25;// Core length in meter
Nss = 90;// Number of stator slots
Wos = 3;// Stator slot opening in mm
Nrs = 120;// Number of rotor slots
Wor = 3;// Rotor slot opening in mm
lg = 0.95;// Length of air gap in mm
Kcs = 0.46;//Carter's co-efficient for slots
Kcd = 0.68;//Carter's co-efficient for ducts
nd = 3;// Number of ventilating ducts
Wd = 10;// Width of each ventilating Duct in mm
// Estimation of effective air gap area per pole
ys = 3.141592654*Sb*10^(3)/Nss;// Stator slot pitch
Kgss=ys/(ys-(Kcs*Wos));//Gap contraction factor for stator slots
Rd = Sb-2*lg*10^(-3);// Rotor diameter in meter
yr = 3.141592654*Rd*10^(3)/Nrs;// Rotor slot pitch
Kgsr=yr/(yr-(Kcs*Wor));//Gap contraction factor for rotor slots
Kgs=Kgss*Kgsr;//Gap contraction factor for slots
Kgd=L*10^(3)/(L*10^(3)-(Kcd*nd*Wd));//Gap contraction for ducts
Kg=Kgs*Kgd;//Total gap contracion factor
Ag = 3.141592654*Sb*L/P;// Actual area of air gap per pole in meter square
Age = Ag/Kg;// Effective air gap area per pole in meter square
disp(Age,'Effective air gap area per pole(meter square)=');
//in book answer is .04052 A.  The answers vary due to round off error

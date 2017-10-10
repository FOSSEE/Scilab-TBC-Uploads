// Estimating the average flux density in the air gap
clc;
disp('Example 3.4, Page No. = 3.14')
// Given Data
MVA = 172;// MVA rating
P = 20;// Number of pole
D = 6.5;// Diameter in meter
L = 1.72;// Core length in meter
ys = 64;//Slot Pitch in mm
Ws = 22;// Stator slot (open) width in mm
lg = 30;// Length of air gap in mm
nd = 41;// Number of ventilating ducts
Wd = 6;// Width of each ventilating Duct in mm
mmf = 27000// Total mmf per pole in A
Kf = 0.7;// Field form factor
// Estimation of effective air gap area per pole
y=Ws/(2*lg);//Ratio for slots
Kcs= (2/%pi)*(atan(y)-log10(sqrt(1+y^2))/y);//Carter's co-efficient for slots
Kgs=ys/(ys-(Kcs*Ws));//Gap contraction for slots
y=Wd/(2*lg);//Ratio for ducts
Kcd= (2/%pi)*(atan(y)-log10(sqrt(1+y^2))/y);//Carter's co-efficient for slots
Kgd=L*10^(3)/(L*10^(3)-(Kcd*nd*Wd));//Gap contraction for ducts
Kg=Kgs*Kgd;//Total gap expansion factor
ATg = 0.87*mmf;// The required for the air gap is 87% of the total mmf per pole in A
Bg = ATg/(800000*Kg*lg*10^(-3));// Maximum flux density in air gap in Wb per meter square
Bav= Kf*Bg;// Average flux density in air gap in Wb per meter square
disp(Bav,'Average flux density in air gap (Wb per meter square)=');
//in book answer is .615 Wb per meter square.  The provided in the textbook is wrong

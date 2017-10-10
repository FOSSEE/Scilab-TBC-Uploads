// Calculating effective length of air gap
clc;
disp('Example 3.1, Page No. = 3.12')
// Given Data
Ws = 12;// Slot width in mm
Wt = 12;// Tooth width in mm
lg = 2;// Length of air gap in mm
Kcs = 1/(1+(5*lg/Ws));//Carter's co-efficient for slots
// Calculation of effective length of air gap
ys=Ws+Wt;//Slot Pitch in mm
Kgs=ys/(ys-(Kcs*Ws));//Gap contraction for slots
Kgd=1;//Gap contracion factor for ducts//Since there are no ducts
Kg=Kgs*Kgd;//Total gap contracion factor
lgs=Kg*lg;//Effective gap length in mm
disp(lgs,'Effective gap length(mm)=');
//in book answer is 2.74 mm.  The answers vary due to round off error

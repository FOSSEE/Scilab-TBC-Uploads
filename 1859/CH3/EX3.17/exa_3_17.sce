// Exa 3.17
clc;
clear;
close;
// Given data
E= 1.5;// in V
R1addRm= 10;// addition of R1 and Rm in kohm
Rx= 0;
R=R1addRm+Rx;// in kohm
R=R*10^3;// in ohm
I= E/R;//meter FSD current in amp

// At 0.8 FSD
Im= 0.8*I;// in amp
R= E/Im;// in ohm
R=R*10^-3;// in kohm
Rx= R-R1addRm;//in kohm
disp(Rx,"Unknown resistance at 0.8 FSD in kΩ")

// At 0.5 FSD
Im= 0.5*I;// in amp
R= E/Im;// in ohm
R=R*10^-3;// in kohm
Rx= R-R1addRm;//in kohm
disp(Rx,"Unknown resistance at 0.5 FSD in kΩ")

// At 0.25 FSD
Im= 0.25*I;// in amp
R= E/Im;// in ohm
R=R*10^-3;// in kohm
Rx= R-R1addRm;//in kohm
disp(Rx,"Unknown resistance at 0.25 FSD in kΩ")

// At 0.1 FSD
Im= 0.1*I;// in amp
R= E/Im;// in ohm
R=R*10^-3;// in kohm
Rx= R-R1addRm;//in kohm
disp(Rx,"Unknown resistance at 0.8 FSD in kΩ")

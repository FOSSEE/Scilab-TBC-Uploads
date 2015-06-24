// Horizontal component at A in N
R_ah = (2700*0.8 + 2700*2.6)/2 ;
// Horizontal component at C in N
R_ch = R_ah ;
// vertical component at C in N
R_cv = (2700*2.2 + 2700*0.4)/3 ;
// vertical component at A in N
R_av = 2700 + 2700 - R_cv ;
R_a = sqrt((R_ah^2)+(R_av^2))
R_c = sqrt((R_ch^2)+(R_cv^2))
Fab = R_a; // Tensile force in bar AB
Vc = R_c; // Shear force acting on the pin at C
s_allow = 125000000 ; // allowable stress in tension 
t_allow = 45000000; // allowable stress in shear
Aab = Fab / s_allow;  // required area of bar 
Apin = Vc / (2*t_allow);  // required area of pin
disp("m2",Apin,"Required area of bar is ")
d = sqrt((4*Apin)/%pi);   // diameter in meter
disp("m",d,"Required diameter of pin is")
q = 2000 ; // Uniform load intensity in lb/ft
s = 18000 ; // Maximum allowable load in Psi
Ra = 18860 ; // Reaction at point  A
Rb = 17140 ; // Reaction at point  B
x1 = Ra/q ; // Distance in ft from left end to the point of zero shear
Mmax = (Ra*x1)-((q*(x1^2))/2) ; // Maximum bending moment in lb-ft
S = (Mmax*12)/s; // Section Modulli in in3
// Trial Beam
Ra_t = 19380 ; // Reaction at point  A
Rb_t = 17670 ; // Reaction at point  B
x1_t = Ra_t/q ; // Distance in ft from left end to the point of zero shear
Mmax_t = (Ra_t*x1_t)-((q*(x1_t^2))/2) ; // Maximum bending moment in lb-ft
S_t = (Mmax_t*12)/s; // Section Modulli in in3
// From table E beam 12*50 is selected 
disp("in3",S_t,"Beam of crosssection 12*50 is selected with section modulli")

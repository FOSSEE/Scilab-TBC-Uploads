b1 = 1.5 ; // width of rectangular crosssection in inch
t = 0.5 ; // thickness of rectangular crosssection in inch
b2 = 3 ; // width  of enlarged rectangular crosssection in inch
d = 1 ; // diameter in inch
// Part (a)
s_1 = 16000; // maximum allowable tensile stress in Psi
P_1 = s_1*t*b1 ;
disp("lb",P_1,"The allowable load  P1 is")
// Part (b)
s_2 = 11000; // maximum allowable tensile stress in Psi
P_2 = s_2*t*(b2-d) ;
disp("lb",P_2,"allowable load P2 at this section is")
//Part (c)
s_3 = 26000; // maximum allowable tensile stress in Psi
P_3 = s_3*t*d 
disp("lb",P_3,"The allowable load based upon bearing between the hanger and the bolt is")
// Part (d)
s_4 = 6500; // maximum allowable tensile stress in Psi
P_4 = (%pi/4)*(d^2)*2*s_4 ;
disp("lb",P_4,"the allowable load  P4 based upon shear in the bolt is")


d = 0.02 ; // diameter in m
t = 0.008 ; // thickness in m
A = %pi*d*t ; // shear area
P = 110000 ; // prassure in Newton
A1 = (%pi/4)*(d^2); // Punch area
t_aver = P/A ; // Average shear stress 
disp("Pa",t_aver,"Average shear stress in the plate is ")
s_c = P/A1 ; // compressive stress
disp("Pa",s_c,"Average compressive stress in the plate is ")

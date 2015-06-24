clc 
// Given that 
L = 300 // Length of the bar in mm
d=30 // Diameter of the bar in mm
f_max = 0.25 // Maximum allowable feed in mm/revolution
Lc = .25 // Labour and overhead cast in $/min
Tc = 2 // Regrinding cast in $
t = 1 // Change time for tool in min
C_X = 2.50 // Cast of tool of material X per piece in $ 
C_Y = 3 // Cast of tool of material Y  per piece in $
n_x = 0.1 // Value of exponent of time in Taylor's tool life equation for material X
n_y = 0.16 // Value of exponent of time in Taylor's tool life equation for material Y
C_x = 30 // Value of constant in Taylor's tool life equation for material X
C_y = 76 // Value of constant in Taylor's tool life equation For material Y
// Sample Problem 27 on page no. 269
printf("\n # PROBLEM 4.27 # \n")
x_x = (C_x)^(1/n_x) // Where x = k/(f^(1/n))
v_opt_x = ((n_x*x_x*Lc)/((1-n_x)*((Lc*t+Tc))))^(n_x)
Rmin_x = C_X+Lc*t+(Lc*%pi*L*d/(1000*f_max*v_opt_x)) + (Lc*t*(%pi*L*d/(1000*x_x)))*(v_opt_x^(1/n_y))*(v_opt_x^-1)*(f_max^-1)+(Tc*((%pi*L*d/(1000*x_x)))*(v_opt_x^(1/n_x))*(v_opt_x^-1)*(f_max^-1))
x_y = (C_y)^(1/n_y) // Where x = k/(f^(1/n))
v_opt_y = ((n_y*x_y*Lc)/((1-n_y)*((Lc*t+Tc))))^(n_y)
Rmin_y = C_Y+Lc*t+(Lc*%pi*L*d/(1000*f_max*v_opt_y)) + (Lc*t*(%pi*L*d/(1000*x_y)))*(v_opt_y^(1/n_y))*(v_opt_y^-1)*(f_max^-1)+(Tc*((%pi*L*d/(1000*x_y)))*(v_opt_y^(1/n_y))*(v_opt_y^-1)*(f_max^-1))
printf(" \n The minimum cast per piece\n When material X is used = %f $,\n When material Y is used = %f $",Rmin_x,Rmin_y)
printf("\n So material Y will be suitable for tool as it has low cast")

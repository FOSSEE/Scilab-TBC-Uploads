clc 
// Given that
w = 20 // Width of the mild steel block in mm
Z = 20 // No of teeth in milling cutter
D = 50 // Diameter of the milling cutter in mm
alpha = 10 // Radial rake angle in Degree
f = 15 // Feed velocity of the table in mm/min
N =60 // Rpm of the cutter
t = 1 // Depth of cut in mm
mu = 0.5 // Cofficient of friction
T_s = 400 // Shear yield stress in N/mm^2
t_a = 0.0018 // Avg uncut thickness in mm
// Sample Problem 15 on page no. 235
printf("\n # PROBLEM 4.15 # \n")
Beta = asind(2*(t/D))
theta = 2*%pi/Z
t1_max = (2*f/(N*Z))*sqrt(t/D)
lambda = atand(mu)
phi = 45+alpha -lambda
Fc_max = ((w*t1_max*T_s*cosd(lambda-alpha)))/((sind(phi))*(cosd(45)))
T_max = Fc_max*D/(2*1000)
M_av = (1/2)*(Beta*T_max)/theta
omega = 2*%pi*N/60
U_0 = 1.4 // From the table 4.4 given in the book
Uc_ms = U_0*((t_a)^(-0.4))
R = f*t*w/60
U = Uc_ms * R
printf(" \n Power consumption = %f W.",U)

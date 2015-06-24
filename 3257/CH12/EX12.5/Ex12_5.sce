// Heat generation in resistance spot welding
clc
I = 5500 // current in ampere
R = 250 // resistance in micro ohm
T = 0.15 // time in sec
d = 6 // diameter in mm
t = 3 // thickness in mm
rho = 7850 // density in kg/m^3
E = 1400 // energy required per gram mass
printf("\n Example 12.5")
Heat = I^2*R*1e-6*T
V = %pi/4*d^2*t
m = V*rho*1e-6
E_tot = m*E
H_r = Heat - E_tot
H_per = H_r/Heat*100
printf("\n Amount of heat generated is %d J.", Heat)
printf("\n Amount of heat in weld zone is %d J or %d%%.", H_r, H_per)
// Answer in book is 196 J


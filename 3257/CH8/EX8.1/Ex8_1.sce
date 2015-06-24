// Relative energies in cutting
clc
t_o = 0.01 // depth in mm
V = 125 // velocity in m/min
alpha = 10 // angle i degree
t_c = 0.014 // depth of cut in mm
w = 6 // width of cut in mm
F_c = 55 // force in Kg
F_t = 25 // force in kg
printf("\n Example 8.1")
r = t_o/t_c
R = sqrt(F_c^2+F_t^2)
Beta = acos(F_c/R)*180/%pi + alpha
F = R*(sin(Beta*%pi/180))
percentage = 100*(F*r/F_c)
printf("\n Percentage frictional energy is %.1f%%",percentage)
printf("\n Percentage shear energy is %.1f%%",100-percentage)


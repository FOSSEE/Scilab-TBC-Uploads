clc
D = 50 // Diameter of washer in mm
t = 4 // thickness of material in mm
d = 24 // diameter of hole in mm
p = 360 // shear strength of material in N/mm^2
F1 = %pi*D*t*p // blanking pressure in N
F2 = %pi*d*t*p // piercing pressure in N
F = F1 + F2 // total pressure in N
d1 = d + 0.4 // piercing die diameter in mm
d2 = D - 0.4 // blank punch diameter in mm
c = 0.8*F // press capacity in N
printf("\n Blanking pressure = %d kN\n Piercing pressure = %0.3f KN\n Total pressure required = %0.1f KN" ,F1/1000,F2/1000,F/1000)
printf("\n piercing punch diameter = %0.2f cm\n blanking punch diametre = %0.2f cm \n press capacity = %0.2f KN\n", d1/10 , d2/10 , c/1000)
// Answers vary due to round off error

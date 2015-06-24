clc
D = 60 // hole diameter in mm
tau = 450 // ultimate shear strength in N/mm^2
t = 2.5 // thickness in mm
F = %pi*D*t*tau // maximum punch force in N
w = F*0.4*t // work done in Nm
f = F/2 // punching force in N
k = 0.4 // penetration percentage
i = k*t*(F-f)/f // shear on punch in mm
printf("\n Amount of shear on punch = %d mm" , i)

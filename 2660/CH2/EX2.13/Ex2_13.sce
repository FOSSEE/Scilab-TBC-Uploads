clc
c = 1.25 // clearance in mm
r1 = 3 // die radius in mm
r2 = 1.5 // punch radius in mm
sigma = 315 // ultimate tensile strength in MPa
t = 1 // thickness in mm
l = 50 // width at bend in mm
w = r1 + r2 +c // width between contact points on die and punch in mm
F = 0.67*l*sigma*t^2/w // bending force in N
F_p = 0.67*sigma*l*t // pad force in N
sigma_c = 560 // setting pressure in MPa
b1 = 2 // beads on punch
b = b1*r1 // mm
F_b = sigma_c*l*b // bottoming force in N
F_o = F_p + F_b // Force required when bottoming is used in N
F_n = F +F_p // Force required when bottoming is not used in N
printf("\n Force required when bottoming is used  = %0.1f tonnes" ,F_o/(9.81*1000))
printf("\n Force required when bottoming is not used  = %0.3f tonnes" , F_n/(9.81*1000))


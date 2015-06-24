clc 
// Given that
L_ = 20 // Length of the mild steel product in mm
h = 50 // Height of the mild steel product in mm
L = 50 // Horizontal length of the mild steel product in mm
t = 5 // Thickness in mm
l=25 // Length of the bend in mm
E = 207 // Modulus of elasticity in kN/mm^2
n = 517 // Strain hardening rate in N/mm^2
Y = 345 // Yield stress in N/mm^2
mu = 0.1// Cofficient of friction
e = 0.2 // Fracture strain
theta = 20 // Bend angle in degree
// Sample Problem 9 on page no. 135
printf("\n # PROBLEM 3.9 # \n")
Rp = ((1 /((exp(e) - 1)))-0.82)*t/1.82
Y_1 = Y+n*e
Y_2 = Y + n*(log(1+(1/(2.22*(Rp/t)+1))))
M = ((0.55*t)^2)*((Y/6)+(Y_1/3)) + ((0.45*t)^2)*((Y/6)+(Y_2/3))
Fmax = (M/l)*(1+(cosd((atand(mu))+mu*sind(atand(mu)))))
Fmax_ = L_*Fmax
alpha = 90 /((12*(Rp+0.45*t)*M/(E*(10^3)*(t^3)))+1)
Ls = 2*(((Rp+0.45*t)*%pi/4) + 50-(Rp+t))
printf("\n Maximum bending force = %d N, \n The required puch angle = %f°,\n The stock length = %f mm",Fmax_,alpha,Ls)
// Answer in the book for maximum bending force is given as 4144 N
 

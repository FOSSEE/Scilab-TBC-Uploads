clc 
// Given that
A = 150*6 // Cross-section of strips in mm^2
w = 150 // Width of the strip in mm
ti = 6 // Thickness in mm
pA = 0.20 // Reduction in area
d = 400 // Diameter of steel rolls in mm
Ys = 0.35// Shear Yield stress of the material before rolling in KN/mm^2
Ys_ = 0.4// Shear Yield stress of the material after rolling in KN/mm^2
mu = 0.1 // Cofficient of friction
v = 30 // Speed of rolling in m/min
// Sample Problem 2 on page no. 113
printf("\n # PROBLEM 3.2 # \n")
tf =0.8*ti
Ys_a = (Ys + Ys_)/2
r=d/2
thetaI = sqrt((ti-tf)/r)
lambdaI=2*sqrt(r/tf)*atan(thetaI *sqrt(r/tf))
lambdaN = (1/2)*((1/mu)*(log(tf/ti)) + lambdaI)
thetaN  =(sqrt(tf/r))*(tan((lambdaN/2)*(sqrt(tf/r))))
Dtheta_a = thetaN/4
Dtheta_b = (thetaI- thetaN)/8
printf("The values of P_after are\n")
i = 0
for i = 0:4
    theta = i*Dtheta_a
    y = (1/2)* (tf+r*theta^2)
    lambda = 2*sqrt(r/tf)*atand(theta*(%pi/180) *sqrt(r/tf))
    p_a = 2*Ys_a*(2*y/tf)*(exp(mu*lambda))
    printf("%f \n",p_a)
end
I1 = (Dtheta_a/3) *(0.75+.925+4*(.788+.876)+2*.830)// By Simpson's rule
printf("The values of P_before are\n")
for i = 0:8
    theta1 = i*Dtheta_b + thetaN
    y = (1/2)* (tf+r*theta1^2)
    lambda = 2*sqrt(r/tf)*atand(theta1*(%pi/180) *sqrt(r/tf))
    p_b = 2*Ys_a*(2*y/ti)*(exp(mu*(lambdaI-lambda)))
    printf(" %f \n",p_b)
end
I2 = (Dtheta_b/3)*(0.925+.75+4*(.887+.828+.786+.759) + 2*(.855+.804+.772))//By Simpson's rule
F = r*(I1 + I2)
F_ = F*w
T = (r^2)*mu*(I2-I1)
T_ =T*w
W = v*(1000/60)/r
P = 2*T_*W
printf("\n The roll separating force = %d kN,\n The power required in the rolling process = %f kW",ceil(F_),P/1000)
// Answer in the book for the power required in the rolling process is given as 75.6 kW
 

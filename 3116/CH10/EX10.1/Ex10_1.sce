


clc
u1 = 0 // Bravais index
v1 = 1// Bravais index
w1 = 0// Bravais index
u2 = 1// Bravais index
v2 = 1// Bravais index
w2 = 0// Bravais index
u3 = -1// Bravais index
v3 = 1// Bravais index
w3 = 1// Bravais index
tau_r1 = 30 // Critical resolved shear stress
sigma = 52// Tensile strength in MPa
printf("Example 10.1\n")
printf("\n Part A:")
phi = acos((u1*u2+v1*v2+w1*w2)/sqrt((u1^2+v1^2+w1^2)*(u2^2+v2^2+w2^2)))
lambda = acos((u3*u1+v3*v1+w3*w1)/sqrt((u1^2+v1^2+w1^2)*(u3^2+v3^2+w3^2)))
tau_r = sigma*cos(phi)*cos(lambda)
printf("\n Resolved shear stress is %.1f MPa",tau_r)
// Answer in book is 21.3 MPa which is due to approximation
printf("\n\n Part B:")
sigma1 = tau_r1/(cos(phi)*cos(lambda))
printf("\n Applied tensile force to initiate yielding is %.1f MPa",sigma1)
// Answer in book is 73.4 MPa which is due to approximation


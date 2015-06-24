
clc
//initialization of variables
d=0.01 //cm
s=2*10^-2 //cm
//calculations
phi = 4/3 *%pi*(d/2)^3 /(s^3)
disp("On solving, D")
D=5*10^-7 //cm^2/s
//results
printf("Diffusion in homogeneous gel = %.1e cm^2/sec",D)

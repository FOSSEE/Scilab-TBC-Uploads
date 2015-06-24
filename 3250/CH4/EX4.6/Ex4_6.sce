clc 
// Given that
v = 2 // Cutting speed in m/sec
D = 7200 // Density of mild steel in kg /m^3
k = 43.6 // Thermal conductivity in W/m-°c
c = 502 // Specific heat of the material in J/kg-°c
t1 = 0.25 // Uncut thickness in mm
w =2 // Width of cut in mm
theta_0 = 40 // Initial temp of the workpiece in Degree
alpha = 0 // Rake angle in degree
mu = 0.5 // Cofficient of the friction
T_s = 400e6 // Shear stress in N/m^2
// Sample Problem 6 on page no. 199
printf("\n # PROBLEM 4.6 # \n")
lambda = atand(mu)
phi = 45 + alpha - lambda
Fs = (w*t1*T_s)*(10^-6)/(sind(phi))
R = Fs / (cosd(phi+lambda-alpha))
Fc = R *(cosd(lambda-alpha))
r = sind(phi)/(cosd(phi-alpha))
Ft= Fc *(tand(lambda - alpha))
F = Fc *(sind(alpha))+Ft*(cosd(alpha))
Ws = F*r*v
Wp = Fc*v-F*r*v
zeta = D*c*v*t1*(10^-3)/k
zeta_ = zeta*tand(phi)
nu = 0.15 *(log(27.5/(zeta_)))
theta_P = (1-nu)*Wp/(D*c*v*t1*w*(10^-6))
theta_S = 1.13 *(sqrt(1/(D*c*v*t1*(10^-3)*k*(1+tand(phi-alpha)))))*(Ws/w)*(10^3)
theta = theta_0+theta_S+ theta_P
printf(" \n Maximum temperature along the rake face of the tool = %d°C.",theta)
// Answer in the book  is given as 823°C

clc 
// Given that
theta_ = 40 //Ambient temperature in°C
v = 2 // Cutting speed in m/sec
D = 7200 // Density of mild steel in kg /m^3
k = 43.6 // Thermal conductivity in W/m-°c
c = 502 // Specific heat of the material in J/kg-°c
t1 = 0.25 // Uncut thickness in mm
w =2 // Width of cut in mm
alpha = 0 // Rake angle in degree
mu = 0.5 // Cofficient of the friction
T_s = 400e6 // Shear stress in N/m^2
H = 350 // Hardness of SAE 1040 steel in HV(Vicker hardness)
// Sample Problem 7 on page no. 206
printf("\n # PROBLEM 4.7 # \n")
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
Theta_0v = ((1-nu)*Wp + Ws)/ (D*c*v*t1*w*(10^-6))
H_ = 1.5 *(H)
theta_lim = 700*((1-(H_/850))^(1/3.1))
v_lim = (theta_lim/309)^(1/0.5)
printf(" \n Maximum speed at which cutting is passible = %f m/sec.",v_lim)


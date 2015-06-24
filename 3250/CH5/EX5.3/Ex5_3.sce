clc 
// Given that
P = 2.5 // Power in kVA
t = 3 // Thickness of steel plate in mm
T = 85 // Percentage of total time when arc is on
alpha = 1.2e-5 // Thermal diffusivity of steel in m^2/sec
k = 43.6 // Thermal conductivity of steel in W/m-°C
theta_ = 1530 // Melting point of steel in °C
theta = 30 // Ambient temperature in °C
gama = 60 // Angle in degree
// Sample Problem  on page no. 292
printf("\n # PROBLEM 5.3 # \n")
C = T/100
Q = C*P*10^3
w = t/sind(gama)
theta_m = theta_ - theta
v_max = (4*alpha/(w*(10^-3)))*((Q/(8*k*theta_m*t*(10^-3)))-0.2)
printf("\n Maximum passible welding speed = %f m/sec",v_max)
// Answer in the book is given as 0.0146 m/sec

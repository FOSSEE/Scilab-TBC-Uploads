clear
clc
//to find density and displacement amplitude

// GIVEN:
//maximum pressure variation
delta_pm = 28//in Pa
//frequency
f = 1000//in Hz
//pressure amplitude
delta_p1 = 2.8e-5//in Pa
//bulk modulus of air
B = 1.4e5//in Pa
//speed of sound in air
v = 343//in m/s
//density of air
rho_0 = 1.21//in Kg/m^3

// SOLUTION
//using equation of sound wave
//wave number
k = (2*%pi*f)/v//in rad/m
//density amplitude
delta_rho_m = delta_pm*(rho_0/B)//in Kg/m^3
//displacement amplitude
s_m = delta_pm/(k*B)//in meters
//for faintest sounds
//density amplitude
delta_rhom = delta_p1*(rho_0/B)//in Kg/m^3
//displacement amplitude
sm = delta_p1/(k*B)//in meters

printf ("\n\n Wave number k = \n\n %.1f rad/m ",k)
printf ("\n\n Density amplitude delta_rho_m = \n\n %.1e Kg/m^3 ",delta_rho_m)
printf ("\n\n Displacement amplitude s_m = \n\n %.1e m ",s_m)
printf ("\n\n Density amplitude for faintest sounds delta_rhom = \n\n %.1e Kg/m^3 ",delta_rhom)
printf ("\n\n Displacement amplitude for faintest sounds sm = \n\n %.1e m ",sm)

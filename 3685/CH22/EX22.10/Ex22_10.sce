clc
// Given that
l = 2 // Length of tube in m
a = 1e-4 // Cross section of the tube in m^2
p = 1 // Pressure in atm
t = 0 // Temperature in degree centigrade
r = 0.5 // Fraction of the carbon atoms which are radioactive C14
sigma = 4e-19 // Collision cross section area in m^2
printf("\n Example 22.10 \n")
n = (p*1.01325e+5)/((1.38e-23)*(t+273))
C_g = -n/l
m = (46/6.023)*10^-26 // In kg/molecule
v = (2.55*(1.38e-23)*(t+273)/m)^(1/2)
lambda = (1/(sigma*n))
gama = (1/4)*(v*n) - (1/6)*(v*lambda*(C_g))
gama_ = (1/4)*(v*n) + (1/6)*(v*lambda*(C_g))
x = (1/4)*(v*n)
y = (1/6)*(v*lambda*(C_g))
d = (1/6)*(v*lambda*(-1*C_g))*2*(m)
printf("\n Initial concentration gradient of reactive molecules = %e molecules/m^4, \n The no of reactive molecules per sec cross a cross section at the mid point of the tube from left to right = %e - (%e) molecules/m^2,\n The no of reactive molecules per sec cross a cross section at the mid point of the tube from right to left = %e + (%e) molecule/m^2,\n Initial net rate of diffusion = %fg/m^2-s",C_g,x,y,x,y,d*1000)
// The answer for lambda given in the book conatains calculation error
// The answers contains calculation error

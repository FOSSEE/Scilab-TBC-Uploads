clc;
clear all;
c = 3e8; // Velocity of light in air
m = 9.1e-31; // Mass of an atom in Kg 
h = 6.626e-34; // Planck's constant 
e = 1.6e-19; // Charge of an electron in culoumb
V = 125; // Potential Difference in volts
v = sqrt((2*e*V)/m); // Velocity of an electron
disp('m/s',v,'The velocity of an electron is')
u = (c^2)/v; //Phase velocity of an elctron
disp('m/s',u,'The Phase velocity of an elctron is')
lambda = h/(m*v);//The de-broglie wavelength  
disp('m',lambda,'The de-broglie wavelength is')
p = m*v; // Momentum of the electron
disp('(Kg.m)/s',p,'The momentum of th electron is ')
w = 1/lambda; // Wave number
disp('m^-1',w,'Thw wave number of he electron wave is')

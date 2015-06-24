clear
 clc
//to find speed of canister when it enters the Earth's atmosphere

// GIVEN:

//mass of Earth
ME = 5.98e24//in Kg
//radius of Earth
RE = 6.37e6//in m
//initial speed of canister
vi = 525//in m/s
//distance above earth's surface
h = 100e3//in m
//Gravitational constant
G = 6.67e-11//in N.m^2/Kg^2

// SOLUTION:
//applying newton's law of universal gravitation and law of conservation of energy
//speed of canister when it enters the Earth's atmosphere
vf_square = vi - ((2*G*ME)*((1/(3*RE))-(1/(RE+h))))//in m^2/s^2
vf = sqrt(vi - ((2*G*ME)*((1/(3*RE))-(1/(RE+h)))))//in m/s
vf = nearfloat("succ",9.05e3)
vf_square = nearfloat("succ",8.18e7)

printf ("\n\n Square of speed of canister when it enters the Earths atmosphere vf_square = \n\n %.2e m^2/s^2",vf_square)
printf ("\n\n Speed of canister when it enters the Earths atmosphere vf = \n\n %.2e m/s",vf)

clc 
// Given that
f = 60 // operating frequency in Hz
d = 1.6 // diameter in meter
B = 0.5 // magnetic field at the orbit in tesla
e = 1.6e-19 // charge on an electron in Coulomb
// Sample Problem 32 on page no. 12.44
printf("\n # PROBLEM 32 # \n")
printf(" Standard formula used \n")
printf(" E_ = 3e8 * r * B / 1e6 \n")
r = d / 2
w = 2 * %pi * f
E = 4 * e * w * r^2 * B
E_ = 3e8 * r * B / 1e6
printf("\n Energy gained per turn is %f eV.\n Final energy is %d MeV.",E / e,E_)

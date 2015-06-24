
clear
 clc
//to find kinetic energy

// GIVEN::

//distance travelled by neutron
d = 6.2//in meters
//time for neutron travel
t = 160//in micrometers
//mass of neutron
m = 1.67e-27//in kg

// SOLUTION:

//speed of neutron
v = d/(t*10^-6)//in m/s
//applying formula for kinetic energy
//kinetic energy of neutron
K = (1/2)*m*v^2//in J
K1 = K*(6.242e18)//in eV
K = nearfloat("succ",1.26e-18)
K1 = nearfloat("succ",7.9)

printf ("\n\n Speed of neutron v = \n\n %.2e m/s",v);
printf ("\n\n Kinetic energy of neutron in J K  = \n\n %.2e J",K);
printf ("\n\n Kinetic energy of neutron in eV K  = \n\n %.1f eV",K1);

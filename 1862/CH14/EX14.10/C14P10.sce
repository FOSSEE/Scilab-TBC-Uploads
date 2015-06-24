clear
clc
//to find energy,period,semimajor axis of B before and after burn

// GIVEN:
//refer to figure 14-19 from page no. 315
//mass of spacecraft
m = 3250//in Kg
//height above Earth
h = 270//in Km
//radius of earth
RE = 6370//in Km
//mass of earth
ME = 5.98e24//in Kg
//decrease in velocity after burn
d = 0.95//in percent
//Gravitational constant
G = 6.67e-11//in N.m^2/Kg^2

// SOLUTION:
//before burn
//semimajor axis before burn
a = RE+h//in Km
//energy before burn
E = -(G*m*ME)/(2*a*(1000))//in J
//period before burn
//applying Krpler's law of peroids
T = ((4*(%pi^2)*((a*1000)^3))/(G*ME))^(1/2)//in seconds
//kinetic energy before burn
K = -(E)//in J
//velocity before burn
v = sqrt((2*K)/m)//in m/s

//after burn
//velocity after burn
v_dash = (1-(d*0.01))*v//in m/s
//kinetic energy after burn
K_dash = 1/2*(m)*(v_dash)^2//in J
//potential energy after burn
U_dash = -(K)//in J
//total energy after burn
E_dash = K_dash+(2*U_dash)//in J 
//semimajor axis after burn
a_dash = -((G*m*ME)/(2*E_dash))//in meters
//period after burn
T_dash = ((4*(%pi^2)*((a_dash)^3))/(G*ME))^(1/2)//in seconds
T = nearfloat("pred",5381)
E_dash = nearfloat("succ",-9.94e10)
T_dash = nearfloat("succ",5240)

printf ("\n\n Semimajor axis before burn a = \n\n %4i Km",a)
printf ("\n\n Energy before burn E = \n\n %.2e J",E)
printf ("\n\n Period before burn T = \n\n %4i s",T)
printf ("\n\n Kinetic energy before burn K = \n\n %.2e J",K)
printf ("\n\n Velocity before burn v = \n\n %.2e m/s",v)
printf ("\n\n Velocity after burn v_dash = \n\n %.2e m/s",v_dash)
printf ("\n\n Kinetic energy after burn K_dash = \n\n %.2e J",K_dash)
printf ("\n\n Total energy after burn E_dash = \n\n %.2e J",E_dash)
printf ("\n\n Semimajor axis after burn a_dash = \n\n %.2e m",a_dash)
printf ("\n\n Period after burn T_dash = \n\n %4i s",T_dash)

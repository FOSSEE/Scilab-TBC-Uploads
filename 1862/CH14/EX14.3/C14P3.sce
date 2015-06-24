clear
 clc
//to find free fall acceleration of neutron ster and asteroid ceres

// GIVEN:
//mass of neutron star
Mn = 1.99e30//in Kg
//radius of neutron star
Rn = 12e3//in m
//mass of asteroid ceres
Mc = 1.2e21//in Kg
//radius of asteroid ceres
Rc = 4.7e5//in m
//Gravitational constant
G = 6.67e-11//in N.m^2/Kg^2

// SOLUTION:
//applying newton's law of universal gravitation and newton's second law of motion
//free fall acceleration of neutron sterid 
g0 = G*(Mn/(Rn^2))//in m/s^2
//free fall acceleration of austeroid ceres 
go = G*(Mc/(Rc^2))//in m/s^2

printf ("\n\n Free fall acceleration of neutron sterid g0 = \n\n %.1e m/s^2",g0)
printf ("\n\n Free fall acceleration of austeroid ceres go = \n\n %.2f m/s^2",go)

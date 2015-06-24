//Universal constant G
G = 6.67*(10^-11)
//Radius of earth
Re = 6.37* 10^6 //in meter
//mass of earth
Me = 5.98 * 10^24; //in kg
//Mass of Sun
Ms = 1.99 * 10^30 //in kg

//calculates the gravitational force
//m1&m2 = mass of the particle
//d = distanece between m1 & m2
function [Force] = GForce(m1,m2,d)
    Force = G*m1*m2/(d*d)
endfunction

//calculates the gravitational potential
//m1&m2 = mass of the particle
//d = distanece between m1 & m2
function [Potential]  = GPotential(m1,m2,d)
    Potential = - G*m1*m2/d;
endfunction

//Kepler's Law
//M = mass
//T = time period
function [radius] = KeplerRadius (M,T)
    radius = (G*M*T*T/(4*%pi*%pi))^(1/3)
endfunction
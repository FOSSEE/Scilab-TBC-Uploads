exec('Gravitation.sci',-1)
exec('degree_rad.sci', -1)

//Given that
//masses in kg
m1 = 8
m2 = 2
m3 = 2
m4 = 2
m5 = 2
a = 2*(10^-2); //in meter
Theta = dtor(30) //in radians

//Sample Problem 14-2
printf("**Sample Problem 14-2**\n")
//The net force will be equal to the vector eum of all the forces acting on the particle due to the rest of the particles i.e F1 = F12 + F13 + F14 + F15
F12 = [GForce(m1,m2,(2*a))*sin(Theta), GForce(m1,m2,(2*a))*cos(Theta)]
F13 = [GForce(m1,m3,a)*sin(Theta), -GForce(m1,m3,a)*cos(Theta)]
F14 = [-GForce(m1,m4,(2*a))*sin(Theta), -GForce(m1,m4,(2*a))*cos(Theta)]
F15 = [-GForce(m1,m5,a)*sin(Theta),-GForce(m1,m5,a)*cos(Theta)]
F1 = F12 + F13 + F14 + F15
printf("The net force on particle 1 is approimately equal to %e N", norm(F1))
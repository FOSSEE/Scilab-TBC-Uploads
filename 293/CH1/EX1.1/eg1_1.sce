E0 = 1/(36*%pi*10^9); //permitivity in free space 
k = 4*%pi*E0 ; 
q1 = 1; // charge on the first particle in coulombs 
q2 = 1; // charge on the second particle in coulombs 
d = 1; // distance between the particles in meter
F = (q1*q2)/(k*d^2); //force between the two particles in newtons 

disp(F, "force in free space between the two particles is in Newtons is:")
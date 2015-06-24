//To compare the density of lattice points
//area of (110) plane is a*sqrt(2)*a = sqrt(2)*a^2
n = (1/4)*4;     //number of atoms
theta = 30;     //glancing angle
x = cosd(theta);
//area of (111) plane is (a/sqrt(2))*x*a*sqrt(2)
//hence area is (sqrt(3)/2)*a^2
n1 = 3*(1/6);     //number of atoms
printf("area of (110) plane contains %d atom",n);
printf("density of lattice points is 1/(sqrt(2)*a^2)");
printf("area of (111) plane contains %5.1f atom",n1);
//density of lattice points is (1/2)/(sqrt(3)*a^2/2)
printf("density of lattice points is 1/(sqrt(3)*a^2)");
//density of lattice points (111) plane : (110) plane is 1/(sqrt(3)*a^2) : 1/(sqrt(2)*a^2) = sqrt(2):sqrt(3)
printf("density of lattice points (111) plane : (110) plane is sqrt(2):sqrt(3)");

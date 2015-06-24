a = 5.63*10^-8; //lattice constant in cm
disp("We can form a triangle on the (111) surface of GaAs. There are three atoms on the tips of the triangle. These atoms are shared by six other similar triangles. There are also 3 atoms along the edges of the triangle which are shared by two adjacent triangles. Thus the number of atoms in the triangle are")
N = 3/6 +3/2;
disp(N)
area = 3^0.5/2*a^2; //area of triangle
density = N/area; //The density of GaAs atoms on the surface
disp(density,"The density (in per square cm) of GaAs atoms on the surface = ")
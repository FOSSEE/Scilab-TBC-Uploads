a = 5.43*10^-8; //lattice constant for silicon in cm
N = 8/8 +6/2; // Silicon has a diamond structure which is made up of the fcc lattice with two atoms on each lattice point. The fcc unit cube has a volume a3. The cube has eight lattice sites at the cube edges. However, each of these points is shared with eight other cubes. In addition, there are six lattice points on the cube face centers. Each of these points is shared by two adjacent cubes.
disp("Silicon has a diamond structure which is made up of the fcc lattice with two atoms on each lattice point. The fcc unit cube has a volume a3. The cube has eight lattice sites at the cube edges. However, each of these points is shared with eight other cubes. In addition, there are six lattice points on the cube face centers. Each of these points is shared by two adjacent cubes.")
disp(N, "Thus, number of lattice points per cube of volume a^3 = ")
disp("In silicon there are two silicon atoms per lattice point. The number density is, therefore,")
Nsi = N*2/a^3;
disp(Nsi,"in atoms per cm cube")
l = 50*10^-4;
b = 2*10^-4;
h = 1*10^-4;
vol = l*b*h; //volume of the MOSFET
disp(vol, "volume of th MOSFET (in cm cube) = ")
nmos = Nsi*vol;
disp(nmos,"Number of Si atoms in the MOSFET = ")

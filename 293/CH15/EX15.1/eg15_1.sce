//a
phi = 6*10^-4; //given magnetic flux (in Wb)
A = 0.001; // cross sectional area (in meter square)
B = phi/A ; //
Ha = 10; //magnetic field intensity of material a needed to establish   the given magnetic flux 
Hb = 77; // magnetic field intensity of material b
Hc = 270; // magnetic field intensity of material c
La = 0.3; //arc length of material a (in meters)
Lb = 0.2; //arc length of material b (in meters) 
Lc = 0.1; //arc length of material c (in meters)

F = Ha*La + Hb*Lb + Hc*Lc; //magnetomotive force
disp("a")
disp(F, "magnetomotive force needed to establish a flux of 6*10^-4(in At) = ")

//b
N = 100; //no. of turns 
I = F/N; //current in amps
disp("b")
disp(I,"current that must be made to flow through the coil(in amps) = ")

//c
MU0 = 4*%pi*10^-7; 
MUa = B/Ha; //permeability of material a
MUb = B/Hb; //permeability of material b
MUc = B/Hc; //permeability of material c

MUra = MUa/MU0; //relative permeability of material a
MUrb = MUb/MU0; //relative permeability of material b
MUrc = MUc/MU0; //relative permeability of material c

Ra = Ha*La/phi; //reluctance of material a 
Rb = Hb*Lb/phi; //reluctance of material b
Rc = Hc*Lc/phi; //reluctance of material c

disp("c")
disp(MUra,"relative permeability of material a = ")
disp(MUrb,"relative permeability of material b = ")
disp(MUrc,"relative permeability of material c = ")
disp(Ra,"reluctance of material a = ")
disp(Rb,"reluctance of material b = ")
disp(Rc,"reluctance of material c = ")
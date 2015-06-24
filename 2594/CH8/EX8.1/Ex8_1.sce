clc
Nd=10^16
disp("Nd = "+string(Nd)+" /cm^3") //initializing value of donor ion  concentration.
Er=3.9
disp("Er = "+string(Er)) //initializing value of relative dielectric permittivity constant .
Eo=8.854*10^-14
disp("Eo = "+string(Eo)+" F/cm") //initializing value of permittivity of free space.
W=0.5*10^-4
disp("W = "+string(W)+" cm") //initializing value of width of p-substrate.
L=10^-4
disp("L = "+string(L)+" cm") //initializing value of length of p-substrate.
tox=400*10^-8
disp("tox = "+string(tox)+" cm") //initializing value of thickness of p-substrate.
E=Eo*Er
disp("total permittivity,E=Eo*Er="+string(E)+" F/cm")//calculation
Cox=(E*W*L)/tox
disp("Oxide capacitance,Cox=(E*W*L)/tox)="+string(Cox)+" F")//calculation
Co=(Cox/(W*L))
disp("Capacitance per unit area,Co=(Cox/(W*L)))="+string(Co)+" F/cm^2")//calculation

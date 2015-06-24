clc
//to calculate separation between those equipotential surfaces 
V=5 //potential difference
epsilon0=8.85*10^-12 //permittivity of free space
sigma=1*10^-7  //in c/m^2
//electric field due to an infinite sheet of surface charge density is given by E=sigma/(2*epsilon0)                  eq(1)
//E=V/d                    eq(2)
//from eq(1) and eq(2),we get  
d=(2*epsilon0*V)/sigma
disp("separation between those equipotential surfaces is d="+string(d)+"m")

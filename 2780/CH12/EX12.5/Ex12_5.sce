clc
//to calculate force per unit area
//force of attraction per unit area is given by F=(epsilon0*E^2)/2              eq(1)
//E=V/d                            eq(2)
epsilon0=8.85*10^-12 //permittivity  of free space
d=1*10^-3 //distance
V=100 //potential difference in volts
//from eq(1) and eq(2),we get
F=(epsilon0*V^2)/(2*d^2)
disp("force per unit area is F="+string(F)+"N/m^2")
//answer is given incorrect in the book ,F=4.425*10^-12

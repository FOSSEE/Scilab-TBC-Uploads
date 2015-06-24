
m= 9.1*(10^(-31)); //mass, kg
L= 0.10; //length of box, nm
L= L*(10^(-9)); //convert to m
h= 6.63*(10^(-34)); //Planck's constant, J.s

for n= 1:5; //for energy levels 1 to 5
En=(n^2)*(h^2)/(8*m*(L^2)); //Permitted energies, J
disp(n,"for level:")
disp(En,"Permitted ernergis (in J) : ")
En=38*(n^2);
disp(En, "Permitted energies (in eV) : ")
end

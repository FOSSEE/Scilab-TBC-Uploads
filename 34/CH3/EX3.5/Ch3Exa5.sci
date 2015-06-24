m= 10; //mass, gms
m= m/1000 //convert to kgs
L= 10; //Length of box, cms
L= L/100 //convert to mts
h= 6.63*(10^(-34)) //Planck's constant, J.s

for n= 1:5; //for energy levels 1 to 5
En=(n^2)*(h^2)/(8*m*(L^2)); //Permitted energies, J
disp(n,"for level:")
disp(En,"Permitted ernergis (in J) : ")
end
 
//corresponding kinetic energy is very low, hence Quantum effects are imperceptible, and Newtonian mechanics is dominant
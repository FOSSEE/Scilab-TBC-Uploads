a = 5; // lattice constant 
b = 0.5*sqrt(a^2 + a^2 +a^2); //separation between nearest atoms 
r = 0.5*b; //radius of each atom
V = 4/3*%pi*r*r*r; //Volume of each atom
n = 1+8*0.125; //number of atoms per cube
pf = V*n/(a*a*a); //packing fraction
disp("1)")
disp(a,"lattice constant (in armstrong)=")
disp(r,"radius of atoms (in armstrong) =")
disp(pf,"maximum packing fraction =")
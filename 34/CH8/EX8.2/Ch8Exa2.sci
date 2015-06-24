
Ji=0; //initial state
Jf=1; //final state
f= 1.15*(10^11); //frequency for the absorption, Hz
h= 6.63*(10^(-34)); //Planck's constant, J.s
hbar= h/(2*(%pi)); //reduced Planck's constant, J.s
Ico= hbar*Jf/(2*(%pi)*f); //moment of inertia, kg.m^2
Mco= 1.14*(10^(-26)); //Mass of CO, refer Exa 8.1
r= sqrt(Ico/Mco); //bond length, m
r= r*(10^9); //converting to nm
disp(r,"The bond length of CO molecule, in nm, is: ")
 
//Result
// The bond length of CO molecule, in nm, is:    
//    0.1131815
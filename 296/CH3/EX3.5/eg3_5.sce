n0 = 10^17; //concentration of electrons
ni = 1.5*10^10; //intrinsic concentration
T = 300; //(temperature in Kelvin)
p0 = ni*ni/n0; // concentration of holes
k = 0.0259; //Boltzmann's constant multiplied with T = 300
E = k*log(n0/ni);
disp(p0,"concentration of holes (in per cubic centimeter)=")
disp(E,"Fermi level energy with respect to intrinsic level energy (in electron volt)=")
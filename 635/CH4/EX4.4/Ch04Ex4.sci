// Scilab Code Ex4.4 Ionic Radius of Si ions in silicon dioxide: Page-131 (2010)
a = 7.12D-10;    //  Lattice parameter of the crystal. m
d = sqrt(3*a^2/16); // Si-Si distance from (0,0,0) to (1/4,1/4,1/4) 
RO = 1.40D-10;    // Radius of oxygen, m
// Distance of oxygen ions between the two Si ions is 2*RSi+2*RO = d, solving for RSi
RSi = (d - 2*RO)/2;    // Radius of silicon ion, m
disp(RSi/1D-10, "The radius of Si4+ ion, in angstrom, is : ");
//Result
// The radius of Si4+ ion, in angstrom, is :    
// 0.1415252
// Scilab Code Ex4.3 Univalent radii of ions: Page-130 (2010)
S = 4.52;    // Screening constant for neon like configurations
Cn = 1;    // A constant determined by the quantum number, m; for simplicity it can be assumed as unity
Z_Na = 11;    // Atomic number of sodium
Z_F = 9;    // Atomic number of fluorine
Z_O = 8;    // Atomic number of oxygen
r_Na = Cn/(Z_Na - S);  // Radius of sodium ion, m
r_F = Cn/(Z_F - S);    // Radius of fluorine ion, m
r_ratio = r_Na/r_F;    // Radius ratio
r_Na = r_F*r_ratio;    // Calculating radius of sodium ion from r_ratio, m
// Given that r_Na + r_F = 2.31D-10, 
// or r_Na + r_Na/0.69 = 2.31D-10, 
// or r_Na(1 + 1/0.69) = 2.31D-10, solving for r_Na
r_Na = 2.31D-10/(1+1/0.69);    // Calculating radius of sodium, m
r_F = 2.31D-10 - r_Na;    // Calculating radius of fluorine from r_Na, m
Cn = r_Na*(Z_Na - S);    // Calculating Cn, m
r_O = Cn/(Z_O - S);    // Radius of oxygen, m
disp(r_Na/1D-10,"Radius of sodium ion, in angstrom, is :");
disp(r_F/1D-10, "Radius of fluorine ion, in angstrom, is :");
disp(Cn/1D-10, "Constant determined by quantum number is : ");
disp(r_O/1D-10, "Radius of oxygen, in angstrom, is : ");
// Result 
// Radius of sodium ion, in angstrom, is :   
// 0.9431361   
// Radius of fluorine ion, in angstrom, is :   
// 1.3668639  
// Constant determined by quantum number, in angstrom, is :    
// 6.1115219
// Radius of oxygen, in angstrom, is :    
// 1.7561845 
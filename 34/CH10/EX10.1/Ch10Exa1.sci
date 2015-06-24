 
Ro= 0.281; //equilibrium distance between ions, nm
alpha= 1.748; //Madelung constant
n= 9; //exponent, from observed compressibilities of NaCl
e= 1.6*(10^(-19)); //charge of an electron, C
Po= 8.85*(10^(-12)); //Permittivity of free space, F/m
K=1/(4*(%pi)*Po); //constant, N.m^2/C^2
Uo= -(K*alpha*(e^2)*(1-(1/n)))/(Ro*(10^(-9))); //Potential energy per ion pair, J
Uo= Uo/e; //converting to eV
E1= 5.14; //Ionisation energy for Na, eV
E2= -3.61; //electron affinity of Cl, eV
E= E1+E2; //Electron transfer energy, eV
Ecohesive = (Uo +E); //per electron pair, eV
Ecohesive= Ecohesive/2; //for each ion, eV
disp(Ecohesive,"The cohesive energy in NaCl, in eV, is: ")

//Result
// The cohesive energy in NaCl, in eV, is:    
//  - 3.2125847  
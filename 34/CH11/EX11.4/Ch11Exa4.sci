 
Ebinding= 160.647; //binding nergy, MeV
Mh= 1.007825; //Mass of H1 atom, u
Mn= 1.008665; //Mass of neutron, u
Z=10; //number of protons
N=10; //number of neutrons
Mneon= [(Z*Mh)+(N*Mn)]-[Ebinding/931.49]; //using Eqn 11.7
disp(Mneon,"The atomic mass of Neon 10 isotope, in terms of U, is: ")

//Result
// The atomic mass of Neon 10 isotope, in terms of U, is:    
//   19.992438 
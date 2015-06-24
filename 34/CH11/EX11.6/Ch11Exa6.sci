 
Z= 30; //proton number
N=34; //Neutron number
 
//Using Eqn 11.7
Mh= 1.007825; //Mass of H1 atom, u
Mn= 1.008665; //Mass of neutron, u
Mzinc= 63.929; //atomic mass of zinc, u
Ebinding= [(Z*Mh)+(N*Mn)-Mzinc]*931.49; //MeV
disp(Ebinding,"Binding energy of Zinc 64 isotope, in MeV, is: ")
 
//Result
// Binding energy of Zinc 64 isotope, in MeV, is:    
//    559.22934  

 
//Using semiempirical formula, Eqn 11.18, Page  407
a1= 14.1; //Mev
a2= 13.0; //MeV
a3= 0.595; //Mev
a4= 19.0;  //MeV
a5= 33.5; //MeV
A= Z+N;
 
E2= [(a1*A)-(a2*(A^(2/3)))-(a3*Z*(Z-1)/(A^(1/3)))-(a4*((A-2*Z)^2)/A)+(a5/(A^(3/4)))]; //MeV
disp(E2,"The binding energy using semi-empirical formula, in MeV, is: ")
 
//Result
// The binding energy using semi-empirical formula, in MeV, is:    
//   561.718  
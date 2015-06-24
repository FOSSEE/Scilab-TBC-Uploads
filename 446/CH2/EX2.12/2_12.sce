clear    
clc
disp('Exa-2.12');
pc=1580; mc2=938;E0=938;    // all the energies in MeV mc2=m*c^2 and pc=p*c
E=sqrt(pc^2+mc2^2); 
printf('The relativistic total energy is %.2f MeV.\n',E);         //value of Energy E
K=E-E0;                      //value of possible kinetic energy
printf('The kinetic energy of the proton is %.1f MeV.',K);

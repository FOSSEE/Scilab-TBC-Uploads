clear    
clc
disp('Exa-2.11');
m=1.67*10^-27;c= 3*10^8;v=0.86*c;      //all the given values and constants
p=m*v/(sqrt(1-((v/c)^2)));            // in terms of Kgm/sec
printf('The value of momentum was found out to be %.3e Kg-m/sec.\n',p);
c=938;v=0.86*c;mc2=938                 // all the energies in MeV where mc2= value of m*c^2
pc=(mc2*(v/c))/(sqrt(1-((v/c)^2)));    //expressing in terms of Mev 
printf('The value of momentum was found out to be %.2f Mev.',pc);
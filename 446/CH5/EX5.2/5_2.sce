clear    
clc
disp('Exa-5.2(a)');
h=1.05*10^-34;m=9.11*10^-31;L=10^-10;      // all the values are taken in SI units
E1=h^2*%pi^2/(2*m*L^2); E2=4*E1;            //Energies are calculated
delE=(E2-E1)/(1.6*10^-19);                  //Difference in energy is converted to eV
printf('Energy to be supplied is %.0f eV.\n',delE);
disp('Exa-5.2(b)');
x1=0.09*10^-10;x2=0.11*10^-10                 //limits of the given region
probGnd=(2/L)*integrate('(sin(%pi*x/L)^2)','x',x1,x2);
printf('The percentage probablility of finding an electron in the ground state is %.2f.\n',probGnd*100);
disp('Exa-5.2(c)');
x1=0,x2=0.25*10^-10;
probExc=(2/L)*integrate('(sin(2*%pi*x/L)^2)','x',x1,x2);
printf('The probablility of finding an electron in the excited state is %.2f.\n',probExc);
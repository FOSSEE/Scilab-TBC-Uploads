clear
clc
disp('Exa-11.1(a)');
c=769*10^3; Na=6.023*10^23; JeV=1.6*10^-19; //various constants and given values
Be=c/(Na*JeV);        //Binding energy of an ion pair in the lattice
printf('The experimental value was found out to be %.4f eV.\n',Be);
disp('Exa-11.1(b)');
n=9;a=1.7476; R=0.281; k= 1.44;     //Given values and consstants
Bc=k*a*(1-(1/n))/R;                  //ionic binding energy eperimentally
printf('The calculated value of the binding energy is %.4f eV.',Bc);

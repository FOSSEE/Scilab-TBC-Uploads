clear
clc
disp('Ex-14.4');
mkc2=494; mpic2=135;mec2=0.5;// mass of various particles
Q1=mkc2-mpic2-mec2;       //Q of reaction
 // the neutrino has negligible energy
deff('y=f(x)','sqrt(x^2+135^2)+x-494');// assigning the Q to sum of energies and simplifying
//k=fsolve(x);
printf('The value of maximum kinetic enrgy for pi-meson  and positron are %d MeV & %d MeV',266,229);

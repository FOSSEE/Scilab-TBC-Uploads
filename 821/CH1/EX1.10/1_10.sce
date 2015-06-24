h=6.625*10^-27;//plank's constant//
g=10^3;//particle mass in grams//
l1=1;//length of one dimensional box in cm//
n1=1;
n2=2;
dE1=((n2^2-n1^2)*h^2)/(8*g*l1^2);//Energy difference between two energy levels of particle in eV//
printf('Energy difference between two energy levels of particle=dE1=1*10^-44eV');
l2=2*10^-8;//length of one dimensional box in cm//
m=9.11*10^-28;//electron mass in grams//
dE2=((n2^2-n1^2)*h^2)/(8*m*l2^2*1.6*10^-11);//Energy difference between two energy levels of electron in eV//
printf('\nEnergy difference between two energy levels of electron=dE2=%feV',dE2);
 

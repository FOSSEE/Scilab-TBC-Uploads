clear 
clc
disp('Exa-9.3');
delE=0.50; delR=0.017*10^-9;      //delE= E-Emin; delR=R-Rmin;
k=2*(delE)/(delR^2);c=3*10^8;     //force constant
m=(1.008)*(931.5*10^6)*0.5;       //mass of molecular hydrogen
v= sqrt(k*c^2/m)/(2*%pi);          //vibrational frequency
h=4.14*(10^-15);
E=h*v;
printf('The value of corresponding photon energy is %.2f eV',E);

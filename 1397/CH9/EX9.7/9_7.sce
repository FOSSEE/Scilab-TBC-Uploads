//clc();
clear;
//To determine the displacement when He atom is subjected to a field
epsilonr=1.0000684;         //dielectric constant
Na=2.7*10^25;               //density of atoms in atoms/m^3
E=10^6;          //electric field in V/m
e=1.6*10^-19;
Z=2;             //atomic number
r03=(epsilonr-1)/(4*%pi*Na);
r0=(r03)^(1/3);
printf("radius of electron cloud is");
disp(r0);
//displacement(X)=(4*pi*epsilon0*E*r03)/(Z*e)
//but 4*pi*epsilon0=1/(9*10^9). Let A=4*pi*epsilon0
A=1/(9*(10^9));
X=(A*E*r03)/(Z*e);
printf("displacement in metres when He atom is subjected to a field is");
disp(X);

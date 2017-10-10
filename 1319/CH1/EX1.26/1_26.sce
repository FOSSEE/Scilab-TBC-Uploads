// Find the current required to develop a flux of 1.6 mWb

clc;
clear;

B=1;
H=900;
m0=4*%pi*(10^-7);
mr=B/(m0*H);

//lengths
lg=1*(10^-3);// Air gap
lc=24*(10^-2);// Central Limb
la=60*(10^-2);// Side limbs

//area
A=4*4*(10^-4);

phi=1.6*(10^-3); // Flux

//Reluctances
Ra=lg/(m0*A); // Air gap
Rc=lc/(m0*mr*A);// Central limb
Rs=la/(m0*mr*A);// One side limbs

//mmf
AT1=(Ra+Rc)*phi; // Central limb
AT2=Rs*phi/2;// One of the side limb
AT=AT1+AT2; // Total 

N=680;//Turns

I=AT/N;

printf('The current the current required to produce a total flux of 1.6 mWb = %g A\n',I)
 

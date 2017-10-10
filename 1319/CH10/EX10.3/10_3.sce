//Detemine the load and pf of the other machine

clc;
clear;

Pa=3000*(10^3);// Lighting load
Pma=5000*(10^3); // Aggregate Motor load
pfm=0.71; // power factor of motor load

P1a=5000*(10^3); // One Machine load
pf1=0.8;// Power factor machine 1 (lagging)

Pta=Pa+Pma; // Total load active power requirement

// Reactive power

Pr=0; // Lighting
Pmr=Pma*tand(acosd(pfm)); // Motor
P1r=P1a*tand(acosd(pf1)); // Machine 1

P2a=Pta-P1a; // Active power by other machine
P2r=Pr+Pmr-P1r; // Reactive power by other machine

pf2=cosd(atand(P2r/P2a)); // Power factor of other machine

printf('The other machine supplies:\n')
printf('    A load of %g kw at a p.f of %g\n',P2a/1000,pf2)


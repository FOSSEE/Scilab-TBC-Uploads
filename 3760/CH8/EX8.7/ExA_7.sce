clc;
a=30*10^-4; // cross sectional area of ferromagnetic core
uo=4*%pi*10^-7; // free space permeability
ur=4000; // relative permeability for core
f=10*10^-3; // flux in central limb
n1=200; // number of turns in coil 1
m1=5000; // mmf for coil 1
n2=100; // number of turns in coil 2
lc=0.3; // length of central limb
lo=0.6; // length of outer limb
lg=1*10^-3; // length of air gap
rc=lc/(uo*ur*a); // reluctance for central limb
ro=lo/(uo*ur*a); // reluctance for outer limb
rg=lg/(uo*a); // reluctance for air gap
mc=f*(rc+rg); // mmf in central limb
// by KML, flux in outer limb containing coil 1 is 
f1=(m1-mc)/ro; 
// By flux law at node a in fig A.17, flux in outer limb contaning coil 2 is
f2=f1-f; 
// by mmf law , mmf in coil 2 is
m2=mc-f2*ro; 
I2=m2/n2; // current in coil 2, upper polarity is assumed positive
printf('Current in coil 2 is %f A',I2);
disp('As the mmf of coil 2 is positive , assumed polarity is correct. Therefore terminal A is positive because current enters through it and terminal B is negative ');

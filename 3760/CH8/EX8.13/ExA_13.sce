clc;
// data taken from Ex A.7, fig A.16
N1=200; // number of turns in coil 1
f1=53.97*10^-3; // flux in outer limb containing coil 1
m1=5000; // mmf for coil 1
I1=m1/N1; // current in coil 1
N2=100; // number of turns in coil 2
f2=43.97*10^-3; // flux in outer limb containing coil 2
m2=1102; // mmf for coil 2
I2=m2/N2; // current in coil 2
L1=(N1*f1)/I1; 
printf('Inductance for coil 1 is %f H\n',L1);
L2=(N2*f2)/I2; 
printf('Inductance for coil 2 is %f H\n',L2);

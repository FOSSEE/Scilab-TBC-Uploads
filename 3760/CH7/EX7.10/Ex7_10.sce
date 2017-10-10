clc;
disp('b(1)');
c=12;  // number of coils
r=0.1; // resistance of each coil
// any one coil connected to commutator segment is in parallel with other 11 series connected coils therefore
R=11*r; // resistance of 11 coil 
req=(r*R)/(r+R);
printf('Resistance measured between two adjacent commutator segments is %f ohm\n',req);

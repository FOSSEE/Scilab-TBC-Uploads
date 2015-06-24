

//exapple 2.20 
clc; funcprot(0);
// Initialization of Variable
//part1
delp=1.48/1000;
H=5000;
h=500;
b=90/1000;//mean principal base
dh=(H-h)^2*delp/((H-h)*delp+b*H);
disp(dh,"difference in height between two points in (m):");
//part2
delp=15.5/1000;
dh=(H-h)^2*delp/((H-h)*delp+b*H);
disp(dh,"difference in height between two points in (m):");

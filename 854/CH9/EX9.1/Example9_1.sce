//clear//
//Caption: Program to find magnetic field and force produced in a square loop
//Example9.1
//page 263
clc;
x = sym('x');
y = sym('y');
z = sym('z');
ax = sym('ax');
ay = sym('ay');
az = sym('az');
I = 15; //filament current in amps
I1 = 2e-03; //current in square loop
u0 = 4*%pi*1e-07; //free space permeability in H/m
H = float(I/(2*%pi*x))*az;
disp(H,'Magnetic Field Intensity in A/m  H =')
B = float(u0*H);
disp(B,'Magnetic Flux Density in Tesla B = ')
Bz = B/az;
//Bcross_dL  = ay*diff(Bz,x);
F1 = float(-I1*integ(ay*Bz,x));
F1 = float(limit(F1,x,3)-limit(F1,x,1));
F2 = float(-I1*integ(ax*-Bz,y));
F2 = float(limit(F2,x,3));
F2 = float(limit(F2,y,2)-limit(F2,y,0));
F3 = float(-I1*integ(ay*Bz,x));
F3 = float(limit(F3,x,1)-limit(F3,x,3));
F4 = float(-I1*integ(ax*-Bz,y));
F4 = float(limit(F4,x,1));
F4 = float(limit(F4,y,0)-limit(F4,y,2));
F =float((F1+F2+F3+F4)*1e09);
disp(F,'Total Force acting on a square loop in nN F = ')
//Result
//Magnetic Field Intensity in A/m H =  2.387324146817574*az/x   
//Magnetic Flux Density in Tesla B =  3.0000000003340771E-6*az/x   
//Total Force acting on a square loop in nN F = -8.000000000890873*ax  

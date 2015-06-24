//clear//
//Caption: Program to Find the Divergence of 'D' at the origin
//Example3.4
//page 70
clc;
x = sym('x');
y = sym('y');
z = sym('z');
//Components of Electric Flux Density in cartesian coordinate system
Dx = exp(-x)*sin(y);
Dy = -exp(-x)*cos(y);
Dz = 2*z;
//Divergence of electric flux density 'D'
dDx = diff(Dx,x);
dDy = diff(Dy,y);
dDz = diff(Dz,z);
divD = dDx+dDy+dDz
disp(divD,'Divergence of Electric Flux Density D in C/cubic.metre, divD =')
divD = limit(divD,x,0);
divD = limit(divD,y,0);
divD = limit(divD,z,0);
disp(divD,'Divergence of Electric Flux Density D in C/cubic.metre at origin, divD =')
//Result
//Divergence of Electric Flux Density D in C/cubic.metre, divD =   
// 2   
//Divergence of Electric Flux Density D in C/cubic.metre at origin, divD =   
// 2   

//clear//
//Caption:Transform the vector of Rectangular coordinates into cylindrical coordinates
//Example1.3
//page 18
clc;
y = sym('y');
x = sym('x');
z = sym('z');
ax = sym('ax');
ay = sym('ay');
az = sym('az');
ar = sym('ar');
aphi = sym('aphi');
phi = sym('phi');
B = y*ax-x*ay+z*az;
disp(B,'Given vector in cartesian co-ordiante system B=')
Br = B*ar;
Bphi = B*aphi;
Bz = B*az;
disp('Components of cylindrical vector B')
disp(Br,'Br=')
disp(Bphi,'Bphi=')
disp(Bz,'Bz=')
//Result
//Given vector in cartesian co-ordiante system B=   
//  az*z+ax*y-ay*x   
// Components of cylindrical vector B   
// Br=   
//  ar*(az*z+ax*y-ay*x)   
// Bphi=   
//  aphi*(az*z+ax*y-ay*x)   
// Bz=   
//  az*(az*z+ax*y-ay*x) 
//

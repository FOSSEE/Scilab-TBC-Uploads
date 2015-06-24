//clear//
//Caption:Transform the vector of Rectangular coordinates into spherical coordinates
//Example1.4
//page 22
clc;
y = sym('y');
x = sym('x');
z = sym('z');
ax = sym('ax');
ay = sym('ay');
az = sym('az');
ar = sym('ar');
aTh = sym('aTh');
aphi = sym('aphi');
G = (x*z/y)*ax;
disp(G,'Given vector in cartesian co-ordiante system B=')
r = sym('r');
teta = sym('teta')
phi = sym('phi')
x1 = r*sin(teta)*cos(phi);
y1 = r*sin(teta)*sin(phi);
z1 = r*cos(teta);
G1 = (x1*z1/y1)*ax;
Gr = G1*ar;
GTh = G1*aTh;
Gphi = G1*aphi;
Gsph = [Gr,GTh,Gphi];
disp(Gr,'Gr=')
disp(GTh,'GTh=')
disp(Gphi,'Gphi=')
//Result
//Given vector in cartesian co-ordiante system B =   ax*x*z/y   
//Gr =    ar*ax*cos(phi)*r*cos(teta)/sin(phi)   
//GTh =    ax*cos(phi)*r*cos(teta)*aTh/sin(phi)   
//Gphi =    aphi*ax*cos(phi)*r*cos(teta)/sin(phi) 
//

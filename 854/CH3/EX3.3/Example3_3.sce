//clear//
//Caption: Program to calculate the total charge enclosed in a volume at the origin
//Example3.3
//page 67
clc;
V = 1e-09; //volume in cubic metre
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
//Total charge enclosed in a given volume
del_Q = (dDx+dDy+dDz)*V;
disp(del_Q,'Total charge enclosed in an incremental volume in coulombs, del_Q =')
//Total Charge enclosed in a given volume at origin (0,0,0)
del_Q = limit(del_Q,x,0);
del_Q = limit(del_Q,y,0);
del_Q = limit(del_Q,z,0);
disp(del_Q*1e09,'Total charge enclosed in an incremental volume in  nano coulombs at origin, del_Q =')
//Result
//Total charge enclosed in an incremental volume in coulombs, del_Q =    2.0000000000000001E-9   
//Total charge enclosed in an incremental volume in  nano coulombs at origin, del_Q =   
//  2.0 

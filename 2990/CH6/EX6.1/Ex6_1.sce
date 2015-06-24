
clc; funcprot(0);
// Initialization of Variable
Da=184.32;//distance in mm
Db=95.84;//distance in mm
Ax=-115.0;//x coordinate of A
By=-115.0;//y coordinate of B
//calculation
phi=atan(Ax/By);
AB=sqrt(Ax**2+By**2);
theta=acos((Da**2+AB**2-Db**2)/2/Da/AB);
alpha=phi-theta;
xc=Da*cos(alpha)-115.0;
disp(xc,"the coordiantes in mm x is");
yc=-Da*sin(alpha);
disp(yc,"the coordiantes in mm y is");
clear()

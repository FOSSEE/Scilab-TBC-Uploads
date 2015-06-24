//clear//
//Caption: Program to find potential at point P, Electricf Field Intensity E, Flux density D
//Example5.2
//page 126
clc;
x = sym('x');
y = sym('y');
z = sym('z');
ax = sym('ax');
ay = sym('ay');
az = sym('az');
V = 100*(x^2-y^2);
disp(V,'Potential in Volts V =')
Ex = diff(V,x);
Ey = diff(V,y);
Ez = diff(V,z);
E = -(Ex*ax+Ey*ay+Ez*az);
disp(E,'Electric Field Intensity in V/m E =')
E = limit(E,x,2);
E = limit(E,y,-1);
V = limit(V,x,2);
V = limit(V,y,-1);
disp(V,'Potential at point P in Volts Vp =')
disp(E,'Electric Field Intensity at point P in V/m Ep =')
D = 8.854e-12*E; 
disp(D*1e09,'Electric FLux Density at point P in nC/square.metre Dp =')
//Result
//Potential in Volts V =  100*(x^2-y^2)   
//Electric Field Intensity in V/m E =  200*ay*y-200*ax*x   
//Potential at point P in Volts Vp =   300   
//Electric Field Intensity at point P in V/m Ep = -200*ay-400*ax   
//Electric FLux Density at point P in nC/square.metre Dp = 0.008854*(-200*ay-400*ax)  
//which is equivalent to Dp = -3.5416*ax -1.7708*ay   

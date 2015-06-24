//clear//
//Caption: Program to calculate E, D and volume charge density using divergence of D
//Example4.3
//page 100
clc;
x = -4;
y = 3;
z = 6;
V = 2*(x^2)*y-5*z;
disp(float(V),'Potential V at point P(-4,3,6)in volts is Vp =')
x1 = sym('x1');
y1 = sym('y1');
z1 = sym('z1');
ax = sym('ax');
ay = sym('ay');
az = sym('az');
V1 = 2*(x1^2)*y1-5*z1;
//Electric Field Intensity from gradient of V
Ex = -diff(V1,x1);
Ey = - diff(V1,y1);
Ez = - diff(V1,z1);
Ex1 = limit(Ex,x1,-4);
Ex1 = limit(Ex1,y1,3);
Ex1 = limit(Ex1,z1,6);
Ey1 = limit(Ey,x1,-4);
Ey1 = limit(Ey1,y1,3);
Ey1 = limit(Ey1,z1,6);
Ez1 = limit(Ez,x1,-4);
Ez1 = limit(Ez1,y1,3);
Ez1 = limit(Ez1,z1,6);
E = Ex1*ax+Ey1*ay+Ez1*az;
Ep = sqrt(float(Ex1^2+Ey1^2+Ez1^2));
disp(Ep,'Electric Field Intensity E at point P(-4,3,6) in volts E =')
aEp = float(E/Ep);
disp(aEp,'Direction of Electric Field E at point P(-4,3,6) aEp=')
Dx = float(8.854*Ex);
Dy = float(8.854*Ey);
Dz = float(8.854*Ez);
D = Dx*ax+Dy*ay+Dz*az;
disp(D,'Electric Flux Density in pico.C/square.metre D =')
dDx = diff(Dx,x1);
dDx = limit(dDx,x1,-4);
dDx = limit(dDx,y1,3);
dDx = limit(dDx,z1,6);
dDy = diff(Dy,y1);
dDy = limit(dDy,x1,-4);
dDy = limit(dDy,y1,3);
dDy = limit(dDy,z1,6);
dDz = diff(Dz,z1);
dDz = limit(dDz,x1,-4);
dDz = limit(dDz,y1,3);
dDz = limit(dDz,z1,6);
rV = dDx+dDy+dDz;
disp(rV,'Volume Charge density from divergence of D in pC/cubic.metre is rV=')
//Result
//Potential V at point P(-4,3,6)in volts is Vp =  66.  
//Electric Field Intensity E at point P(-4,3,6) in volts E = 57.9050947672137   
//Direction of Electric Field E at point P(-4,3,6) aEp= 
//0.01726963756851*(5*az-32*ay+48*ax)
//equivalent to aEp= 0.0863482*az-0.5526284*ay+0.8289426*ax
//Electric Flux Density in pico.C/square.metre D =   
//  -35.416*ax*x1*y1-17.708*ay*x1^2+44.27*az  
//Volume Charge density from divergence of D in pC/cubic.metre is rV=   
//  -106.248  

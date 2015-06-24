//example 16.10
clc; funcprot(0);
// Initialization of Variable
h=100;//W/m^2
L=0.025;
c=800;
rho=2325;//density
k=1.0;
Tinfinity=175;
Ti=25;
alpha=5.38e-7;
t=60*10;
theta=0.615;
Bi=h*L/k;
disp(Bi,"Biot number is");
Fo=alpha*t/L^2;
disp(Fo,"Fourier number is");
T10=Tinfinity+theta*(Ti-Tinfinity);
disp(T10,"midplane temperature after 10 min degreeC");
tstar=theta*cos(1.1347);
Tl10=Tinfinity+tstar*(Ti-Tinfinity);
disp(T10,"msurface temperature after 10 min degreeC");
ql=h*(Tl10-Tinfinity);
disp(ql,"heat transfer in W/m^2");
Q=rho*c*0.509*L*(Ti-Tinfinity);
disp(Q,"Energy per unit surface in J/m^2")
clear()



//exapple 7.1 
clc; funcprot(0);
// Initialization of Variable
mu=1.83/1000;
rhom=1.355*10000;//density mercury
K=5;
g=9.81;
d=2.5/100;
pi=3.14;
thik=2.73/100;
rho=3100;//density of particles
Q=250/(12*60+54)/10^6;
//calculation
A=pi*d^2/4;
Vb=A*thik;//volume of bed
Vp=25.4/rho/1000;//volume of particles
e=1-Vp/Vb;
u=Q/A;
delP=12.5/100*rhom*g;
S=sqrt(e^3*delP/K/u/thik/mu/(1-e)^2);
S=round(S/1000)*1000;
d=6/S;
disp(d*10^6,"average particle diameter in (x10^-6m)");
A=pi*d^2/1000/(4/3*pi*d^3/8*rho);
disp(A*10^4,"surface area per gram of cement (cm^2):")


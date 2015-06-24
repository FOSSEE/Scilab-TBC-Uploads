

//exapple 8.6 
clc; funcprot(0);
// Initialization of Variable
mu=0.224;
rho=1328;
K=5;
b=3*.5;//radius
h=2.5;
pi=3.1428;
x=2.1*.5;
rhos=1581;//density of sucrose
e=0.435;//void ratio
J=0.097;//mass fraction
m=3500;//mass flowing
a=85/10^6;//side length
L=48/1000;//thickness
omega=2*pi*325/60;
//calculation
bi=b^2-m/pi/h/(1-e)/rhos;//inner radius
bi=sqrt(bi);
bi=round(bi*1000)/1000;
nu=J*rho/((1-J)*(1-e)*rhos-J*e*rho);
S=6/a;
r=5*S^2*(1-e)^2/e^3;
t=((b^2-bi^2)*(1+2*L/b)+2*bi^2*log(bi/b))/(2*nu*rho*omega^2/r/mu*(b^2-x^2));
disp(t,"time taken to collect sucrose crystal in (s):");
//part2
vl=pi*(b^2-bi^2)*h*e;
vs=pi*(b^2-bi^2)*h/nu-vl;
disp(vs,"volume of liquid separated as filterate i (m^3):");


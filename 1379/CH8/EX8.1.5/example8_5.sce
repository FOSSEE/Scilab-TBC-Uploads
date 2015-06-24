

//exapple 8.4 
clc; funcprot(0);
// Initialization of Variable
t=60*0.3/0.5;//time of 1 revollution
d=34/1000000;
S=6/d;
e=0.415;
J=0.154;
P=34.8*1000;
mu=1.17/1000;
L=2.35/1000;
rho=999;//density of water
rhos=4430;//density of barium carbonate
//calculation
//part1
nu=J*rho/((1-J)*(1-e)*rhos-J*e*rho);
r=5*S^2*(1-e)^2/e^3;
//quadratic in l
//in the form of ax^2+bx+c=0
c=-t;
b=r*mu*L/nu/P;
a=r*mu/2/nu/P;
y=poly([c b a],'l','coeff');
l=roots(y);
disp(l(2),"thickness of filter cake in (m):");
//part2
d=1.2;
l1=2.6;
pi=3.1428;
u=pi*d*0.5/60;
Q=u*l1*l(2);
mnet=Q*(1-e)*rhos+Q*e*rho;
disp(mnet,"rate at which wet cake will be scrapped in (kg/s):");
//part3
md=Q*(1-e)*rhos;//rate at which solid scrapped from the drum
r=md/0.154;
disp(r*3600,"rate of which slurry is treated is (kg/h):")


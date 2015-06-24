

//exapple 5.6 
clc; funcprot(0);
// Initialization of Variable
Q=0.675;
B=1.65;
D=19.5/100;
g=9.81;
//caculation
u=Q/B/D;
u=round(u*1000)/1000;
E=D+u^2/2/g;
y=poly([8.53/1000 0 -E 1],'x','coeff');
x=roots(y);
disp(x(1),"alternative depth in (m)");
disp("It is shooting flow");
Dc=2/3*E;
Qmax=B*(g*Dc^3)^0.5;
disp(Qmax,"maximum volumetric flow (m^3/s)");
Fr=u/sqrt(g*D);
disp(Fr,"Froude no.");
a=(E-D)/E;
disp(a*100,"% of kinetic energy in initial system");
b=(E-x(1))/E;
disp(b*100,"% of kinetic energy in final system");

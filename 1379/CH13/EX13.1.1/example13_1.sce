

//exapple 13.1 
clc; funcprot(0);
// Initialization of Variable
rho=998;
g=9.81;
pi=3.1428;
omega=2*pi*1055/60;//angular rotation
r=2.55/100//radius outer
ld=1.55/100;//liq. depth
l=10.25/100;
//calculation
//part1
a=r*omega^2/g;
disp(a,"ratio of cetrifugal force & gravitational force is:");
//part2
ri=r-ld;//radius internal
V=pi*(r^2-ri^2)*l;
sigma=(omega^2*V)/(g*log(r/ri));
disp(sigma,"equivalent to gravity settling tank of crossectional area of in (m^2):")



//exapple 5.8 
clc; funcprot(0);
// Initialization of Variable
pi=3.14;
theta=pi/3;
h=1/tan(theta);
B=0.845;
E=0.375;
g=9.81;
//calculation
//part1
//deducing a polynomial(quadratic) in Dc 
a=5*h;
b=3*B-4*h*E;
c=-2*E*B;
y=poly([c b a],'x','coeff');
x=roots(y);
disp(x(2),"critical depth in (m):");
//part2
Ac=x(2)*(B+x(2)*tan(theta/2));
Btc=B+x(2)*tan(theta/2)*2;
Dcbar=Ac/Btc;
uc=sqrt(g*Dcbar);
disp(uc,"critical velocity (m/s):");
//part3
Qc=Ac*uc;
disp(Qc,"Critical volumetric flow (m^3/s):");
